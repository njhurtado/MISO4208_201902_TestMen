.class public final Lcom/dropbox/core/DbxRequestUtil;
.super Ljava/lang/Object;
.source "DbxRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxRequestUtil$RequestMaker;,
        Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;
    }
.end annotation


# static fields
.field private static final RAND:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxRequestUtil;->RAND:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAuthHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "accessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "accessToken"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .restart local p0    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    :cond_1
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object p0
.end method

.method public static addBasicAuthHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "username"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "password"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .restart local p0    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "credentials":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/util/StringUtil;->stringToUtf8(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/util/StringUtil;->base64Encode([B)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "base64Credentials":Ljava/lang/String;
    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Basic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-object p0
.end method

.method public static addSelectUserHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "memberId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "memberId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .restart local p0    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    :cond_1
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v1, "Dropbox-API-Select-User"

    invoke-direct {v0, v1, p1}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object p0
.end method

.method public static addUserAgentHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p2, "sdkUserAgentIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .restart local p0    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    :cond_0
    invoke-static {p1, p2}, Lcom/dropbox/core/DbxRequestUtil;->buildUserAgentHeader(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Lcom/dropbox/core/http/HttpRequestor$Header;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-object p0
.end method

.method public static addUserLocaleHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;)Ljava/util/List;
    .locals 3
    .param p1, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/DbxRequestConfig;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    invoke-virtual {p1}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-object p0

    .line 140
    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .restart local p0    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    :cond_1
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v1, "Dropbox-API-User-Locale"

    invoke-virtual {p1}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static buildUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 61
    :try_start_0
    new-instance v1, Ljava/net/URI;

    const-string v2, "https"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, p0, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI creation failed, host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static buildUrlWithParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userLocale"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/dropbox/core/DbxRequestUtil;->buildUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p3}, Lcom/dropbox/core/DbxRequestUtil;->encodeUrlParams(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildUserAgentHeader(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Lcom/dropbox/core/http/HttpRequestor$Header;
    .locals 4
    .param p0, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p1, "sdkUserAgentIdentifier"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dropbox/core/DbxRequestConfig;->getClientIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/dropbox/core/DbxSdkVersion;->Version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static copyHeaders(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    if-nez p0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static doGet(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;
    .locals 10
    .param p0, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "sdkUserAgentIdentifier"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 346
    .local p6, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    .local p7, "handler":Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;, "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler<TT;>;"
    invoke-virtual {p0}, Lcom/dropbox/core/DbxRequestConfig;->getMaxRetries()I

    move-result v9

    new-instance v0, Lcom/dropbox/core/DbxRequestUtil$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/DbxRequestUtil$1;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)V

    invoke-static {v9, v0}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doPost(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;
    .locals 7
    .param p0, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "sdkUserAgentIdentifier"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 373
    .local p6, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    .local p7, "handler":Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;, "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler<TT;>;"
    invoke-static {p6}, Lcom/dropbox/core/DbxRequestUtil;->copyHeaders(Ljava/util/List;)Ljava/util/List;

    move-result-object p6

    .line 374
    invoke-static {p6, p1}, Lcom/dropbox/core/DbxRequestUtil;->addAuthHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 375
    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;
    .locals 9
    .param p0, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p1, "sdkUserAgentIdentifier"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 386
    .local p5, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    .local p6, "handler":Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;, "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler<TT;>;"
    invoke-virtual {p0}, Lcom/dropbox/core/DbxRequestConfig;->getMaxRetries()I

    move-result v8

    new-instance v0, Lcom/dropbox/core/DbxRequestUtil$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/DbxRequestUtil$2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)V

    invoke-static {v8, v0}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static encodeUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, "UTF-8 should always be supported"

    invoke-static {v1, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static encodeUrlParams(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "userLocale"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 72
    .local v3, "sep":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 73
    const-string v5, "locale="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "&"

    .line 77
    :cond_0
    if-eqz p1, :cond_4

    .line 78
    array-length v5, p1

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 79
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'params.length\' is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; expecting a multiple of two"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 81
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_4

    .line 82
    aget-object v2, p1, v1

    .line 83
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    aget-object v4, p1, v5

    .line 84
    .local v4, "value":Ljava/lang/String;
    if-nez v2, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "params["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    :cond_2
    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    .line 87
    invoke-static {v2}, Lcom/dropbox/core/DbxRequestUtil;->encodeUrlParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {v4}, Lcom/dropbox/core/DbxRequestUtil;->encodeUrlParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_3
    add-int/lit8 v1, v1, 0x2

    .line 92
    goto :goto_0

    .line 95
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static finishResponse(Lcom/dropbox/core/http/HttpRequestor$Response;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;
    .locals 2
    .param p0, "response"    # Lcom/dropbox/core/http/HttpRequestor$Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/http/HttpRequestor$Response;",
            "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "handler":Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;, "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler<TT;>;"
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;->handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 399
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    throw v0
.end method

.method public static getFirstHeader(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "response"    # Lcom/dropbox/core/http/HttpRequestor$Response;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/BadResponseException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 405
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    :cond_0
    new-instance v1, Lcom/dropbox/core/BadResponseException;

    invoke-static {p0}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing HTTP header \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 408
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static getFirstHeaderMaybe(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Lcom/dropbox/core/http/HttpRequestor$Response;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 413
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    :cond_0
    const/4 v1, 0x0

    .line 416
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;
    .locals 1
    .param p0, "response"    # Lcom/dropbox/core/http/HttpRequestor$Response;

    .prologue
    .line 420
    const-string v0, "X-Dropbox-Request-Id"

    invoke-static {p0, v0}, Lcom/dropbox/core/DbxRequestUtil;->getFirstHeaderMaybe(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadErrorBody(Lcom/dropbox/core/http/HttpRequestor$Response;)[B
    .locals 3
    .param p0, "response"    # Lcom/dropbox/core/http/HttpRequestor$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/NetworkIOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 255
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 260
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/dropbox/core/util/IOUtil;->slurp(Ljava/io/InputStream;I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public static parseErrorBody(Ljava/lang/String;I[B)Ljava/lang/String;
    .locals 4
    .param p0, "requestId"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "body"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/BadResponseException;
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    invoke-static {p2}, Lcom/dropbox/core/util/StringUtil;->utf8ToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/nio/charset/CharacterCodingException;
    new-instance v1, Lcom/dropbox/core/BadResponseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got non-UTF8 response body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;
    .locals 5
    .param p1, "response"    # Lcom/dropbox/core/http/HttpRequestor$Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/json/JsonReader",
            "<TT;>;",
            "Lcom/dropbox/core/http/HttpRequestor$Response;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/BadResponseException;,
            Lcom/dropbox/core/NetworkIOException;
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "reader":Lcom/dropbox/core/json/JsonReader;, "Lcom/dropbox/core/json/JsonReader<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dropbox/core/json/JsonReader;->readFully(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "ex":Lcom/dropbox/core/json/JsonReadException;
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "requestId":Ljava/lang/String;
    new-instance v2, Lcom/dropbox/core/BadResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in response JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/json/JsonReadException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 328
    .end local v0    # "ex":Lcom/dropbox/core/json/JsonReadException;
    .end local v1    # "requestId":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 329
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v2, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public static runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;
    .locals 8
    .param p0, "maxRetries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(I",
            "Lcom/dropbox/core/DbxRequestUtil$RequestMaker",
            "<TT;TE;>;)TT;^",
            "Lcom/dropbox/core/DbxException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 429
    .local p1, "requestMaker":Lcom/dropbox/core/DbxRequestUtil$RequestMaker;, "Lcom/dropbox/core/DbxRequestUtil$RequestMaker<TT;TE;>;"
    const/4 v3, 0x0

    .line 432
    .local v3, "numRetries":I
    :goto_0
    const/4 v4, 0x0

    .line 434
    .local v4, "thrown":Lcom/dropbox/core/DbxException;
    :try_start_0
    invoke-virtual {p1}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;->run()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/RetryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dropbox/core/ServerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    return-object v5

    .line 435
    :catch_0
    move-exception v2

    .line 436
    .local v2, "ex":Lcom/dropbox/core/RetryException;
    invoke-virtual {v2}, Lcom/dropbox/core/RetryException;->getBackoffMillis()J

    move-result-wide v0

    .line 437
    .local v0, "backoff":J
    move-object v4, v2

    .line 443
    .end local v2    # "ex":Lcom/dropbox/core/RetryException;
    :goto_1
    if-lt v3, p0, :cond_0

    .line 444
    throw v4

    .line 438
    .end local v0    # "backoff":J
    :catch_1
    move-exception v2

    .line 439
    .local v2, "ex":Lcom/dropbox/core/ServerException;
    const-wide/16 v0, 0x0

    .line 440
    .restart local v0    # "backoff":J
    move-object v4, v2

    goto :goto_1

    .line 449
    .end local v2    # "ex":Lcom/dropbox/core/ServerException;
    :cond_0
    sget-object v5, Lcom/dropbox/core/DbxRequestUtil;->RAND:Ljava/util/Random;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 451
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    .line 453
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 460
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 461
    goto :goto_0

    .line 454
    :catch_2
    move-exception v2

    .line 456
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2
.end method

.method public static startGet(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 3
    .param p0, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "sdkUserAgentIdentifier"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/HttpRequestor$Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/NetworkIOException;
        }
    .end annotation

    .prologue
    .line 160
    .local p6, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    invoke-static {p6}, Lcom/dropbox/core/DbxRequestUtil;->copyHeaders(Ljava/util/List;)Ljava/util/List;

    move-result-object p6

    .line 161
    invoke-static {p6, p0, p2}, Lcom/dropbox/core/DbxRequestUtil;->addUserAgentHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Ljava/util/List;

    move-result-object p6

    .line 162
    invoke-static {p6, p1}, Lcom/dropbox/core/DbxRequestUtil;->addAuthHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p6

    .line 164
    invoke-virtual {p0}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3, p4, p5}, Lcom/dropbox/core/DbxRequestUtil;->buildUrlWithParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/DbxRequestConfig;->getHttpRequestor()Lcom/dropbox/core/http/HttpRequestor;

    move-result-object v2

    invoke-virtual {v2, v1, p6}, Lcom/dropbox/core/http/HttpRequestor;->doGet(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v2, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public static startPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 6
    .param p0, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p1, "sdkUserAgentIdentifier"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/HttpRequestor$Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/NetworkIOException;
        }
    .end annotation

    .prologue
    .line 206
    .local p5, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    invoke-virtual {p0}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/dropbox/core/DbxRequestUtil;->encodeUrlParams(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->stringToUtf8(Ljava/lang/String;)[B

    move-result-object v4

    .line 208
    .local v4, "encodedParams":[B
    invoke-static {p5}, Lcom/dropbox/core/DbxRequestUtil;->copyHeaders(Ljava/util/List;)Ljava/util/List;

    move-result-object p5

    .line 209
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 211
    invoke-static/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestUtil;->startPostRaw(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    return-object v0
.end method

.method public static startPostRaw(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 6
    .param p0, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p1, "sdkUserAgentIdentifier"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "body"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/HttpRequestor$Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/NetworkIOException;
        }
    .end annotation

    .prologue
    .line 225
    .local p5, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    invoke-static {p2, p3}, Lcom/dropbox/core/DbxRequestUtil;->buildUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "uri":Ljava/lang/String;
    invoke-static {p5}, Lcom/dropbox/core/DbxRequestUtil;->copyHeaders(Ljava/util/List;)Ljava/util/List;

    move-result-object p5

    .line 228
    invoke-static {p5, p0, p1}, Lcom/dropbox/core/DbxRequestUtil;->addUserAgentHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Ljava/util/List;

    move-result-object p5

    .line 229
    new-instance v3, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v4, "Content-Length"

    array-length v5, p4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/DbxRequestConfig;->getHttpRequestor()Lcom/dropbox/core/http/HttpRequestor;

    move-result-object v3

    invoke-virtual {v3, v2, p5}, Lcom/dropbox/core/http/HttpRequestor;->startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 234
    .local v1, "uploader":Lcom/dropbox/core/http/HttpRequestor$Uploader;
    :try_start_1
    invoke-virtual {v1, p4}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->upload([B)V

    .line 235
    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 237
    :try_start_2
    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->close()V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 239
    .end local v1    # "uploader":Lcom/dropbox/core/http/HttpRequestor$Uploader;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "ex":Ljava/io/IOException;
    new-instance v3, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v3, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method

.method public static startPut(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 3
    .param p0, "requestConfig"    # Lcom/dropbox/core/DbxRequestConfig;
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "sdkUserAgentIdentifier"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/HttpRequestor$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/NetworkIOException;
        }
    .end annotation

    .prologue
    .line 183
    .local p6, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    invoke-static {p6}, Lcom/dropbox/core/DbxRequestUtil;->copyHeaders(Ljava/util/List;)Ljava/util/List;

    move-result-object p6

    .line 184
    invoke-static {p6, p0, p2}, Lcom/dropbox/core/DbxRequestUtil;->addUserAgentHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Ljava/util/List;

    move-result-object p6

    .line 185
    invoke-static {p6, p1}, Lcom/dropbox/core/DbxRequestUtil;->addAuthHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p6

    .line 187
    invoke-virtual {p0}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3, p4, p5}, Lcom/dropbox/core/DbxRequestUtil;->buildUrlWithParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/DbxRequestConfig;->getHttpRequestor()Lcom/dropbox/core/http/HttpRequestor;

    move-result-object v2

    invoke-virtual {v2, v1, p6}, Lcom/dropbox/core/http/HttpRequestor;->startPut(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v2, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method static toParamsArray(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 50
    .local v0, "arr":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 51
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 53
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v5

    .line 54
    add-int/lit8 v2, v2, 0x2

    .line 55
    goto :goto_0

    .line 56
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method public static unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;
    .locals 10
    .param p0, "response"    # Lcom/dropbox/core/http/HttpRequestor$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/NetworkIOException;,
            Lcom/dropbox/core/BadResponseException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-static {p0}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "requestId":Ljava/lang/String;
    invoke-static {p0}, Lcom/dropbox/core/DbxRequestUtil;->loadErrorBody(Lcom/dropbox/core/http/HttpRequestor$Response;)[B

    move-result-object v7

    .line 283
    .local v7, "body":[B
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v1

    invoke-static {v2, v1, v7}, Lcom/dropbox/core/DbxRequestUtil;->parseErrorBody(Ljava/lang/String;I[B)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 313
    new-instance v1, Lcom/dropbox/core/BadResponseCodeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected HTTP status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 315
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v5

    invoke-direct {v1, v2, v4, v5}, Lcom/dropbox/core/BadResponseCodeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-object v1

    .line 287
    :sswitch_0
    new-instance v1, Lcom/dropbox/core/BadRequestException;

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :sswitch_1
    new-instance v1, Lcom/dropbox/core/InvalidAccessTokenException;

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/InvalidAccessTokenException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :sswitch_2
    :try_start_0
    const-string v1, "Retry-After"

    invoke-static {p0, v1}, Lcom/dropbox/core/DbxRequestUtil;->getFirstHeader(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 293
    .local v0, "backoffSecs":I
    new-instance v1, Lcom/dropbox/core/RateLimitException;

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/RateLimitException;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    .end local v0    # "backoffSecs":I
    :catch_0
    move-exception v8

    .line 295
    .local v8, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/dropbox/core/BadResponseException;

    const-string v4, "Invalid value for HTTP header: \"Retry-After\""

    invoke-direct {v1, v2, v4}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :sswitch_3
    new-instance v1, Lcom/dropbox/core/ServerException;

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :sswitch_4
    const-string v1, "Retry-After"

    invoke-static {p0, v1}, Lcom/dropbox/core/DbxRequestUtil;->getFirstHeaderMaybe(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 303
    .local v9, "retryAfter":Ljava/lang/String;
    if-eqz v9, :cond_0

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 305
    .restart local v0    # "backoffSecs":I
    new-instance v1, Lcom/dropbox/core/RetryException;

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/RetryException;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 309
    .end local v0    # "backoffSecs":I
    :catch_1
    move-exception v8

    .line 310
    .restart local v8    # "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/dropbox/core/BadResponseException;

    const-string v4, "Invalid value for HTTP header: \"Retry-After\""

    invoke-direct {v1, v2, v4}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    :try_start_2
    new-instance v1, Lcom/dropbox/core/RetryException;

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/RetryException;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 285
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x1ad -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x1f7 -> :sswitch_4
    .end sparse-switch
.end method
