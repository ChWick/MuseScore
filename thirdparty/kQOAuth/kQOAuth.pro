TEMPLATE = lib

CONFIG += staticlib

QT += network

INCLUDEPATH += $$PWD/../openssl/include

SOURCES += \
    kqoauthauthreplyserver.cpp \
    kqoauthmanager.cpp \
    kqoauthrequest.cpp \
    kqoauthrequest_xauth.cpp \
    kqoauthutils.cpp \

HEADERS += \
    kqoauthauthreplyserver.h \
    kqoauthauthreplyserver_p.h \
    kqoauthglobals.h \
    kqoauthmanager.h \
    kqoauthmanager_p.h \
    kqoauthrequest.h \
    kqoauthrequest_p.h \
    kqoauthrequest_xauth.h \
    kqoauthrequest_xauth_p.h \
    kqoauthutils.h \
