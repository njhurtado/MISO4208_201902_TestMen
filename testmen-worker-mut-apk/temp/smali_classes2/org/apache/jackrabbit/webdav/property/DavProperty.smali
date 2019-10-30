.class public interface abstract Lorg/apache/jackrabbit/webdav/property/DavProperty;
.super Ljava/lang/Object;
.source "DavProperty.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;
.implements Lorg/apache/jackrabbit/webdav/DavConstants;
.implements Lorg/apache/jackrabbit/webdav/property/PropEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;",
        "Lorg/apache/jackrabbit/webdav/DavConstants;",
        "Lorg/apache/jackrabbit/webdav/property/PropEntry;"
    }
.end annotation


# virtual methods
.method public abstract getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract isInvisibleInAllprop()Z
.end method
