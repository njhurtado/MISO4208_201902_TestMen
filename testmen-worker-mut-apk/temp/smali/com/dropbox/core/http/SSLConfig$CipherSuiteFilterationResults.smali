.class final Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;
.super Ljava/lang/Object;
.source "SSLConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/SSLConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CipherSuiteFilterationResults"
.end annotation


# instance fields
.field private final enabled:[Ljava/lang/String;

.field private final supported:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "supported"    # [Ljava/lang/String;
    .param p2, "enabled"    # [Ljava/lang/String;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->supported:[Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->enabled:[Ljava/lang/String;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->supported:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->enabled:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getEnabled()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->enabled:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupported()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->supported:[Ljava/lang/String;

    return-object v0
.end method
