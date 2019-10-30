.class public interface abstract Lorg/apache/jackrabbit/webdav/ordering/OrderingResource;
.super Ljava/lang/Object;
.source "OrderingResource.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavResource;


# static fields
.field public static final METHODS:Ljava/lang/String; = "ORDERPATCH"


# virtual methods
.method public abstract isOrderable()Z
.end method

.method public abstract orderMembers(Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
