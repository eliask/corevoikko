# This data is based on Suomi-malaga 0.7 by Hannu Väisänen, and includes
# modifications from Harri Pitkänen, Teemu Likonen and others.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA


# Etuliitteitä. Lisätessäsi etuliitteitä
# mieti, minkä sanaluokan sanoille kyseistä etuliitettä todella
# tarvitaan. Tämä parantaa oikoluvun laatua, varsinkin lyhyiden etuliitteiden
# kanssa.

# Kaikissa etuliitteissä perusmuoto ja alku ovat samat, luokka = etuliite ja
# äs = aä.

# == Näitä voi käyttää jatko-kentissä ==
# @eln: etuliite (nimisanat)
# @ell: etuliite (laatusanat)
# @elt: etuliite (teonsanat)
# @eltj: etuliite (teonsanojen nimi- ja laatusanajohdokset)
# Huom! Jatkoa @eltj EI SAA käyttää yhdessä jatkon @eln tai @ell kanssa.
# FIXME: Nimisanojen etuliite kelpaa myös partisiipeille ja laatusanojen
# etuliite verbien -minen-substantiivijohdoksille.

# tiedot-listassa voi käyttää symbolia ei_ysj estämään etuliitteen käyttö
# muualla kuin sanan alussa.

# Etuliitteille, joissa on yhdysviiva lopussa ja jotka ovat sanastossa myös
# omina nimi- tai laatusanoina tai etuliitteinä (esim. "jazz-", "online-")
# kannatta laittaa tiedot-kenttään symboli ei_sukija, koska Sukija-versiossa
# yhdysviiva kelpaa  minkä tahansa etuliitteen jälkeen.

