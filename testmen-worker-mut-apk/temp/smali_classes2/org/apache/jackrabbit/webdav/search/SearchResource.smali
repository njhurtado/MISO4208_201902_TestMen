.class public interface abstract Lorg/apache/jackrabbit/webdav/search/SearchResource;
.super Ljava/lang/Object;
.source "SearchResource.java"


# static fields
.field public static final METHODS:Ljava/lang/String; = "SEARCH"


# virtual methods
.method public abstract getQueryGrammerSet()Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;
.end method

.method public abstract search(Lorg/apache/jackrabbit/webdav/search/SearchInfo;)Lorg/apache/jackrabbit/webdav/MultiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
