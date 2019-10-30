.class public interface abstract Lorg/apache/jackrabbit/webdav/DavConstants;
.super Ljava/lang/Object;
.source "DavConstants.java"


# static fields
.field public static final DEPTH_0:I = 0x0

.field public static final DEPTH_1:I = 0x1

.field public static final DEPTH_INFINITY:I = 0x7fffffff

.field public static final DEPTH_INFINITY_S:Ljava/lang/String; = "infinity"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CONTENT_LANGUAGE:Ljava/lang/String; = "Content-Language"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_DAV:Ljava/lang/String; = "DAV"

.field public static final HEADER_DEPTH:Ljava/lang/String; = "Depth"

.field public static final HEADER_DESTINATION:Ljava/lang/String; = "Destination"

.field public static final HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_IF:Ljava/lang/String; = "If"

.field public static final HEADER_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEADER_LOCK_TOKEN:Ljava/lang/String; = "Lock-Token"

.field public static final HEADER_OVERWRITE:Ljava/lang/String; = "Overwrite"

.field public static final HEADER_TIMEOUT:Ljava/lang/String; = "Timeout"

.field public static final INFINITE_TIMEOUT:J = 0x7fffffffL

.field public static final NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field public static final OPAQUE_LOCK_TOKEN_PREFIX:Ljava/lang/String; = "opaquelocktoken:"

.field public static final PROPERTY_CREATIONDATE:Ljava/lang/String; = "creationdate"

.field public static final PROPERTY_DISPLAYNAME:Ljava/lang/String; = "displayname"

.field public static final PROPERTY_GETCONTENTLANGUAGE:Ljava/lang/String; = "getcontentlanguage"

.field public static final PROPERTY_GETCONTENTLENGTH:Ljava/lang/String; = "getcontentlength"

.field public static final PROPERTY_GETCONTENTTYPE:Ljava/lang/String; = "getcontenttype"

.field public static final PROPERTY_GETETAG:Ljava/lang/String; = "getetag"

.field public static final PROPERTY_GETLASTMODIFIED:Ljava/lang/String; = "getlastmodified"

.field public static final PROPERTY_LOCKDISCOVERY:Ljava/lang/String; = "lockdiscovery"

.field public static final PROPERTY_RESOURCETYPE:Ljava/lang/String; = "resourcetype"

.field public static final PROPERTY_SOURCE:Ljava/lang/String; = "source"

.field public static final PROPERTY_SUPPORTEDLOCK:Ljava/lang/String; = "supportedlock"

.field public static final PROPFIND_ALL_PROP:I = 0x1

.field public static final PROPFIND_ALL_PROP_INCLUDE:I = 0x3

.field public static final PROPFIND_BY_PROPERTY:I = 0x0

.field public static final PROPFIND_PROPERTY_NAMES:I = 0x2

.field public static final TIMEOUT_INFINITE:Ljava/lang/String; = "Infinite"

.field public static final UNDEFINED_TIME:J = -0x1L

.field public static final UNDEFINED_TIMEOUT:J = -0x80000000L

.field public static final XML_ACTIVELOCK:Ljava/lang/String; = "activelock"

.field public static final XML_ALLPROP:Ljava/lang/String; = "allprop"

.field public static final XML_COLLECTION:Ljava/lang/String; = "collection"

.field public static final XML_DEPTH:Ljava/lang/String; = "depth"

.field public static final XML_DST:Ljava/lang/String; = "dst"

.field public static final XML_EXCLUSIVE:Ljava/lang/String; = "exclusive"

.field public static final XML_HREF:Ljava/lang/String; = "href"

.field public static final XML_INCLUDE:Ljava/lang/String; = "include"

.field public static final XML_KEEPALIVE:Ljava/lang/String; = "keepalive"

.field public static final XML_LINK:Ljava/lang/String; = "link"

.field public static final XML_LOCKENTRY:Ljava/lang/String; = "lockentry"

.field public static final XML_LOCKINFO:Ljava/lang/String; = "lockinfo"

.field public static final XML_LOCKROOT:Ljava/lang/String; = "lockroot"

.field public static final XML_LOCKSCOPE:Ljava/lang/String; = "lockscope"

.field public static final XML_LOCKTOKEN:Ljava/lang/String; = "locktoken"

.field public static final XML_LOCKTYPE:Ljava/lang/String; = "locktype"

.field public static final XML_MULTISTATUS:Ljava/lang/String; = "multistatus"

.field public static final XML_OMIT:Ljava/lang/String; = "omit"

.field public static final XML_OWNER:Ljava/lang/String; = "owner"

.field public static final XML_PROP:Ljava/lang/String; = "prop"

.field public static final XML_PROPERTYBEHAVIOR:Ljava/lang/String; = "propertybehavior"

.field public static final XML_PROPERTYUPDATE:Ljava/lang/String; = "propertyupdate"

.field public static final XML_PROPFIND:Ljava/lang/String; = "propfind"

.field public static final XML_PROPNAME:Ljava/lang/String; = "propname"

.field public static final XML_PROPSTAT:Ljava/lang/String; = "propstat"

.field public static final XML_REMOVE:Ljava/lang/String; = "remove"

.field public static final XML_RESPONSE:Ljava/lang/String; = "response"

.field public static final XML_RESPONSEDESCRIPTION:Ljava/lang/String; = "responsedescription"

.field public static final XML_SET:Ljava/lang/String; = "set"

.field public static final XML_SHARED:Ljava/lang/String; = "shared"

.field public static final XML_SOURCE:Ljava/lang/String; = "source"

.field public static final XML_STATUS:Ljava/lang/String; = "status"

.field public static final XML_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final XML_WRITE:Ljava/lang/String; = "write"

.field public static final creationDateFormat:Ljava/text/DateFormat;

.field public static final modificationDateFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "D"

    const-string v1, "DAV:"

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 147
    invoke-static {}, Lorg/apache/jackrabbit/webdav/util/HttpDateFormat;->modificationDateFormat()Lorg/apache/jackrabbit/webdav/util/HttpDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/DavConstants;->modificationDateFormat:Ljava/text/DateFormat;

    .line 153
    invoke-static {}, Lorg/apache/jackrabbit/webdav/util/HttpDateFormat;->creationDateFormat()Lorg/apache/jackrabbit/webdav/util/HttpDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/DavConstants;->creationDateFormat:Ljava/text/DateFormat;

    return-void
.end method
