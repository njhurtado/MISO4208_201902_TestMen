.class public Lcom/owncloud/android/lib/common/OwnCloudSamlSsoCredentials;
.super Ljava/lang/Object;
.source "OwnCloudSamlSsoCredentials.java"

# interfaces
.implements Lcom/owncloud/android/lib/common/OwnCloudCredentials;


# instance fields
.field private mSessionCookie:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "sessionCookie"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .end local p1    # "username":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/owncloud/android/lib/common/OwnCloudSamlSsoCredentials;->mUsername:Ljava/lang/String;

    .line 38
    if-eqz p2, :cond_1

    .end local p2    # "sessionCookie":Ljava/lang/String;
    :goto_1
    iput-object p2, p0, Lcom/owncloud/android/lib/common/OwnCloudSamlSsoCredentials;->mSessionCookie:Ljava/lang/String;

    .line 39
    return-void

    .line 37
    .restart local p1    # "username":Ljava/lang/String;
    .restart local p2    # "sessionCookie":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0

    .line 38
    .end local p1    # "username":Ljava/lang/String;
    :cond_1
    const-string p2, ""

    goto :goto_1
.end method


# virtual methods
.method public applyTo(Lcom/owncloud/android/lib/common/OwnCloudClient;)V
    .locals 8
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    const/4 v7, 0x0

    .line 43
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setAuthenticationPreemptive(Z)V

    .line 44
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCredentialCharset(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v5

    const-string v6, "compatibility"

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, v7}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setFollowRedirects(Z)V

    .line 48
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v4

    .line 50
    .local v4, "serverUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/owncloud/android/lib/common/OwnCloudSamlSsoCredentials;->mSessionCookie:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "cookies":[Ljava/lang/String;
    array-length v5, v1

    if-lez v5, :cond_1

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "cookie":Lorg/apache/commons/httpclient/Cookie;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 54
    aget-object v5, v1, v3

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 55
    .local v2, "equalPos":I
    if-ltz v2, :cond_0

    .line 56
    new-instance v0, Lorg/apache/commons/httpclient/Cookie;

    .end local v0    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    invoke-direct {v0}, Lorg/apache/commons/httpclient/Cookie;-><init>()V

    .line 57
    .restart local v0    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    aget-object v5, v1, v3

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/httpclient/Cookie;->setName(Ljava/lang/String;)V

    .line 58
    aget-object v5, v1, v3

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/httpclient/Cookie;->setValue(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/httpclient/Cookie;->setDomain(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/httpclient/Cookie;->setPath(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/apache/commons/httpclient/HttpState;->addCookie(Lorg/apache/commons/httpclient/Cookie;)V

    .line 53
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    .end local v2    # "equalPos":I
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public authTokenExpires()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudSamlSsoCredentials;->mSessionCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudSamlSsoCredentials;->mUsername:Ljava/lang/String;

    return-object v0
.end method
