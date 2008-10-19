/* Voikkogc: Testing tool for libvoikko
 * Copyright (C) 2008 Harri Pitkänen <hatapitk@iki.fi>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *********************************************************************************/

#include "../voikko.h"
#include <iostream>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <wchar.h>
#include <locale.h>
#include "../porting.h"
#ifdef HAVE_NL_LANGINFO
#include <langinfo.h>
#endif // HAVE_NL_LANGINFO

using namespace std;

#ifdef HAVE_MBRLEN

void print_tokens(int handle, const char * line) {
	size_t len;
	const char * lineptr;
	mbstate_t mbstate;
	enum voikko_token_type token_type;
	size_t tokenchars;
	len = strlen(line);
	memset(&mbstate, '\0', sizeof(mbstate_t));
	lineptr = line;
	while (len > 0) {
		token_type = voikko_next_token_cstr(handle, lineptr, len, &tokenchars);
		switch (token_type) {
			case TOKEN_WORD:
				cout << "W: \"";
				break;
			case TOKEN_PUNCTUATION:
				cout << "P: \"";
				break;
			case TOKEN_WHITESPACE:
				cout << "S: \"";
				break;
			case TOKEN_UNKNOWN:
				cout << "U: \"";
				break;
			case TOKEN_NONE:
				cout << "E: unknown token\n";
				return;
		}
		while (tokenchars > 0) {
			size_t charlen = mbrlen(lineptr, len, &mbstate);
			while (charlen > 0) {
				putchar(lineptr[0]);
				lineptr++;
				charlen--;
				len--;
			}
			tokenchars--;
		}
		cout << "\"" << endl;
	}
}


void split_sentences(int handle, const char * line) {
	size_t len;
	const char * lineptr;
	size_t charlen;
	mbstate_t mbstate;
	enum voikko_sentence_type sentence_type;
	size_t sentencechars;
	len = strlen(line);
	memset(&mbstate, '\0', sizeof(mbstate_t));
	lineptr = line;
	while (len > 0) {
		sentence_type = voikko_next_sentence_start_cstr(handle, lineptr, len,
		                &sentencechars);
		switch (sentence_type) {
			case SENTENCE_NONE:
				cout << "E: " << lineptr << endl;
				return;
			case SENTENCE_PROBABLE:
				cout << "B: ";
				break;
			case SENTENCE_POSSIBLE:
				cout << "P: ";
				break;
			case SENTENCE_NO_START:
				// Not returned from this function
				break;
		}
		while (sentencechars > 0) {
			charlen = mbrlen(lineptr, len, &mbstate);
			while (charlen > 0) {
				putchar(lineptr[0]);
				lineptr++;
				charlen--;
				len--;
			}
			sentencechars--;
		}
		cout << endl;
	}
}


void check_grammar(int handle, string &line, const char * explanation_language) {
	size_t len;
	voikko_grammar_error grammar_error;
	int skiperrors = 0;
	len = line.size();
	while (1) {
		grammar_error = voikko_next_grammar_error_cstr(handle, line.c_str(), len,
		                0, skiperrors);
		if (grammar_error.error_code == 0) {
			cout << "-" << endl;
			return;
		}
		cout << "[code=" << grammar_error.error_code << ", level=0, ";
		cout << "descr=\"\", stpos=" << grammar_error.startpos << ", ";
		cout << "len=" << grammar_error.errorlen << ", suggs={";
		if (grammar_error.suggestions) {
			char ** sugg = grammar_error.suggestions;
			while (*sugg) {
				// FIXME: convert from UTF-8
				cout << "\"" << *sugg << "\"";
				sugg++;
				if (*sugg) {
					cout << ",";
				}
			}
			voikko_free_suggest_cstr(grammar_error.suggestions);
		}
		cout << "}]";
		if (explanation_language) {
			cout << " (";
			cout << voikko_error_message_cstr(
			         grammar_error.error_code, explanation_language);
			cout << ")";
		}
		cout << endl;
		skiperrors++;
	}
}

enum operation {TOKENIZE, SPLIT_SENTENCES, CHECK_GRAMMAR};

int main(int argc, char ** argv) {
	char * path = 0;
	enum operation op = CHECK_GRAMMAR;
	int handle;
	
	for (int i = 1; i < argc; i++) {
		if (strcmp(argv[i], "-p") == 0 && i + 1 < argc) path = argv[++i];
	}
	const char * voikko_error = (const char *) voikko_init_with_path(&handle, "fi_FI", 0, path);

	if (voikko_error) {
		cerr << "E: Initialisation of Voikko failed: " << voikko_error << endl;
		return 1;
	}
	
	setlocale(LC_ALL, "");
	char * encoding = nl_langinfo(CODESET);
	voikko_set_string_option(handle, VOIKKO_OPT_ENCODING, encoding);
	
	const char * explanation_language = 0;
	
	for (int i = 1; i < argc; i++) {
		if (strncmp(argv[i], "--tokenize", 10) == 0) {
			op = TOKENIZE;
		}
		else if (strncmp(argv[i], "--split-sentences", 17) == 0) {
			op = SPLIT_SENTENCES;
		}
		else if (strcmp(argv[i], "accept_titles=1") == 0)
			voikko_set_bool_option(handle, VOIKKO_OPT_ACCEPT_TITLES_IN_GC, 1);
		else if (strcmp(argv[i], "accept_titles=0") == 0)
			voikko_set_bool_option(handle, VOIKKO_OPT_ACCEPT_TITLES_IN_GC, 0);
		else if (strcmp(argv[i], "accept_unfinished_paragraphs=1") == 0)
			voikko_set_bool_option(handle, VOIKKO_OPT_ACCEPT_UNFINISHED_PARAGRAPHS_IN_GC, 1);
		else if (strcmp(argv[i], "accept_unfinished_paragraphs=0") == 0)
			voikko_set_bool_option(handle, VOIKKO_OPT_ACCEPT_UNFINISHED_PARAGRAPHS_IN_GC, 0);
		else if (strncmp(argv[i], "explanation_language=fi", 23) == 0)
			explanation_language = "fi";
		else if (strncmp(argv[i], "explanation_language=", 21) == 0)
			explanation_language = "en";
	}
	
	string line;
	while (getline(cin, line)) {
		switch (op) {
			case TOKENIZE:
				print_tokens(handle, line.c_str());
				break;
			case SPLIT_SENTENCES:
				split_sentences(handle, line.c_str());
				break;
			case CHECK_GRAMMAR:
				check_grammar(handle, line, explanation_language);
		}
	}
	voikko_terminate(handle);
	return 0;
}

#else
int main(int argc, char ** argv) {
	cerr << "E: This tool is not supported on your operating system." << endl;
	return 1;
}
#endif

