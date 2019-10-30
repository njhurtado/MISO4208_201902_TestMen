.class Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;
.super Ljava/lang/Object;
.source "TokenFromOAuth1Arg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg$Serializer;
    }
.end annotation


# instance fields
.field protected final oauth1Token:Ljava/lang/String;

.field protected final oauth1TokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oauth1Token"    # Ljava/lang/String;
    .param p2, "oauth1TokenSecret"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'oauth1Token\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'oauth1Token\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1Token:Ljava/lang/String;

    .line 42
    if-nez p2, :cond_2

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'oauth1TokenSecret\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'oauth1TokenSecret\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1TokenSecret:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-ne p1, p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;

    .line 86
    .local v0, "other":Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;
    iget-object v3, p0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1Token:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1Token:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1Token:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1Token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1TokenSecret:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1TokenSecret:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1TokenSecret:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1TokenSecret:Ljava/lang/String;

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;
    :cond_4
    move v1, v2

    .line 91
    goto :goto_0
.end method

.method public getOauth1Token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1Token:Ljava/lang/String;

    return-object v0
.end method

.method public getOauth1TokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1TokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 71
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1Token:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg;->oauth1TokenSecret:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 75
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Arg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