[perusmuoto: "online", alku: "online", luokka: etuliite, jatko: @eln + @ell, äs: aä, rakenne: "=pp=pppp"];
[perusmuoto: "online-", alku: "online-", luokka: etuliite, jatko: @eln + @ell, äs: aä, rakenne: "=pp=pppp-", tiedot: <ei_sukija>];
[perusmuoto: "osittais", alku: "osittais", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "osuma", alku: "osuma", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "pappis", alku: "pappis", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "peri", alku: "peri", luokka: etuliite, jatko: @ell, äs: aä];
[perusmuoto: "perille", alku: "perille", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "perään", alku: "perään", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "pesimä", alku: "pesimä", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "pienois", alku: "pienois", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "pika", alku: "pika", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "pikku", alku: "pikku", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "pitkittäis", alku: "pitkittäis", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "poikittais", alku: "poikittais", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "poikki", alku: "poikki", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "pois", alku: "pois", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "pois", alku: "pois", luokka: etuliite, jatko: @eltj, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "poissa-", alku: "poissa-", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, rakenne: "=pppppp-", tiedot: <ei_voikko>];
[perusmuoto: "poly", alku: "poly", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "pop-", alku: "pop-", luokka: etuliite, jatko: @eln, äs: aä, rakenne: "=ppp-", tiedot: <ei_sukija>];
[perusmuoto: "porvaris", alku: "porvaris", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "post-", alku: "post-", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, rakenne: "=pppp-", tiedot: <ei_voikko>];
[perusmuoto: "pre-", alku: "pre-", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, rakenne: "=ppp-", tiedot: <ei_voikko>];
[perusmuoto: "pseudo", alku: "pseudo", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "puima", alku: "puima", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "puoli", alku: "puoli", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "puolittais", alku: "puolittais", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "pysyväis", alku: "pysyväis", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "päälle", alku: "päälle", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "raitio", alku: "raitio", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "rationaali", alku: "rationaali", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "refleksiivi", alku: "refleksiivi", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "riippu", alku: "riippu", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "rinnakkais", alku: "rinnakkais", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "ristimä", alku: "ristimä", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "rouvas", alku: "rouvas", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "sala", alku: "sala", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "sala", alku: "sala", luokka: etuliite, jatko: @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "satunnais", alku: "satunnais", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "seisoma", alku: "seisoma", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "seitsen", alku: "seitsen", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "seka", alku: "seka", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "seksuaali", alku: "seksuaali", luokka: etuliite, jatko: @eln + @ell, äs: a];
[perusmuoto: "sijais", alku: "sijais", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "sisällis", alku: "sisällis", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "sisään", alku: "sisään", luokka: etuliite, jatko: @eltj, äs: aä];
[perusmuoto: "sivuttais", alku: "sivuttais", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "sosiaali", alku: "sosiaali", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "sosio", alku: "sosio", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "sovinnais", alku: "sovinnais", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "suhu", alku: "suhu", luokka: etuliite, jatko: @eln, äs: aä];
[perusmuoto: "super", alku: "super", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "supra", alku: "supra", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "suur", alku: "suur", luokka: etuliite, aluetta_tarkentava_etuliite: yes, jatko: @eln + @ell, äs: aä];
[perusmuoto: "synnyin", alku: "synnyin", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "syys", alku: "syys", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "syömä", alku: "syömä", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "taka", alku: "taka", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "takaisin", alku: "takaisin", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "tasa", alku: "tasa", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "tarttuma", alku: "tarttuma", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "tekno", alku: "tekno", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "termo", alku: "termo", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "tieteis", alku: "tieteis", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "tois", alku: "tois", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "toivio", alku: "toivio", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "totaali", alku: "totaali", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "tummanpuna", alku: "tummanpuna", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "tummanpurppura", alku: "tummanpurppura", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "tummansini", alku: "tummansini", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "tämän-", alku: "tämän-", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>, rakenne: "=ppppp-"];
[perusmuoto: "täsmä", alku: "täsmä", luokka: etuliite, jatko: @eln + @ell, äs: aä]; 
[perusmuoto: "täys", alku: "täys", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "uima", alku: "uima", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "ulko", alku: "ulko", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "ulos", alku: "ulos", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "ulos", alku: "ulos", luokka: etuliite, jatko: @eltj, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "ultra", alku: "ultra", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "umpi", alku: "umpi", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "uppo", alku: "uppo", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "uudelleen", alku: "uudelleen", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "uudelleen", alku: "uudelleen", luokka: etuliite, jatko: @eltj, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "uudis", alku: "uudis", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "uus", alku: "uus", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_ysj>];
[perusmuoto: "uusio", alku: "uusio", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "vaivais", alku: "vaivais", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "vaaleanpuna", alku: "vaaleanpuna", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "vaaleanpurppura", alku: "vaaleanpurppura", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "vaaleansini", alku: "vaaleansini", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "valko", alku: "valko", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "vammais", alku: "vammais", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "vapaa", alku: "vapaa", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "varhais", alku: "varhais", luokka: etuliite, jatko: @eln, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "varo", alku: "varo", luokka: etuliite, jatko: @eln, äs: aä];
[perusmuoto: "vastaan", alku: "vastaan", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "vastakkais", alku: "vastakkais", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "veneeri", alku: "veneeri", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "vertais", alku: "vertais", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "vierekkäis", alku: "vierekkäis", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "viher", alku: "viher", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "vihki", alku: "vihki", luokka: etuliite, jatko: @eln, äs: aä];
[perusmuoto: "vihkimä", alku: "vihkimä", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "viitois", alku: "viitois", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "virpoma", alku: "virpoma", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "virtuaali", alku: "virtuaali", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "vuos", alku: "vuos", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "vähimmäis", alku: "vähimmäis", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "väliaikais", alku: "väliaikais", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>, rakenne: "=pppp=pppppp"];
[perusmuoto: "väärin", alku: "väärin", luokka: etuliite, jatko: @eltj, äs: aä];
[perusmuoto: "yhdys", alku: "yhdys", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "yhteen", alku: "yhteen", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "yhteis", alku: "yhteis", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "yhtä", alku: "yhtä", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "yksin", alku: "yksin", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "yksittäis", alku: "yksittäis", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "yksityis", alku: "yksityis", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "yksöis", alku: "yksöis", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "yleis", alku: "yleis", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "ylen", alku: "ylen", luokka: etuliite, jatko: @eln + @ell + @elt, äs: ä, tiedot: <ei_voikko>];
[perusmuoto: "yli", alku: "yli", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "ylitse", alku: "ylitse", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "yltiö", alku: "yltiö", luokka: etuliite, jatko: @ell, äs: aä, tiedot: <ei_sukija>];
[perusmuoto: "ylä", alku: "ylä", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "ylön", alku: "ylön", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "ylös", alku: "ylös", luokka: etuliite, jatko: @eln + @ell + @elt, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "ympäri", alku: "ympäri", luokka: etuliite, jatko: @eltj, äs: aä];
[perusmuoto: "äkki", alku: "äkki", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "äsken", alku: "äsken", luokka: etuliite, jatko: @eln + @ell, äs: aä, tiedot: <ei_voikko>];
[perusmuoto: "ääreis", alku: "ääreis", luokka: etuliite, jatko: @eln + @ell, äs: aä];
[perusmuoto: "öky", alku: "öky", luokka: etuliite, jatko: @eln + @ell, äs: aä];
