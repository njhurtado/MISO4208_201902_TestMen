.class public interface abstract Lorg/apache/jackrabbit/webdav/version/ActivityResource;
.super Ljava/lang/Object;
.source "ActivityResource.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVResource;


# static fields
.field public static final ACTIVITY_CHECKOUT_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final ACTIVITY_VERSION_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final CURRENT_WORKSPACE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final SUBACTIVITY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "activity-version-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/ActivityResource;->ACTIVITY_VERSION_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 70
    const-string v0, "activity-checkout-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/ActivityResource;->ACTIVITY_CHECKOUT_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 86
    const-string v0, "subactivity-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/ActivityResource;->SUBACTIVITY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 95
    const-string v0, "current-workspace-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/ActivityResource;->CURRENT_WORKSPACE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-void
.end method
