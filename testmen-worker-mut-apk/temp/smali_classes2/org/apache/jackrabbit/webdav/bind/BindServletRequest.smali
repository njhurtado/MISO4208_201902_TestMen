.class public interface abstract Lorg/apache/jackrabbit/webdav/bind/BindServletRequest;
.super Ljava/lang/Object;
.source "BindServletRequest.java"


# virtual methods
.method public abstract getBindInfo()Lorg/apache/jackrabbit/webdav/bind/BindInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getHrefLocator(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getMemberLocator(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;
.end method

.method public abstract getRebindInfo()Lorg/apache/jackrabbit/webdav/bind/RebindInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getUnbindInfo()Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
