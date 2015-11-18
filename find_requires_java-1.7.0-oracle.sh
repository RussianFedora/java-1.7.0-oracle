#!/bin/sh

if [ -x /usr/lib/rpm/redhat/find-provides ]; then
   FINDREQ=/usr/lib/rpm/redhat/find-requires
else
   FINDREQ=/usr/lib/rpm/find-requires
fi

$FINDREQ $*  | sed \
-e 's/^libxml2.so.2(LIBXML2_2.4.30)(64bit)//' \
-e 's/^libxml2.so.2(LIBXML2_2.6.0)(64bit)//' \
-e 's/^libxml2.so.2(LIBXML2_2.6.6)(64bit)//' \
-e 's/^libxslt.so.1(LIBXML2_1.0.11)(64bit)//' \
-e 's/^libxslt.so.1(LIBXML2_1.0.22)(64bit)//' \
-e 's/^libxslt.so.1(LIBXML2_1.0.24)(64bit)//' \
-e 's/^libxslt.so.1(LIBXML2_1.1.9)(64bit)//' \
-e 's/^libgio-2.0.so.0()(64bit)//' \
-e 's/^libc.so.6(GLIBC_2.7)(64bit)//' \
-e 's/^libc.so.6(GLIBC_2.8)(64bit)//' \
-e 's/^libc.so.6(GLIBC_2.11)(64bit)//' \
-e 's/^libstdc++.so.6(GLIBCXX_3.4.11)(64bit)//' \
-e 's/^libstdc++.so.6(GLIBCXX_3.4.9)(64bit)//' \
-e 's/^libxml2.so.2(LIBXML2_2.4.30)//' \
-e 's/^libxml2.so.2(LIBXML2_2.6.0)//' \
-e 's/^libxml2.so.2(LIBXML2_2.6.6)//' \
-e 's/^libxslt.so.1(LIBXML2_1.0.11)//' \
-e 's/^libxslt.so.1(LIBXML2_1.0.22)//' \
-e 's/^libxslt.so.1(LIBXML2_1.0.24)//' \
-e 's/^libxslt.so.1(LIBXML2_1.1.9)//' \
-e 's/^libgio-2.0.so.0//' \
-e 's/^libc.so.6(GLIBC_2.7)//' \
-e 's/^libc.so.6(GLIBC_2.8)//' \
-e 's/^libc.so.6(GLIBC_2.11)//' \
-e 's/^libstdc++.so.6(GLIBCXX_3.4.9)//' \
-e 's/^libstdc++.so.6(GLIBCXX_3.4.11)//' 
