.class public interface abstract Lorg/apache/jackrabbit/webdav/DavServletRequest;
.super Ljava/lang/Object;
.source "DavServletRequest.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletRequest;


# virtual methods
.method public abstract getDavSession()Lorg/apache/jackrabbit/webdav/DavSession;
.end method

.method public abstract getDepth()I
.end method

.method public abstract getDepth(I)I
.end method

.method public abstract getDestinationLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getLockInfo()Lorg/apache/jackrabbit/webdav/lock/LockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getLockToken()Ljava/lang/String;
.end method

.method public abstract getPropFindProperties()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getPropFindType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getPropPatchChangeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/jackrabbit/webdav/property/PropEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getRequestDocument()Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getRequestLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;
.end method

.method public abstract getTimeout()J
.end method

.method public abstract isOverwrite()Z
.end method

.method public abstract matchesIfHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract matchesIfHeader(Lorg/apache/jackrabbit/webdav/DavResource;)Z
.end method

.method public abstract setDavSession(Lorg/apache/jackrabbit/webdav/DavSession;)V
.end method
