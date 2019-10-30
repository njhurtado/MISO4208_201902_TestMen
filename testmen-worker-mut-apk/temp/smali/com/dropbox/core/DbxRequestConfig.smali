.class public Lcom/dropbox/core/DbxRequestConfig;
.super Ljava/lang/Object;
.source "DbxRequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxRequestConfig$Builder;
    }
.end annotation


# instance fields
.field private final clientIdentifier:Ljava/lang/String;

.field private final httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

.field private final maxRetries:I

.field private final userLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientIdentifier"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clientIdentifier"    # Ljava/lang/String;
    .param p2, "userLocale"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/dropbox/core/http/StandardHttpRequestor;->INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor;

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;)V
    .locals 1
    .param p1, "clientIdentifier"    # Ljava/lang/String;
    .param p2, "userLocale"    # Ljava/lang/String;
    .param p3, "httpRequestor"    # Lcom/dropbox/core/http/HttpRequestor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V
    .locals 2
    .param p1, "clientIdentifier"    # Ljava/lang/String;
    .param p2, "userLocale"    # Ljava/lang/String;
    .param p3, "httpRequestor"    # Lcom/dropbox/core/http/HttpRequestor;
    .param p4, "maxRetries"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "clientIdentifier"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "httpRequestor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    if-gez p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxRetries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig;->clientIdentifier:Ljava/lang/String;

    .line 26
    invoke-static {p2}, Lcom/dropbox/core/DbxRequestConfig;->toLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->userLocale:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/dropbox/core/DbxRequestConfig;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    .line 28
    iput p4, p0, Lcom/dropbox/core/DbxRequestConfig;->maxRetries:I

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;ILcom/dropbox/core/DbxRequestConfig$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/dropbox/core/http/HttpRequestor;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/dropbox/core/DbxRequestConfig$1;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V

    return-void
.end method

.method static synthetic access$200(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Locale;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/dropbox/core/DbxRequestConfig;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 2
    .param p0, "clientIdentifier"    # Ljava/lang/String;

    .prologue
    .line 188
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "clientIdentifier"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    new-instance v0, Lcom/dropbox/core/DbxRequestConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;Lcom/dropbox/core/DbxRequestConfig$1;)V

    return-object v0
.end method

.method private static toLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    .line 213
    if-nez p0, :cond_1

    .line 214
    const/4 p0, 0x0

    .line 234
    .end local p0    # "locale":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 217
    .restart local p0    # "locale":Ljava/lang/String;
    :cond_1
    const-string v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    const-string v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    const-string v4, "_"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 231
    .local v1, "lang":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v0, v2, v4

    .line 232
    .local v0, "country":Ljava/lang/String;
    array-length v4, v2

    if-ne v4, v5, :cond_2

    const/4 v4, 0x2

    aget-object v3, v2, v4

    .line 234
    .local v3, "variant":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/dropbox/core/DbxRequestConfig;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 232
    .end local v3    # "variant":Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method private static toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 194
    if-nez p0, :cond_0

    .line 195
    const/4 v1, 0x0

    .line 206
    :goto_0
    return-object v1

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v0, "tag":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 6

    .prologue
    .line 174
    new-instance v0, Lcom/dropbox/core/DbxRequestConfig$Builder;

    iget-object v1, p0, Lcom/dropbox/core/DbxRequestConfig;->clientIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxRequestConfig;->userLocale:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxRequestConfig;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    iget v4, p0, Lcom/dropbox/core/DbxRequestConfig;->maxRetries:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;ILcom/dropbox/core/DbxRequestConfig$1;)V

    return-object v0
.end method

.method public getClientIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->clientIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpRequestor()Lcom/dropbox/core/http/HttpRequestor;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    return-object v0
.end method

.method public getMaxRetries()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/dropbox/core/DbxRequestConfig;->maxRetries:I

    return v0
.end method

.method public getUserLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->userLocale:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoRetryEnabled()Z
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/dropbox/core/DbxRequestConfig;->maxRetries:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
