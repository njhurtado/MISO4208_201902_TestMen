.class public Lcom/dropbox/core/DbxWebAuth;
.super Ljava/lang/Object;
.source "DbxWebAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxWebAuth$Request;,
        Lcom/dropbox/core/DbxWebAuth$ProviderException;,
        Lcom/dropbox/core/DbxWebAuth$NotApprovedException;,
        Lcom/dropbox/core/DbxWebAuth$CsrfException;,
        Lcom/dropbox/core/DbxWebAuth$BadStateException;,
        Lcom/dropbox/core/DbxWebAuth$BadRequestException;,
        Lcom/dropbox/core/DbxWebAuth$Exception;
    }
.end annotation


# static fields
.field private static final CSRF_BYTES_SIZE:I = 0x10

.field private static final CSRF_STRING_SIZE:I

.field private static final RAND:Ljava/security/SecureRandom;

.field public static final ROLE_PERSONAL:Ljava/lang/String; = "personal"

.field public static final ROLE_WORK:Ljava/lang/String; = "work"


# instance fields
.field private final appInfo:Lcom/dropbox/core/DbxAppInfo;

.field private final deprecatedRequest:Lcom/dropbox/core/DbxWebAuth$Request;

.field private final requestConfig:Lcom/dropbox/core/DbxRequestConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxWebAuth;->RAND:Ljava/security/SecureRandom;

    .line 140
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->urlSafeBase64Encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/dropbox/core/DbxWebAuth;->CSRF_STRING_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxAppInfo;)V
    .locals 2
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "appInfo"    # Lcom/dropbox/core/DbxAppInfo;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestConfig"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "appInfo"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    .line 188
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->deprecatedRequest:Lcom/dropbox/core/DbxWebAuth$Request;

    .line 190
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxAppInfo;Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)V
    .locals 2
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "appInfo"    # Lcom/dropbox/core/DbxAppInfo;
    .param p3, "redirectUri"    # Ljava/lang/String;
    .param p4, "sessionStore"    # Lcom/dropbox/core/DbxSessionStore;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestConfig"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "appInfo"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    .line 169
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    .line 170
    invoke-static {}, Lcom/dropbox/core/DbxWebAuth;->newRequestBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p3, p4}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->withRedirectUri(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->build()Lcom/dropbox/core/DbxWebAuth$Request;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->deprecatedRequest:Lcom/dropbox/core/DbxWebAuth$Request;

    .line 173
    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/dropbox/core/DbxWebAuth;->CSRF_STRING_SIZE:I

    return v0
.end method

.method private static appendCsrfToken(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 6
    .param p0, "request"    # Lcom/dropbox/core/DbxWebAuth$Request;

    .prologue
    .line 457
    const/16 v3, 0x10

    new-array v1, v3, [B

    .line 458
    .local v1, "csrf":[B
    sget-object v3, Lcom/dropbox/core/DbxWebAuth;->RAND:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 459
    invoke-static {v1}, Lcom/dropbox/core/util/StringUtil;->urlSafeBase64Encode([B)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/dropbox/core/DbxWebAuth;->CSRF_STRING_SIZE:I

    if-eq v3, v4, :cond_0

    .line 462
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected CSRF token length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 465
    :cond_0
    invoke-static {p0}, Lcom/dropbox/core/DbxWebAuth$Request;->access$400(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/DbxSessionStore;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 466
    invoke-static {p0}, Lcom/dropbox/core/DbxWebAuth$Request;->access$400(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/DbxSessionStore;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/dropbox/core/DbxSessionStore;->set(Ljava/lang/String;)V

    .line 469
    :cond_1
    invoke-static {p0}, Lcom/dropbox/core/DbxWebAuth$Request;->access$500(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 476
    .end local v2    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 472
    .restart local v2    # "prefix":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/dropbox/core/DbxWebAuth$Request;->access$500(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "combined":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_3

    .line 474
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected combined state length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_3
    move-object v2, v0

    .line 476
    goto :goto_0
.end method

.method private authorizeImpl(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 5
    .param p1, "request"    # Lcom/dropbox/core/DbxWebAuth$Request;

    .prologue
    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "client_id"

    iget-object v2, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v2}, Lcom/dropbox/core/DbxAppInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "response_type"

    const-string v2, "code"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$000(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 263
    const-string v1, "redirect_uri"

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$000(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "state"

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth;->appendCsrfToken(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$100(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 268
    const-string v1, "require_role"

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$100(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$200(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 271
    const-string v1, "force_reapprove"

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$200(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$300(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 274
    const-string v1, "disable_signup"

    invoke-static {p1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$300(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_3
    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    .line 278
    invoke-virtual {v1}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    .line 279
    invoke-virtual {v2}, Lcom/dropbox/core/DbxAppInfo;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/core/DbxHost;->getWeb()Ljava/lang/String;

    move-result-object v2

    const-string v3, "oauth2/authorize"

    .line 281
    invoke-static {v0}, Lcom/dropbox/core/DbxRequestUtil;->toParamsArray(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-static {v1, v2, v3, v4}, Lcom/dropbox/core/DbxRequestUtil;->buildUrlWithParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private finish(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 383
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/DbxWebAuth;->finish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object v0

    return-object v0
.end method

.method private finish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "redirectUri"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 387
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 390
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "grant_type"

    const-string v1, "authorization_code"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v0, "code"

    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v0, "locale"

    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {v1}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    if-eqz p2, :cond_1

    .line 395
    const-string v0, "redirect_uri"

    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v5, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxAppInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v1}, Lcom/dropbox/core/DbxAppInfo;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/dropbox/core/DbxRequestUtil;->addBasicAuthHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 401
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    const-string v1, "OfficialDropboxJavaSDKv2"

    iget-object v2, p0, Lcom/dropbox/core/DbxWebAuth;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    .line 404
    invoke-virtual {v2}, Lcom/dropbox/core/DbxAppInfo;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v2

    const-string v3, "oauth2/token"

    .line 406
    invoke-static {v7}, Lcom/dropbox/core/DbxRequestUtil;->toParamsArray(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/dropbox/core/DbxWebAuth$1;

    invoke-direct {v6, p0, p3}, Lcom/dropbox/core/DbxWebAuth$1;-><init>(Lcom/dropbox/core/DbxWebAuth;Ljava/lang/String;)V

    .line 401
    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/DbxAuthFinish;

    return-object v0
.end method

.method private static getParam(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWebAuth$BadRequestException;
        }
    .end annotation

    .prologue
    .line 507
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 509
    .local v0, "v":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 510
    const/4 v1, 0x0

    .line 514
    :goto_0
    return-object v1

    .line 511
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    .line 512
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" missing value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    :cond_1
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 514
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    .line 516
    :cond_2
    new-instance v1, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multiple occurrences of \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newRequestBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 1

    .prologue
    .line 611
    invoke-static {}, Lcom/dropbox/core/DbxWebAuth$Request;->newBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static verifyAndStripCsrfToken(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)Ljava/lang/String;
    .locals 6
    .param p0, "state"    # Ljava/lang/String;
    .param p1, "sessionStore"    # Lcom/dropbox/core/DbxSessionStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWebAuth$CsrfException;,
            Lcom/dropbox/core/DbxWebAuth$BadStateException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-interface {p1}, Lcom/dropbox/core/DbxSessionStore;->get()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "expected":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 484
    new-instance v3, Lcom/dropbox/core/DbxWebAuth$BadStateException;

    const-string v4, "No CSRF Token loaded from session store."

    invoke-direct {v3, v4}, Lcom/dropbox/core/DbxWebAuth$BadStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 486
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/dropbox/core/DbxWebAuth;->CSRF_STRING_SIZE:I

    if-ge v3, v4, :cond_1

    .line 487
    new-instance v3, Lcom/dropbox/core/DbxWebAuth$BadStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Token retrieved from session store is too small: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/dropbox/core/DbxWebAuth$BadStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 490
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/dropbox/core/DbxWebAuth;->CSRF_STRING_SIZE:I

    if-ge v3, v4, :cond_2

    .line 491
    new-instance v3, Lcom/dropbox/core/DbxWebAuth$CsrfException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Token too small: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/dropbox/core/DbxWebAuth$CsrfException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 494
    :cond_2
    const/4 v3, 0x0

    sget v4, Lcom/dropbox/core/DbxWebAuth;->CSRF_STRING_SIZE:I

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "actual":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/dropbox/core/util/StringUtil;->secureStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 496
    new-instance v3, Lcom/dropbox/core/DbxWebAuth$CsrfException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/dropbox/core/DbxWebAuth$CsrfException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 499
    :cond_3
    sget v3, Lcom/dropbox/core/DbxWebAuth;->CSRF_STRING_SIZE:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "stripped":Ljava/lang/String;
    invoke-interface {p1}, Lcom/dropbox/core/DbxSessionStore;->clear()V

    .line 503
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    .end local v2    # "stripped":Ljava/lang/String;
    :cond_4
    return-object v2
.end method


# virtual methods
.method public authorize(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 2
    .param p1, "request"    # Lcom/dropbox/core/DbxWebAuth$Request;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->deprecatedRequest:Lcom/dropbox/core/DbxWebAuth$Request;

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must create this instance using DbxWebAuth(DbxRequestConfig,DbxAppInfo) to call this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth;->authorizeImpl(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finish(Ljava/util/Map;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/DbxAuthFinish;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Lcom/dropbox/core/DbxWebAuth$BadRequestException;,
            Lcom/dropbox/core/DbxWebAuth$BadStateException;,
            Lcom/dropbox/core/DbxWebAuth$CsrfException;,
            Lcom/dropbox/core/DbxWebAuth$NotApprovedException;,
            Lcom/dropbox/core/DbxWebAuth$ProviderException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 445
    .local p1, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->deprecatedRequest:Lcom/dropbox/core/DbxWebAuth$Request;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must use DbxWebAuth.finishFromRedirect(..) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->deprecatedRequest:Lcom/dropbox/core/DbxWebAuth$Request;

    .line 449
    invoke-static {v0}, Lcom/dropbox/core/DbxWebAuth$Request;->access$000(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth;->deprecatedRequest:Lcom/dropbox/core/DbxWebAuth$Request;

    .line 450
    invoke-static {v1}, Lcom/dropbox/core/DbxWebAuth$Request;->access$400(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/DbxSessionStore;

    move-result-object v1

    .line 448
    invoke-virtual {p0, v0, v1, p1}, Lcom/dropbox/core/DbxWebAuth;->finishFromRedirect(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;Ljava/util/Map;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object v0

    return-object v0
.end method

.method public finishFromCode(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxWebAuth;->finish(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object v0

    return-object v0
.end method

.method public finishFromCode(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "redirectUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/DbxWebAuth;->finish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object v0

    return-object v0
.end method

.method public finishFromRedirect(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;Ljava/util/Map;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 8
    .param p1, "redirectUri"    # Ljava/lang/String;
    .param p2, "sessionStore"    # Lcom/dropbox/core/DbxSessionStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/DbxSessionStore;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/DbxAuthFinish;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Lcom/dropbox/core/DbxWebAuth$BadRequestException;,
            Lcom/dropbox/core/DbxWebAuth$BadStateException;,
            Lcom/dropbox/core/DbxWebAuth$CsrfException;,
            Lcom/dropbox/core/DbxWebAuth$NotApprovedException;,
            Lcom/dropbox/core/DbxWebAuth$ProviderException;
        }
    .end annotation

    .prologue
    .line 338
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "redirectUri"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 339
    :cond_0
    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "sessionStore"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 340
    :cond_1
    if-nez p3, :cond_2

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "params"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 342
    :cond_2
    const-string v5, "state"

    invoke-static {p3, v5}, Lcom/dropbox/core/DbxWebAuth;->getParam(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "state":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 344
    new-instance v5, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    const-string v6, "Missing required parameter: \"state\"."

    invoke-direct {v5, v6}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 347
    :cond_3
    const-string v5, "error"

    invoke-static {p3, v5}, Lcom/dropbox/core/DbxWebAuth;->getParam(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "error":Ljava/lang/String;
    const-string v5, "code"

    invoke-static {p3, v5}, Lcom/dropbox/core/DbxWebAuth;->getParam(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "code":Ljava/lang/String;
    const-string v5, "error_description"

    invoke-static {p3, v5}, Lcom/dropbox/core/DbxWebAuth;->getParam(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "errorDescription":Ljava/lang/String;
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 352
    new-instance v5, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    const-string v6, "Missing both \"code\" and \"error\"."

    invoke-direct {v5, v6}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 354
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 355
    new-instance v5, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    const-string v6, "Both \"code\" and \"error\" are set."

    invoke-direct {v5, v6}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 357
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 358
    new-instance v5, Lcom/dropbox/core/DbxWebAuth$BadRequestException;

    const-string v6, "Both \"code\" and \"error_description\" are set."

    invoke-direct {v5, v6}, Lcom/dropbox/core/DbxWebAuth$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 361
    :cond_6
    invoke-static {v4, p2}, Lcom/dropbox/core/DbxWebAuth;->verifyAndStripCsrfToken(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)Ljava/lang/String;

    move-result-object v4

    .line 363
    if-eqz v1, :cond_a

    .line 364
    const-string v5, "access_denied"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 366
    if-nez v2, :cond_7

    const-string v3, "No additional description from Dropbox"

    .line 369
    .local v3, "exceptionMessage":Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/dropbox/core/DbxWebAuth$NotApprovedException;

    invoke-direct {v5, v3}, Lcom/dropbox/core/DbxWebAuth$NotApprovedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 366
    .end local v3    # "exceptionMessage":Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Additional description from Dropbox: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 372
    :cond_8
    if-nez v2, :cond_9

    move-object v3, v1

    .line 375
    .restart local v3    # "exceptionMessage":Ljava/lang/String;
    :goto_1
    new-instance v5, Lcom/dropbox/core/DbxWebAuth$ProviderException;

    invoke-direct {v5, v3}, Lcom/dropbox/core/DbxWebAuth$ProviderException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 372
    .end local v3    # "exceptionMessage":Ljava/lang/String;
    :cond_9
    const-string v5, "%s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 374
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 379
    :cond_a
    invoke-direct {p0, v0, p1, v4}, Lcom/dropbox/core/DbxWebAuth;->finish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object v5

    return-object v5
.end method

.method public start(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "urlState"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->deprecatedRequest:Lcom/dropbox/core/DbxWebAuth$Request;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must use DbxWebAuth.authorize instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth;->deprecatedRequest:Lcom/dropbox/core/DbxWebAuth$Request;

    .line 221
    invoke-virtual {v0}, Lcom/dropbox/core/DbxWebAuth$Request;->copy()Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p1}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->withState(Ljava/lang/String;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->build()Lcom/dropbox/core/DbxWebAuth$Request;

    move-result-object v0

    .line 220
    invoke-direct {p0, v0}, Lcom/dropbox/core/DbxWebAuth;->authorizeImpl(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
