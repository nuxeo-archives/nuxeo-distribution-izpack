#!/bin/bash
##
## (C) Copyright 2010 Nuxeo SAS (http://nuxeo.com/) and contributors.
##
## All rights reserved. This program and the accompanying materials
## are made available under the terms of the GNU Lesser General Public License
## (LGPL) version 2.1 which accompanies this distribution, and is available at
## http://www.gnu.org/licenses/lgpl.html
##
## This library is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
## Lesser General Public License for more details.
##
## Contributors:
##     Julien Carsique
##
## Shell script calling IzPack Python tool for generating Windows exe from jar
##

IZPACK_WRAPPERS_PATH=/opt/build/tools/izpack/utils/wrappers/

for jarinstaller in target/nuxeo*.jar; do
    FILENAME=`basename $jarinstaller`
    NXVERSION=${FILENAME#nuxeo-[az]*-}
    NXVERSION=${VERSION%-(tomcat|jboss)*.jar}
    PREFIX=${FILENAME%$NXVERSION*}
    SUFFIX=${FILENAME#*$NXVERSION}
    SUFFIX=${SUFFIX%.jar}
    python $IZPACK_WRAPPERS_PATH/izpack2exe/izpack2exe.py --file=target/$PREFIX$NXVERSION$SUFFIX.jar --output=target/$PREFIX$NXVERSION$SUFFIX.exe
done
