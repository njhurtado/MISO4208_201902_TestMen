.class public interface abstract Lorg/apache/jackrabbit/webdav/version/WorkspaceResource;
.super Ljava/lang/Object;
.source "WorkspaceResource.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVResource;


# static fields
.field public static final BASELINE_CONTROLLED_COLLECTION_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final CURRENT_ACTIVITY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final CUURENT_ACTIVITY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final WORKSPACE_CHECKOUT_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "workspace-checkout-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/WorkspaceResource;->WORKSPACE_CHECKOUT_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 59
    const-string v0, "current-activity-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/WorkspaceResource;->CUURENT_ACTIVITY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 78
    const-string v0, "current-activity-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/WorkspaceResource;->CURRENT_ACTIVITY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 93
    const-string v0, "baseline-controlled-collection-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/WorkspaceResource;->BASELINE_CONTROLLED_COLLECTION_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-void
.end method
