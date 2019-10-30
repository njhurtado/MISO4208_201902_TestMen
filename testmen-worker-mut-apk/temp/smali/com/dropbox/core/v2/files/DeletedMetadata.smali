.class public Lcom/dropbox/core/v2/files/DeletedMetadata;
.super Lcom/dropbox/core/v2/files/Metadata;
.source "DeletedMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;,
        Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/dropbox/core/v2/files/DeletedMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pathLower"    # Ljava/lang/String;
    .param p3, "pathDisplay"    # Ljava/lang/String;
    .param p4, "parentSharedFolderId"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v2/files/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    if-ne p1, p0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 215
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 216
    check-cast v0, Lcom/dropbox/core/v2/files/DeletedMetadata;

    .line 217
    .local v0, "other":Lcom/dropbox/core/v2/files/DeletedMetadata;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeletedMetadata;->name:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeletedMetadata;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeletedMetadata;->pathLower:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->pathLower:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeletedMetadata;->pathLower:Ljava/lang/String;

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->pathDisplay:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeletedMetadata;->pathDisplay:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->pathDisplay:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->pathDisplay:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeletedMetadata;->pathDisplay:Ljava/lang/String;

    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeletedMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeletedMetadata;->parentSharedFolderId:Ljava/lang/String;

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/DeletedMetadata;
    :cond_6
    move v1, v2

    .line 224
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->parentSharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->pathDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeletedMetadata;->pathLower:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeletedMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
