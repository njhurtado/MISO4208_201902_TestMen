.class public interface abstract Lorg/apache/jackrabbit/webdav/bind/BindConstants;
.super Ljava/lang/Object;
.source "BindConstants.java"


# static fields
.field public static final METHODS:Ljava/lang/String; = "BIND, REBIND, UNBIND"

.field public static final NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field public static final PARENTSET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final RESOURCEID:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final XML_BIND:Ljava/lang/String; = "bind"

.field public static final XML_HREF:Ljava/lang/String; = "href"

.field public static final XML_PARENT:Ljava/lang/String; = "parent"

.field public static final XML_REBIND:Ljava/lang/String; = "rebind"

.field public static final XML_SEGMENT:Ljava/lang/String; = "segment"

.field public static final XML_UNBIND:Ljava/lang/String; = "unbind"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    sput-object v0, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 50
    const-string v0, "resource-id"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->RESOURCEID:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 51
    const-string v0, "parent-set"

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->PARENTSET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-void
.end method
