.class public interface abstract Lorg/apache/jackrabbit/webdav/ordering/OrderingDavServletRequest;
.super Ljava/lang/Object;
.source "OrderingDavServletRequest.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavServletRequest;


# virtual methods
.method public abstract getOrderPatch()Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getOrderingType()Ljava/lang/String;
.end method

.method public abstract getPosition()Lorg/apache/jackrabbit/webdav/ordering/Position;
.end method
