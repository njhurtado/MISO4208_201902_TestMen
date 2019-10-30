.class public Lcom/dropbox/core/v2/files/UploadSessionStartResult;
.super Ljava/lang/Object;
.source "UploadSessionStartResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/UploadSessionStartResult$Serializer;
    }
.end annotation


# instance fields
.field protected final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'sessionId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/UploadSessionStartResult;->sessionId:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/dropbox/core/v2/files/UploadSessionStartResult;

    .line 70
    .local v0, "other":Lcom/dropbox/core/v2/files/UploadSessionStartResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionStartResult;->sessionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionStartResult;->sessionId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionStartResult;->sessionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionStartResult;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionStartResult;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 56
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionStartResult;->sessionId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 59
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionStartResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionStartResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionStartResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionStartResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionStartResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionStartResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
