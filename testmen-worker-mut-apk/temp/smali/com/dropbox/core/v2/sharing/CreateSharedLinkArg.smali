.class Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
.super Ljava/lang/Object;
.source "CreateSharedLinkArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;,
        Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;
    }
.end annotation


# instance fields
.field protected final path:Ljava/lang/String;

.field protected final pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

.field protected final shortUrl:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;-><init>(Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/PendingUploadMode;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/PendingUploadMode;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "shortUrl"    # Z
    .param p3, "pendingUpload"    # Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    .line 44
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->shortUrl:Z

    .line 45
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    .line 46
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    if-ne p1, p0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 188
    check-cast v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;

    .line 189
    .local v0, "other":Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->shortUrl:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->shortUrl:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    .line 191
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/PendingUploadMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
    :cond_4
    move v1, v2

    .line 195
    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingUpload()Lcom/dropbox/core/v2/sharing/PendingUploadMode;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    return-object v0
.end method

.method public getShortUrl()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->shortUrl:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 173
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->shortUrl:Z

    .line 175
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->pendingUpload:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    aput-object v3, v1, v2

    .line 173
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 178
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
