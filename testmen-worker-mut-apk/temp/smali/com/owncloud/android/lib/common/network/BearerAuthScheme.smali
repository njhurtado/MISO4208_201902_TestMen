.class public Lcom/owncloud/android/lib/common/network/BearerAuthScheme;
.super Ljava/lang/Object;
.source "BearerAuthScheme.java"

# interfaces
.implements Lorg/apache/commons/httpclient/auth/AuthScheme;


# static fields
.field public static final AUTH_POLICY:Ljava/lang/String; = "Bearer"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComplete:Z

.field private mParams:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->mParams:Ljava/util/Map;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->mComplete:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->mParams:Ljava/util/Map;

    .line 78
    invoke-virtual {p0, p1}, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->processChallenge(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->mComplete:Z

    .line 80
    return-void
.end method

.method public static authenticate(Lcom/owncloud/android/lib/common/network/BearerCredentials;)Ljava/lang/String;
    .locals 1
    .param p0, "credentials"    # Lcom/owncloud/android/lib/common/network/BearerCredentials;

    .prologue
    .line 196
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->authenticate(Lcom/owncloud/android/lib/common/network/BearerCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static authenticate(Lcom/owncloud/android/lib/common/network/BearerCredentials;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "credentials"    # Lcom/owncloud/android/lib/common/network/BearerCredentials;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 211
    sget-object v1, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->TAG:Ljava/lang/String;

    const-string v2, "enter BearerAuthScheme.authenticate(BearerCredentials, String)"

    invoke-static {v1, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-nez p0, :cond_0

    .line 214
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Credentials may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 217
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "charset may not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/network/BearerCredentials;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public authenticate(Lorg/apache/commons/httpclient/Credentials;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "credentials"    # Lorg/apache/commons/httpclient/Credentials;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 132
    sget-object v3, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->TAG:Ljava/lang/String;

    const-string v4, "enter BearerScheme.authenticate(Credentials, String, String)"

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x0

    .line 136
    .local v1, "bearer":Lcom/owncloud/android/lib/common/network/BearerCredentials;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/owncloud/android/lib/common/network/BearerCredentials;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    invoke-static {v1}, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->authenticate(Lcom/owncloud/android/lib/common/network/BearerCredentials;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Credentials cannot be used for bearer authentication: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;
    .locals 6
    .param p1, "credentials"    # Lorg/apache/commons/httpclient/Credentials;
    .param p2, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 167
    sget-object v3, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->TAG:Ljava/lang/String;

    const-string v4, "enter BearerScheme.authenticate(Credentials, HttpMethod)"

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-nez p2, :cond_0

    .line 170
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Method may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    :cond_0
    const/4 v1, 0x0

    .line 174
    .local v1, "bearer":Lcom/owncloud/android/lib/common/network/BearerCredentials;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/owncloud/android/lib/common/network/BearerCredentials;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getCredentialCharset()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {v1, v3}, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->authenticate(Lcom/owncloud/android/lib/common/network/BearerCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Credentials cannot be used for bearer authentication: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->mParams:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 263
    const/4 v0, 0x0

    .line 265
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->mParams:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "bearer"

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->mComplete:Z

    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public processChallenge(Ljava/lang/String;)V
    .locals 4
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p1}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->extractScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " challenge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->extractParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->mParams:Ljava/util/Map;

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/owncloud/android/lib/common/network/BearerAuthScheme;->mComplete:Z

    .line 106
    return-void
.end method
