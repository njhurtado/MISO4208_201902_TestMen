.class public interface abstract Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;
.super Ljava/lang/Object;
.source "DeltaVConstants.java"


# static fields
.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_NAMESPACE:Ljava/lang/String; = "namespace"

.field public static final COMMENT:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final CREATOR_DISPLAYNAME:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final HEADER_LABEL:Ljava/lang/String; = "Label"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field public static final SUPPORTED_LIVE_PROPERTY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final SUPPORTED_METHOD_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final SUPPORTED_REPORT_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final VERSION_CONTROLLED_CONFIGURATION:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final WORKSPACE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final XML_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final XML_ACTIVITY_COLLECTION_SET:Ljava/lang/String; = "activity-collection-set"

.field public static final XML_BASELINE:Ljava/lang/String; = "baseline"

.field public static final XML_CHECKOUT:Ljava/lang/String; = "checkout"

.field public static final XML_CHECKOUT_CHECKIN:Ljava/lang/String; = "checkout-checkin"

.field public static final XML_CHECKOUT_UNLOCK_CHECKIN:Ljava/lang/String; = "checkout-unlocked-checkin"

.field public static final XML_EXPAND_PROPERTY:Ljava/lang/String; = "expand-property"

.field public static final XML_LABEL:Ljava/lang/String; = "label"

.field public static final XML_LABEL_ADD:Ljava/lang/String; = "add"

.field public static final XML_LABEL_NAME:Ljava/lang/String; = "label-name"

.field public static final XML_LABEL_REMOVE:Ljava/lang/String; = "remove"

.field public static final XML_LABEL_SET:Ljava/lang/String; = "set"

.field public static final XML_LOCATE_BY_HISTORY:Ljava/lang/String; = "locate-by-history"

.field public static final XML_LOCKED_CHECKIN:Ljava/lang/String; = "locked-checkout"

.field public static final XML_MERGE:Ljava/lang/String; = "merge"

.field public static final XML_N0_AUTO_MERGE:Ljava/lang/String; = "no-auto-merge"

.field public static final XML_N0_CHECKOUT:Ljava/lang/String; = "no-checkout"

.field public static final XML_OPTIONS:Ljava/lang/String; = "options"

.field public static final XML_OPTIONS_RESPONSE:Ljava/lang/String; = "options-response"

.field public static final XML_PROPERTY:Ljava/lang/String; = "property"

.field public static final XML_REPORT:Ljava/lang/String; = "report"

.field public static final XML_SUPPORTED_METHOD:Ljava/lang/String; = "supported-method"

.field public static final XML_SUPPORTED_REPORT:Ljava/lang/String; = "supported-report"

.field public static final XML_UPDATE:Ljava/lang/String; = "update"

.field public static final XML_VERSION:Ljava/lang/String; = "version"

.field public static final XML_VERSION_HISTORY:Ljava/lang/String; = "version-history"

.field public static final XML_VERSION_HISTORY_SET:Ljava/lang/String; = "version-history-set"

.field public static final XML_VERSION_TREE:Ljava/lang/String; = "version-tree"

.field public static final XML_VH_COLLECTION_SET:Ljava/lang/String; = "version-history-collection-set"

.field public static final XML_WORKSPACE:Ljava/lang/String; = "workspace"

.field public static final XML_WSP_COLLECTION_SET:Ljava/lang/String; = "workspace-collection-set"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 88
    const-string v0, "comment"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->COMMENT:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 96
    const-string v0, "creator-displayname"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->CREATOR_DISPLAYNAME:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 113
    const-string v0, "supported-method-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->SUPPORTED_METHOD_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 130
    const-string v0, "supported-live-property-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->SUPPORTED_LIVE_PROPERTY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 138
    const-string v0, "supported-report-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->SUPPORTED_REPORT_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 154
    const-string v0, "workspace"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->WORKSPACE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 169
    const-string v0, "version-controlled-configuration"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->VERSION_CONTROLLED_CONFIGURATION:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-void
.end method
