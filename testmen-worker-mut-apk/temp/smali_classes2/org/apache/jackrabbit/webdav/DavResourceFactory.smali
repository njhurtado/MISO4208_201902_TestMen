.class public interface abstract Lorg/apache/jackrabbit/webdav/DavResourceFactory;
.super Ljava/lang/Object;
.source "DavResourceFactory.java"


# virtual methods
.method public abstract createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavServletRequest;Lorg/apache/jackrabbit/webdav/DavServletResponse;)Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavSession;)Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
