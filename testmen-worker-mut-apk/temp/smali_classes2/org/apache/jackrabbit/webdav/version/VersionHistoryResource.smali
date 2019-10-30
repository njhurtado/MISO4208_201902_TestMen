.class public interface abstract Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;
.super Ljava/lang/Object;
.source "VersionHistoryResource.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVResource;


# static fields
.field public static final METHODS:Ljava/lang/String; = ""

.field public static final ROOT_VERSION:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final VERSION_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "root-version"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;->ROOT_VERSION:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 62
    const-string v0, "version-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;->VERSION_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-void
.end method


# virtual methods
.method public abstract getVersions()[Lorg/apache/jackrabbit/webdav/version/VersionResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
