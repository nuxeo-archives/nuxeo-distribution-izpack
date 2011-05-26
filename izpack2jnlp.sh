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
## Shell script calling IzPack Python tool for generating JNLP from jar
##

: ${IZPACK_WRAPPERS_PATH:=/opt/build/tools/izpack/utils/wrappers/}
: ${CODEBASE_URL:=file://$(cd $(dirname "$0"); pwd -P)/target/}

cd target/
for jarinstaller in nuxeo*.jar; do
    FILENAME=`basename $jarinstaller`
    [[ "$FILENAME" =~ ([^0-9]+-)([0-9\.]+-[^-]+)(-.*).jar ]]
    PREFIX=${BASH_REMATCH[1]}
    NXVERSION=${BASH_REMATCH[2]}
    SUFFIX=${BASH_REMATCH[3]}
    TITLE=${PREFIX%-}
    python $IZPACK_WRAPPERS_PATH/izpack2jnlp/izpack2jnlp.py --codebase=$CODEBASE_URL --jnlp=$PREFIX$NXVERSION$SUFFIX.jnlp --installer=$PREFIX$NXVERSION$SUFFIX.jar --title="$TITLE" --vendor=Nuxeo --homepage="http://www.nuxeo.com/" --description="$TITLE $NXVERSION"
done
cd -
