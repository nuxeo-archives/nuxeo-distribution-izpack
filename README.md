# Nuxeo Distribution IzPack

Build multi-OS installers of Nuxeo products (Nuxeo CoreServer, CAP, DM, DAM, CMF, ...)

* Platform independent installers
* Platform independent offline installers
* Windows installers
* Mac OS X installers


### How to build

You can generate the installers with:

    $ mvn package [-Dnuxeo.version=VERSION]

By default, nuxeo.version is the development version (currently 5.4.2-SNAPSHOT).

### How to run install/uninstall

Installers are generated in the target directory. For instance, run Nuxeo DM platform independent installer with:

    $ java -jar target/nuxeo-dm-5.4.2-SNAPSHOT-tomcat-izpack-installer.jar

Depending on the OS, there is some desktop integration with or without shortcuts for managing Nuxeo. Uninstall can be ran from the available shortcut or manually with:

    $ java -jar $INSTALL_PATH/bin/uninstaller.jar


## About Nuxeo

Nuxeo provides a modular, extensible Java-based [open source software platform for enterprise content management] [1] and packaged applications for [document management] [2], [digital asset management] [3] and [case management] [4]. Designed by developers for developers, the Nuxeo platform offers a modern architecture, a powerful plug-in model and extensive packaging capabilities for building content applications.

[1]: http://www.nuxeo.com/en/products/ep
[2]: http://www.nuxeo.com/en/products/document-management
[3]: http://www.nuxeo.com/en/products/dam
[4]: http://www.nuxeo.com/en/products/case-management

More information on: <http://www.nuxeo.com/>

