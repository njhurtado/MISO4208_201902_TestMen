.class public final Lcom/dropbox/core/DbxRequestConfig$Builder;
.super Ljava/lang/Object;
.source "DbxRequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final clientIdentifier:Ljava/lang/String;

.field private httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

.field private maxRetries:I

.field private userLocale:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientIdentifier"    # Ljava/lang/String;

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->clientIdentifier:Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    .line 261
    sget-object v0, Lcom/dropbox/core/http/StandardHttpRequestor;->INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor;

    iput-object v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->maxRetries:I

    .line 263
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/dropbox/core/DbxRequestConfig$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/dropbox/core/DbxRequestConfig$1;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V
    .locals 0
    .param p1, "clientIdentifier"    # Ljava/lang/String;
    .param p2, "userLocale"    # Ljava/lang/String;
    .param p3, "httpRequestor"    # Lcom/dropbox/core/http/HttpRequestor;
    .param p4, "maxRetries"    # I

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->clientIdentifier:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    .line 253
    iput-object p3, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    .line 254
    iput p4, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->maxRetries:I

    .line 255
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
    .line 240
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/DbxRequestConfig;
    .locals 6

    .prologue
    .line 393
    new-instance v0, Lcom/dropbox/core/DbxRequestConfig;

    iget-object v1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->clientIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    iget v4, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->maxRetries:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;ILcom/dropbox/core/DbxRequestConfig$1;)V

    return-object v0
.end method

.method public withAutoRetryDisabled()Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->maxRetries:I

    .line 355
    return-object p0
.end method

.method public withAutoRetryEnabled()Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/dropbox/core/DbxRequestConfig$Builder;->withAutoRetryEnabled(I)Lcom/dropbox/core/DbxRequestConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withAutoRetryEnabled(I)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 2
    .param p1, "maxRetries"    # I

    .prologue
    .line 381
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxRetries must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    iput p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->maxRetries:I

    .line 383
    return-object p0
.end method

.method public withHttpRequestor(Lcom/dropbox/core/http/HttpRequestor;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 2
    .param p1, "httpRequestor"    # Lcom/dropbox/core/http/HttpRequestor;

    .prologue
    .line 322
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "httpRequestor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->httpRequestor:Lcom/dropbox/core/http/HttpRequestor;

    .line 324
    return-object p0
.end method

.method public withUserLocale(Ljava/lang/String;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 0
    .param p1, "userLocale"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    .line 279
    return-object p0
.end method

.method public withUserLocaleFrom(Ljava/util/Locale;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 1
    .param p1, "userLocale"    # Ljava/util/Locale;

    .prologue
    .line 308
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestConfig;->access$200(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    .line 309
    return-object p0
.end method

.method public withUserLocaleFromPreferences()Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/DbxRequestConfig$Builder;->userLocale:Ljava/lang/String;

    .line 293
    return-object p0
.end method
