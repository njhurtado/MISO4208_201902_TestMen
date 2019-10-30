.class public interface abstract Lorg/apache/jackrabbit/webdav/version/BaselineResource;
.super Ljava/lang/Object;
.source "BaselineResource.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/VersionResource;


# static fields
.field public static final BASELINE_COLLECTION:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final SUBBASELINE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "baseline-collection"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/BaselineResource;->BASELINE_COLLECTION:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 71
    const-string v0, "subbaseline-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/BaselineResource;->SUBBASELINE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-void
.end method


# virtual methods
.method public abstract getBaselineCollection()Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
