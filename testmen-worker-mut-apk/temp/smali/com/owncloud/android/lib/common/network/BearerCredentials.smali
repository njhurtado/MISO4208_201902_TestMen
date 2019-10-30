.class public Lcom/owncloud/android/lib/common/network/BearerCredentials;
.super Ljava/lang/Object;
.source "BearerCredentials.java"

# interfaces
.implements Lorg/apache/commons/httpclient/Credentials;


# instance fields
.field private mAccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "token":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/owncloud/android/lib/common/network/BearerCredentials;->mAccessToken:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 95
    check-cast v0, Lcom/owncloud/android/lib/common/network/BearerCredentials;

    .line 96
    .local v0, "that":Lcom/owncloud/android/lib/common/network/BearerCredentials;
    iget-object v3, p0, Lcom/owncloud/android/lib/common/network/BearerCredentials;->mAccessToken:Ljava/lang/String;

    iget-object v4, v0, Lcom/owncloud/android/lib/common/network/BearerCredentials;->mAccessToken:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 97
    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/BearerCredentials;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 79
    const/16 v0, 0x11

    .line 80
    .local v0, "hash":I
    iget-object v1, p0, Lcom/owncloud/android/lib/common/network/BearerCredentials;->mAccessToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 81
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/BearerCredentials;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method
