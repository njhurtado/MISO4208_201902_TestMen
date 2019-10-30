.class public interface abstract Lorg/apache/jackrabbit/webdav/ordering/OrderingConstants;
.super Ljava/lang/Object;
.source "OrderingConstants.java"


# static fields
.field public static final HEADER_ORDERING_TYPE:Ljava/lang/String; = "Ordering-Type"

.field public static final HEADER_POSITION:Ljava/lang/String; = "Position"

.field public static final NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field public static final ORDERING_TYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final ORDERING_TYPE_CUSTOM:Ljava/lang/String; = "DAV:custom"

.field public static final ORDERING_TYPE_UNORDERED:Ljava/lang/String; = "DAV:unordered"

.field public static final SUPPORTED_LIVE_PROPERTY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final SUPPORTED_METHOD_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final XML_AFTER:Ljava/lang/String; = "after"

.field public static final XML_BEFORE:Ljava/lang/String; = "before"

.field public static final XML_FIRST:Ljava/lang/String; = "first"

.field public static final XML_LAST:Ljava/lang/String; = "last"

.field public static final XML_ORDERING_TYPE:Ljava/lang/String; = "ordering-type"

.field public static final XML_ORDERPATCH:Ljava/lang/String; = "orderpatch"

.field public static final XML_ORDER_MEMBER:Ljava/lang/String; = "order-member"

.field public static final XML_POSITION:Ljava/lang/String; = "position"

.field public static final XML_SEGMENT:Ljava/lang/String; = "segment"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    sput-object v0, Lorg/apache/jackrabbit/webdav/ordering/OrderingConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 87
    const-string v0, "ordering-type"

    sget-object v1, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/ordering/OrderingConstants;->ORDERING_TYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 96
    const-string v0, "supported-method-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/ordering/OrderingConstants;->SUPPORTED_METHOD_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 105
    const-string v0, "supported-live-property-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/ordering/OrderingConstants;->SUPPORTED_LIVE_PROPERTY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-void
.end method
