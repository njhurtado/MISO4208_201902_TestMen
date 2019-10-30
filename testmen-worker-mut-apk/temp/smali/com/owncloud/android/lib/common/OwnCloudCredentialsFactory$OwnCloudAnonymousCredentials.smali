.class public final Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory$OwnCloudAnonymousCredentials;
.super Ljava/lang/Object;
.source "OwnCloudCredentialsFactory.java"

# interfaces
.implements Lcom/owncloud/android/lib/common/OwnCloudCredentials;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OwnCloudAnonymousCredentials"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public applyTo(Lcom/owncloud/android/lib/common/OwnCloudClient;)V
    .locals 1
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpState;->clearCredentials()V

    .line 64
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpState;->clearCookies()V

    .line 65
    return-void
.end method

.method public authTokenExpires()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, ""

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method
