.class public Lcom/owncloud/android/lib/resources/shares/ShareUtils;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# static fields
.field public static final SHARING_API_PATH:Ljava/lang/String; = "/ocs/v2.php/apps/files_sharing/api/v1/shares"

.field public static final SHARING_LINK_PATH_AFTER_VERSION_8:Ljava/lang/String; = "/index.php/s/"

.field public static final SHARING_LINK_PATH_BEFORE_VERSION_8:Ljava/lang/String; = "/public.php?service=files&t="


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharingLinkPath(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)Ljava/lang/String;
    .locals 1
    .param p0, "version"    # Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .prologue
    .line 46
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->isAfter8Version()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "/index.php/s/"

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/public.php?service=files&t="

    goto :goto_0
.end method
