.class public interface abstract Lorg/apache/jackrabbit/webdav/search/SearchConstants;
.super Ljava/lang/Object;
.source "SearchConstants.java"


# static fields
.field public static final BASICSEARCH:Ljava/lang/String;

.field public static final HEADER_DASL:Ljava/lang/String; = "DASL"

.field public static final NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field public static final QUERY_GRAMMER_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final XML_GRAMMER:Ljava/lang/String; = "grammar"

.field public static final XML_QUERY_GRAMMAR:Ljava/lang/String; = "supported-query-grammar"

.field public static final XML_QUERY_SCHEMA_DISCOVERY:Ljava/lang/String; = "query-schema-discovery"

.field public static final XML_SEARCHREQUEST:Ljava/lang/String; = "searchrequest"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    sput-object v0, Lorg/apache/jackrabbit/webdav/search/SearchConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/jackrabbit/webdav/search/SearchConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "basicsearch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/search/SearchConstants;->BASICSEARCH:Ljava/lang/String;

    .line 90
    const-string v0, "supported-query-grammar-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/search/SearchConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/search/SearchConstants;->QUERY_GRAMMER_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-void
.end method
