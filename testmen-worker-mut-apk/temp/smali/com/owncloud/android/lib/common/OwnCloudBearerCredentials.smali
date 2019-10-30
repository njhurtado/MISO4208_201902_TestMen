.class public Lcom/owncloud/android/lib/common/OwnCloudBearerCredentials;
.super Ljava/lang/Object;
.source "OwnCloudBearerCredentials.java"

# interfaces
.implements Lcom/owncloud/android/lib/common/OwnCloudCredentials;


# instance fields
.field private mAccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_0

    .end local p1    # "accessToken":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/owncloud/android/lib/common/OwnCloudBearerCredentials;->mAccessToken:Ljava/lang/String;

    .line 41
    return-void

    .line 40
    .restart local p1    # "accessToken":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public applyTo(Lcom/owncloud/android/lib/common/OwnCloudClient;)V
    .locals 5
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    const/4 v3, 0x1

    .line 45
    const-string v1, "Bearer"

    const-class v2, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;

    invoke-static {v1, v2}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v0, "authPrefs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "Bearer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v1

    const-string v2, "http.auth.scheme-priority"

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setAuthenticationPreemptive(Z)V

    .line 52
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCredentialCharset(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY:Lorg/apache/commons/httpclient/auth/AuthScope;

    new-instance v3, Lcom/owncloud/android/lib/common/network/BearerCredentials;

    iget-object v4, p0, Lcom/owncloud/android/lib/common/OwnCloudBearerCredentials;->mAccessToken:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/owncloud/android/lib/common/network/BearerCredentials;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/httpclient/HttpState;->setCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V

    .line 57
    return-void
.end method

.method public authTokenExpires()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudBearerCredentials;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method
