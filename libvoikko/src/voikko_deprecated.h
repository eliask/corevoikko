/* Libvoikko: Finnish spellchecker and hyphenator library
 * Copyright (C) 2006 - 2010 Harri Pitkänen <hatapitk@iki.fi>
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

/**
 * This file contains the deprecated public API of libvoikko. The
 * API is still supported although some options no longer have any
 * effect. If you are developing an application that does not need
 * to work with older versions of libvoikko it is recommended to
 * avoid using any of the symbols or macros defined here.
 *
 * You can test that your program is not using any of deprecated API
 * by compiling it with -DVOIKKO_NO_DEPRECATED_API. If the program
 * compiles, you are fine. Do not set this as default compiler option
 * though, since your application may fail to build again after an
 * otherwise backwards compatible upgrade of libvoikko.
 *
 * Everything here will be removed permanently when an API incompatible
 * version of libvoikko is released.
 */

/**
 * This is an integer option constant. The option no longer has any effect
 * and similar functionality is not provided by the new API. No applications
 * are known to have ever used this.
 */
#define VOIKKO_INTERSECT_COMPOUND_LEVEL 5

/**
 * This is an string option constant. The option no longer has any effect
 * and similar functionality is not provided by the new API. The values for
 * this option were never documented and the option was declared deprecated
 * for a long time before actual implementation was removed.
 */
#define VOIKKO_OPT_ENCODING 2

/**
 * See voikkoInit
 */
const char * voikko_init(int * handle, const char * langcode, int cache_size);

/**
 * See voikkoInit
 */
const char * voikko_init_with_path(int * handle, const char * langcode,
                                   int cache_size, const char * path);

/**
 * Sets a string option. Only used for deprecated VOIKKO_OPT_ENCODING, therefore
 * no replacement has been provided yet.
 * @param handle voikko instance
 * @param option option name
 * @param value option value
 * @return true if option was succesfully set, otherwise false
 */
int voikko_set_string_option(int handle, int option, const char * value);