.class public interface abstract Lorg/apache/jackrabbit/webdav/property/DavPropertyIterator;
.super Ljava/lang/Object;
.source "DavPropertyIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/jackrabbit/webdav/property/DavProperty",
        "<*>;>;"
    }
.end annotation


# virtual methods
.method public abstract nextProperty()Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method
