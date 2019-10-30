.class public Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;
.super Ljava/lang/Object;
.source "OwnCloudBasicCredentials.java"

# interfaces
.implements Lcom/owncloud/android/lib/common/OwnCloudCredentials;


# instance fields
.field private mAuthenticationPreemptive:Z

.field private mPassword:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_0

    .end local p1    # "username":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;->mUsername:Ljava/lang/String;

    .line 41
    if-eqz p2, :cond_1

    .end local p2    # "password":Ljava/lang/String;
    :goto_1
    iput-object p2, p0, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;->mPassword:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;->mAuthenticationPreemptive:Z

    .line 43
    return-void

    .line 40
    .restart local p1    # "username":Ljava/lang/String;
    .restart local p2    # "password":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0

    .line 41
    .end local p1    # "username":Ljava/lang/String;
    :cond_1
    const-string p2, ""

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "preemptiveMode"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    .end local p1    # "username":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;->mUsername:Ljava/lang/String;

    .line 47
    if-eqz p2, :cond_1

    .end local p2    # "password":Ljava/lang/String;
    :goto_1
    iput-object p2, p0, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;->mPassword:Ljava/lang/String;

    .line 48
    iput-boolean p3, p0, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;->mAuthenticationPreemptive:Z

    .line 49
    return-void

    .line 46
    .restart local p1    # "username":Ljava/lang/String;
    .restart local p2    # "password":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0

    .line 47
    .end local p1    # "username":Ljava/lang/String;
    :cond_1
    const-string p2, ""

    goto :goto_1
.end method


# virtual methods
.method public applyTo(Lcom/owncloud/android/lib/common/OwnCloudClient;)V
    .locals 6
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .local v0, "authPrefs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "Basic"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v1

    const-string v2, "http.auth.scheme-priority"

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;->mAuthenticationPreemptive:Z

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setAuthenticationPreemptive(Z)V

    .line 58
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCredentialCharset(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY:Lorg/apache/commons/httpclient/auth/AuthScope;

    new-instance v3, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    iget-object v4, p0, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;->mPassword:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/httpclient/HttpState;->setCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V

    .line 60
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
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;->mUsername:Ljava/lang/String;

    return-object v0
.end method
