.class public interface abstract Lorg/apache/jackrabbit/webdav/DavResource;
.super Ljava/lang/Object;
.source "DavResource.java"


# static fields
.field public static final METHODS:Ljava/lang/String; = "OPTIONS, GET, HEAD, TRACE, PROPFIND, PROPPATCH, MKCOL, COPY, PUT, DELETE, MOVE, LOCK, UNLOCK"


# virtual methods
.method public abstract addLockManager(Lorg/apache/jackrabbit/webdav/lock/LockManager;)V
.end method

.method public abstract addMember(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/io/InputContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract alterProperties(Ljava/util/List;)Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/jackrabbit/webdav/property/PropEntry;",
            ">;)",
            "Lorg/apache/jackrabbit/webdav/MultiStatusResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract copy(Lorg/apache/jackrabbit/webdav/DavResource;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract exists()Z
.end method

.method public abstract getCollection()Lorg/apache/jackrabbit/webdav/DavResource;
.end method

.method public abstract getComplianceClass()Ljava/lang/String;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;
.end method

.method public abstract getHref()Ljava/lang/String;
.end method

.method public abstract getLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;
.end method

.method public abstract getLock(Lorg/apache/jackrabbit/webdav/lock/Type;Lorg/apache/jackrabbit/webdav/lock/Scope;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
.end method

.method public abstract getLocks()[Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
.end method

.method public abstract getMembers()Lorg/apache/jackrabbit/webdav/DavResourceIterator;
.end method

.method public abstract getModificationTime()J
.end method

.method public abstract getProperties()Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
.end method

.method public abstract getProperty(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/property/DavPropertyName;",
            ")",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getPropertyNames()[Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
.end method

.method public abstract getResourcePath()Ljava/lang/String;
.end method

.method public abstract getSession()Lorg/apache/jackrabbit/webdav/DavSession;
.end method

.method public abstract getSupportedMethods()Ljava/lang/String;
.end method

.method public abstract hasLock(Lorg/apache/jackrabbit/webdav/lock/Type;Lorg/apache/jackrabbit/webdav/lock/Scope;)Z
.end method

.method public abstract isCollection()Z
.end method

.method public abstract isLockable(Lorg/apache/jackrabbit/webdav/lock/Type;Lorg/apache/jackrabbit/webdav/lock/Scope;)Z
.end method

.method public abstract lock(Lorg/apache/jackrabbit/webdav/lock/LockInfo;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract move(Lorg/apache/jackrabbit/webdav/DavResource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract refreshLock(Lorg/apache/jackrabbit/webdav/lock/LockInfo;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract removeMember(Lorg/apache/jackrabbit/webdav/DavResource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract removeProperty(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract setProperty(Lorg/apache/jackrabbit/webdav/property/DavProperty;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract spool(Lorg/apache/jackrabbit/webdav/io/OutputContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract unlock(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
