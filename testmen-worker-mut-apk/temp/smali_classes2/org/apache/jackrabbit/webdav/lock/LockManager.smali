.class public interface abstract Lorg/apache/jackrabbit/webdav/lock/LockManager;
.super Ljava/lang/Object;
.source "LockManager.java"


# virtual methods
.method public abstract createLock(Lorg/apache/jackrabbit/webdav/lock/LockInfo;Lorg/apache/jackrabbit/webdav/DavResource;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getLock(Lorg/apache/jackrabbit/webdav/lock/Type;Lorg/apache/jackrabbit/webdav/lock/Scope;Lorg/apache/jackrabbit/webdav/DavResource;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
.end method

.method public abstract hasLock(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/DavResource;)Z
.end method

.method public abstract refreshLock(Lorg/apache/jackrabbit/webdav/lock/LockInfo;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/DavResource;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract releaseLock(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
