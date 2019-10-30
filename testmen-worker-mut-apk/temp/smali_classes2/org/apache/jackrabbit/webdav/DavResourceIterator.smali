.class public interface abstract Lorg/apache/jackrabbit/webdav/DavResourceIterator;
.super Ljava/lang/Object;
.source "DavResourceIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/jackrabbit/webdav/DavResource;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract nextResource()Lorg/apache/jackrabbit/webdav/DavResource;
.end method

.method public abstract size()I
.end method
