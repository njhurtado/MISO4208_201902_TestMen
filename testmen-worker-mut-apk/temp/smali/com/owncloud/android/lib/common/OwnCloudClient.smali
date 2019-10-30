.class public Lcom/owncloud/android/lib/common/OwnCloudClient;
.super Lorg/apache/commons/httpclient/HttpClient;
.source "OwnCloudClient.java"


# static fields
.field public static final MAX_REDIRECTIONS_COUNT:I = 0x3

.field private static final PARAM_PROTOCOL_VERSION:Ljava/lang/String; = "http.protocol.version"

.field private static final PARAM_SINGLE_COOKIE_HEADER:Ljava/lang/String; = "http.protocol.single-cookie-header"

.field private static final PARAM_SINGLE_COOKIE_HEADER_VALUE:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static sExhaustBuffer:[B

.field private static sIntanceCounter:I


# instance fields
.field private mBaseUri:Landroid/net/Uri;

.field private mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

.field private mFollowRedirects:Z

.field private mInstanceNumber:I

.field private mVersion:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/owncloud/android/lib/common/OwnCloudClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    .line 63
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/owncloud/android/lib/common/OwnCloudClient;->sExhaustBuffer:[B

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/owncloud/android/lib/common/OwnCloudClient;->sIntanceCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .locals 5
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "connectionMgr"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 78
    invoke-direct {p0, p2}, Lorg/apache/commons/httpclient/HttpClient;-><init>(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    .line 66
    iput-boolean v4, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mFollowRedirects:Z

    .line 67
    iput-object v2, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mInstanceNumber:I

    .line 72
    iput-object v2, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mVersion:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter \'baseUri\' cannot be NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mBaseUri:Landroid/net/Uri;

    .line 85
    sget v1, Lcom/owncloud/android/lib/common/OwnCloudClient;->sIntanceCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/owncloud/android/lib/common/OwnCloudClient;->sIntanceCounter:I

    iput v1, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mInstanceNumber:I

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mInstanceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Creating OwnCloudClient"

    invoke-static {v1, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "userAgent":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v1

    const-string v2, "http.useragent"

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v1

    const-string v2, "http.protocol.version"

    sget-object v3, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v1

    const-string v2, "ignoreCookies"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v1

    const-string v2, "http.protocol.single-cookie-header"

    .line 98
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 96
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->applyProxySettings()V

    .line 102
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->clearCredentials()V

    .line 103
    return-void
.end method

.method private applyProxySettings()V
    .locals 7

    .prologue
    .line 107
    const-string v4, "http.proxyHost"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "proxyHost":Ljava/lang/String;
    const-string v4, "http.proxyPort"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "proxyPortSt":Ljava/lang/String;
    const/4 v2, 0x0

    .line 111
    .local v2, "proxyPort":I
    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 118
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    .line 120
    .local v0, "hostCfg":Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/HostConfiguration;->setProxy(Ljava/lang/String;I)V

    .line 121
    sget-object v4, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proxy settings: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v0    # "hostCfg":Lorg/apache/commons/httpclient/HostConfiguration;
    :cond_1
    return-void

    .line 114
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private logCookie(Lorg/apache/commons/httpclient/Cookie;)V
    .locals 3
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .prologue
    .line 446
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cookie name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       domain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget-object v1, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       expiryDate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 452
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {v1, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       comment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       secure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getSecure()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void

    .line 452
    :cond_0
    const-string v0, "--"

    goto :goto_0
.end method

.method private logCookiesAtRequest([Lorg/apache/commons/httpclient/Header;Ljava/lang/String;)V
    .locals 6
    .param p1, "headers"    # [Lorg/apache/commons/httpclient/Header;
    .param p2, "when"    # Ljava/lang/String;

    .prologue
    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "counter":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 382
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cookie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mInstanceNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cookies at request ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "counter":I
    .local v1, "counter":I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v2

    .line 385
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 383
    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 381
    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_1
    if-nez v0, :cond_2

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mInstanceNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No cookie at request ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_2
    return-void
.end method

.method private logCookiesAtState(Ljava/lang/String;)V
    .locals 5
    .param p1, "when"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpState;->getCookies()[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v0

    .line 395
    .local v0, "cookies":[Lorg/apache/commons/httpclient/Cookie;
    array-length v2, v0

    if-nez v2, :cond_1

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mInstanceNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No cookie at STATE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    return-void

    .line 398
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mInstanceNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cookies at STATE ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mInstanceNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):\n        name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    .line 401
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n        value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    .line 402
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n        domain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    .line 403
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n        path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    .line 404
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    invoke-static {v2, v3}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private logSetCookiesAtResponse([Lorg/apache/commons/httpclient/Header;)V
    .locals 6
    .param p1, "headers"    # [Lorg/apache/commons/httpclient/Header;

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "counter":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 413
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "set-cookie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mInstanceNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set-Cookie ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "counter":I
    .local v1, "counter":I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v2

    .line 415
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 414
    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 412
    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    :cond_1
    if-nez v0, :cond_2

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mInstanceNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No set-cookie"

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_2
    return-void
.end method


# virtual methods
.method public clearCredentials()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    instance-of v0, v0, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory$OwnCloudAnonymousCredentials;

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->getAnonymousCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v0

    iput-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    invoke-interface {v0, p0}, Lcom/owncloud/android/lib/common/OwnCloudCredentials;->applyTo(Lcom/owncloud/android/lib/common/OwnCloudClient;)V

    .line 140
    return-void
.end method

.method public executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I
    .locals 7
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    :try_start_0
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    .line 211
    .local v1, "params":Lorg/apache/commons/httpclient/params/HttpParams;
    invoke-static {}, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "userAgent":Ljava/lang/String;
    const-string v4, "http.useragent"

    invoke-interface {v1, v4, v3}, Lorg/apache/commons/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mInstanceNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REQUEST "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 215
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lorg/apache/commons/httpclient/HttpMethod;->setFollowRedirects(Z)V

    .line 221
    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v2

    .line 223
    .local v2, "status":I
    iget-boolean v4, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mFollowRedirects:Z

    if-eqz v4, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->followRedirection(Lorg/apache/commons/httpclient/HttpMethod;)Lcom/owncloud/android/lib/common/network/RedirectionPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/owncloud/android/lib/common/network/RedirectionPath;->getLastStatus()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 231
    :cond_0
    return v2

    .line 233
    .end local v1    # "params":Lorg/apache/commons/httpclient/params/HttpParams;
    .end local v2    # "status":I
    .end local v3    # "userAgent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method

.method public executeMethod(Lorg/apache/commons/httpclient/HttpMethodBase;II)I
    .locals 4
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethodBase;
    .param p2, "readTimeout"    # I
    .param p3, "connectionTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getSoTimeout()I

    move-result v1

    .line 182
    .local v1, "oldSoTimeout":I
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getConnectionTimeout()I

    move-result v0

    .line 184
    .local v0, "oldConnectionTimeout":I
    if-ltz p2, :cond_0

    .line 185
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setSoTimeout(I)V

    .line 186
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setSoTimeout(I)V

    .line 188
    :cond_0
    if-ltz p3, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V

    .line 191
    :cond_1
    invoke-virtual {p0, p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 193
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setSoTimeout(I)V

    .line 194
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V

    .line 191
    return v2

    .line 193
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setSoTimeout(I)V

    .line 194
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V

    throw v2
.end method

.method public exhaustResponse(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "responseBodyAsStream"    # Ljava/io/InputStream;

    .prologue
    .line 304
    if-eqz p1, :cond_1

    .line 306
    :cond_0
    :try_start_0
    sget-object v1, Lcom/owncloud/android/lib/common/OwnCloudClient;->sExhaustBuffer:[B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    .line 307
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_1
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "io":Ljava/io/IOException;
    sget-object v1, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected exception while exhausting not interesting HTTP response; will be IGNORED"

    invoke-static {v1, v2, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public existsFile(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v5, 0xc8

    .line 152
    new-instance v0, Lorg/apache/commons/httpclient/methods/HeadMethod;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/httpclient/methods/HeadMethod;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "head":Lorg/apache/commons/httpclient/methods/HeadMethod;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v1

    .line 155
    .local v1, "status":I
    sget-object v3, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HEAD to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " finished with HTTP status "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eq v1, v5, :cond_0

    const-string v2, "(FAIL)"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    if-ne v1, v5, :cond_1

    const/4 v2, 0x1

    .line 161
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->releaseConnection()V

    .line 158
    return v2

    .line 155
    :cond_0
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 161
    .end local v1    # "status":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/HeadMethod;->releaseConnection()V

    throw v2
.end method

.method public followRedirection(Lorg/apache/commons/httpclient/HttpMethod;)Lcom/owncloud/android/lib/common/network/RedirectionPath;
    .locals 14
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const/4 v7, 0x0

    .line 242
    .local v7, "redirectionsCount":I
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v9

    .line 243
    .local v9, "status":I
    new-instance v8, Lcom/owncloud/android/lib/common/network/RedirectionPath;

    const/4 v11, 0x3

    invoke-direct {v8, v9, v11}, Lcom/owncloud/android/lib/common/network/RedirectionPath;-><init>(II)V

    .line 244
    .local v8, "result":Lcom/owncloud/android/lib/common/network/RedirectionPath;
    :goto_0
    const/4 v11, 0x3

    if-ge v7, v11, :cond_6

    const/16 v11, 0x12d

    if-eq v9, v11, :cond_0

    const/16 v11, 0x12e

    if-eq v9, v11, :cond_0

    const/16 v11, 0x133

    if-ne v9, v11, :cond_6

    .line 250
    :cond_0
    const-string v11, "Location"

    invoke-interface {p1, v11}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v3

    .line 251
    .local v3, "location":Lorg/apache/commons/httpclient/Header;
    if-nez v3, :cond_1

    .line 252
    const-string v11, "location"

    invoke-interface {p1, v11}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v3

    .line 254
    :cond_1
    if-eqz v3, :cond_5

    .line 255
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mInstanceNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Location to redirect: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 256
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 255
    invoke-static {v11, v12}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "locationStr":Ljava/lang/String;
    invoke-virtual {v8, v4}, Lcom/owncloud/android/lib/common/network/RedirectionPath;->addLocation(Ljava/lang/String;)V

    .line 263
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V

    .line 264
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->releaseConnection()V

    .line 266
    new-instance v11, Lorg/apache/commons/httpclient/URI;

    const/4 v12, 0x1

    invoke-direct {v11, v4, v12}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p1, v11}, Lorg/apache/commons/httpclient/HttpMethod;->setURI(Lorg/apache/commons/httpclient/URI;)V

    .line 267
    const-string v11, "Destination"

    invoke-interface {p1, v11}, Lorg/apache/commons/httpclient/HttpMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 268
    .local v0, "destination":Lorg/apache/commons/httpclient/Header;
    if-nez v0, :cond_2

    .line 269
    const-string v11, "destination"

    invoke-interface {p1, v11}, Lorg/apache/commons/httpclient/HttpMethod;->getRequestHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 271
    :cond_2
    if-eqz v0, :cond_3

    .line 272
    iget-object v11, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    instance-of v11, v11, Lcom/owncloud/android/lib/common/OwnCloudBearerCredentials;

    if-eqz v11, :cond_4

    const-string v11, "/remote.php/odav"

    :goto_1
    invoke-virtual {v4, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 277
    .local v10, "suffixIndex":I
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, "redirectionBase":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "destinationStr":Ljava/lang/String;
    iget-object v11, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "destinationPath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "redirectedDestination":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lorg/apache/commons/httpclient/Header;->setValue(Ljava/lang/String;)V

    .line 284
    invoke-interface {p1, v0}, Lorg/apache/commons/httpclient/HttpMethod;->setRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 286
    .end local v1    # "destinationPath":Ljava/lang/String;
    .end local v2    # "destinationStr":Ljava/lang/String;
    .end local v5    # "redirectedDestination":Ljava/lang/String;
    .end local v6    # "redirectionBase":Ljava/lang/String;
    .end local v10    # "suffixIndex":I
    :cond_3
    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v9

    .line 287
    invoke-virtual {v8, v9}, Lcom/owncloud/android/lib/common/network/RedirectionPath;->addStatus(I)V

    .line 288
    add-int/lit8 v7, v7, 0x1

    .line 290
    goto/16 :goto_0

    .line 272
    :cond_4
    const-string v11, "/remote.php/webdav"

    goto :goto_1

    .line 291
    .end local v0    # "destination":Lorg/apache/commons/httpclient/Header;
    .end local v4    # "locationStr":Ljava/lang/String;
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/owncloud/android/lib/common/OwnCloudClient;->TAG:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mInstanceNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "No location to redirect!"

    invoke-static {v11, v12}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/16 v9, 0x194

    goto/16 :goto_0

    .line 295
    .end local v3    # "location":Lorg/apache/commons/httpclient/Header;
    :cond_6
    return-object v8
.end method

.method public getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getConnectionTimeout()I

    move-result v0

    return v0
.end method

.method public getCookiesString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpState;->getCookies()[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v1

    .line 426
    .local v1, "cookies":[Lorg/apache/commons/httpclient/Cookie;
    const-string v2, ""

    .line 427
    .local v2, "cookiesString":Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 428
    .local v0, "cookie":Lorg/apache/commons/httpclient/Cookie;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Cookie;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    :cond_0
    return-object v2
.end method

.method public final getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    return-object v0
.end method

.method public getDataTimeout()I
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mFollowRedirects:Z

    return v0
.end method

.method public getNewWebdavUri(Z)Landroid/net/Uri;
    .locals 2
    .param p1, "filesUri"    # Z

    .prologue
    .line 338
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    instance-of v0, v0, Lcom/owncloud/android/lib/common/OwnCloudBearerCredentials;

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/remote.php/odav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 344
    :goto_0
    return-object v0

    .line 341
    :cond_0
    if-eqz p1, :cond_1

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/remote.php/webdav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/remote.php/dav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getOwnCloudVersion()Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mVersion:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    return-object v0
.end method

.method public getWebdavUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    instance-of v0, v0, Lcom/owncloud/android/lib/common/OwnCloudBearerCredentials;

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/remote.php/odav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/remote.php/webdav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public setBaseUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI cannot be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    iput-object p1, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mBaseUri:Landroid/net/Uri;

    .line 361
    return-void
.end method

.method public setCredentials(Lcom/owncloud/android/lib/common/OwnCloudCredentials;)V
    .locals 1
    .param p1, "credentials"    # Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    iput-object p1, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    .line 129
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    invoke-interface {v0, p0}, Lcom/owncloud/android/lib/common/OwnCloudCredentials;->applyTo(Lcom/owncloud/android/lib/common/OwnCloudClient;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->clearCredentials()V

    goto :goto_0
.end method

.method public setDefaultTimeouts(II)V
    .locals 1
    .param p1, "defaultDataTimeout"    # I
    .param p2, "defaultConnectionTimeout"    # I

    .prologue
    .line 321
    if-ltz p1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setSoTimeout(I)V

    .line 324
    :cond_0
    if-ltz p2, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V

    .line 327
    :cond_1
    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 0
    .param p1, "followRedirects"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mFollowRedirects:Z

    .line 373
    return-void
.end method

.method public setOwnCloudVersion(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)V
    .locals 0
    .param p1, "version"    # Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/owncloud/android/lib/common/OwnCloudClient;->mVersion:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .line 460
    return-void
.end method
