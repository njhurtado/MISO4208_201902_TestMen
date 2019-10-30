.class public interface abstract Lorg/apache/jackrabbit/webdav/version/VersionableResource;
.super Ljava/lang/Object;
.source "VersionableResource.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVResource;


# static fields
.field public static final METHODS:Ljava/lang/String; = "VERSION-CONTROL"


# virtual methods
.method public abstract addVersionControl()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
