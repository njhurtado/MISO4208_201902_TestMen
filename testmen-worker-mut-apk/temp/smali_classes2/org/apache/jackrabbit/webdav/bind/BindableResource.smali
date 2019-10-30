.class public interface abstract Lorg/apache/jackrabbit/webdav/bind/BindableResource;
.super Ljava/lang/Object;
.source "BindableResource.java"


# virtual methods
.method public abstract bind(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getParentElements()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/jackrabbit/webdav/bind/ParentElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract rebind(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
