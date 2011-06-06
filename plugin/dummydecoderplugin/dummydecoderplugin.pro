TEMPLATE  = lib

CONFIG   += plugin

# only install optional, because only needed for testing purpose
# target.path = /usr/share/dlt-viewer/plugins
# INSTALLS += target

CONFIG(debug, debug|release) {
    DESTDIR = ../../debug/plugins
    QMAKE_LIBDIR += ../../debug
    LIBS += -lqdltd
}
else {
    DESTDIR = ../../release/plugins
    QMAKE_LIBDIR += ../../release
    LIBS += -lqdlt
}

TARGET = $$qtLibraryTarget(dummydecoderplugin)

# Defines and Header Directories
DEFINES  += QT_VIEWER

INCLUDEPATH += ../../src \
            ../../qdlt

# Project files
HEADERS += dummydecoderplugin.h \
        plugininterface.h \
        ../../qdlt/qdlt.h

SOURCES += dummydecoderplugin.cpp
