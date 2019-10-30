.class public interface abstract Lorg/apache/jackrabbit/webdav/version/VersionResource;
.super Ljava/lang/Object;
.source "VersionResource.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVResource;


# static fields
.field public static final ACTIVITY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final CHECKIN_FORK:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final CHECKOUT_FORK:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final CHECKOUT_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final LABEL_NAME_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final METHODS:Ljava/lang/String; = "LABEL"

.field public static final PREDECESSOR_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final SUCCESSOR_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final VERSION_CONTROLLED_BINDING_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final VERSION_HISTORY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final VERSION_NAME:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "label-name-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionResource;->LABEL_NAME_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 93
    const-string v0, "predecessor-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionResource;->PREDECESSOR_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 104
    const-string v0, "successor-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionResource;->SUCCESSOR_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 116
    const-string v0, "checkout-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionResource;->CHECKOUT_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 128
    const-string v0, "version-name"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionResource;->VERSION_NAME:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 138
    const-string v0, "version-history"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionResource;->VERSION_HISTORY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 144
    const-string v0, "checkout-fork"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionResource;->CHECKOUT_FORK:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 150
    const-string v0, "checkin-fork"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionResource;->CHECKIN_FORK:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 168
    const-string v0, "activity-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionResource;->ACTIVITY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 187
    const-string v0, "version-controlled-binding-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionResource;->VERSION_CONTROLLED_BINDING_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-void
.end method


# virtual methods
.method public abstract getVersionHistory()Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract label(Lorg/apache/jackrabbit/webdav/version/LabelInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
