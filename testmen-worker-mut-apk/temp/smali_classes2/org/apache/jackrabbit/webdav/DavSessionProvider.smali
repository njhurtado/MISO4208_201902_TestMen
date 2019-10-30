.class public interface abstract Lorg/apache/jackrabbit/webdav/DavSessionProvider;
.super Ljava/lang/Object;
.source "DavSessionProvider.java"


# virtual methods
.method public abstract attachSession(Lorg/apache/jackrabbit/webdav/WebdavRequest;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract releaseSession(Lorg/apache/jackrabbit/webdav/WebdavRequest;)V
.end method
