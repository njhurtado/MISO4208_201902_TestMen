.class public Lcom/dropbox/core/v2/files/FolderSharingInfo;
.super Lcom/dropbox/core/v2/files/SharingInfo;
.source "FolderSharingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;,
        Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;
    }
.end annotation


# instance fields
.field protected final noAccess:Z

.field protected final parentSharedFolderId:Ljava/lang/String;

.field protected final sharedFolderId:Ljava/lang/String;

.field protected final traverseOnly:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 6
    .param p1, "readOnly"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 82
    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/FolderSharingInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 83
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "readOnly"    # Z
    .param p2, "parentSharedFolderId"    # Ljava/lang/String;
    .param p3, "sharedFolderId"    # Ljava/lang/String;
    .param p4, "traverseOnly"    # Z
    .param p5, "noAccess"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/files/SharingInfo;-><init>(Z)V

    .line 56
    if-eqz p2, :cond_0

    .line 57
    const-string v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    .line 62
    if-eqz p3, :cond_1

    .line 63
    const-string v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->sharedFolderId:Ljava/lang/String;

    .line 68
    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->traverseOnly:Z

    .line 69
    iput-boolean p5, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->noAccess:Z

    .line 70
    return-void
.end method

.method public static newBuilder(Z)Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;
    .locals 1
    .param p0, "readOnly"    # Z

    .prologue
    .line 145
    new-instance v0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    if-ne p1, p0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v1

    .line 284
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 285
    check-cast v0, Lcom/dropbox/core/v2/files/FolderSharingInfo;

    .line 286
    .local v0, "other":Lcom/dropbox/core/v2/files/FolderSharingInfo;
    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->readOnly:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->readOnly:Z

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->sharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->sharedFolderId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->sharedFolderId:Ljava/lang/String;

    .line 288
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->traverseOnly:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->traverseOnly:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->noAccess:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->noAccess:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/FolderSharingInfo;
    :cond_5
    move v1, v2

    .line 294
    goto :goto_0
.end method

.method public getNoAccess()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->noAccess:Z

    return v0
.end method

.method public getParentSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->readOnly:Z

    return v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getTraverseOnly()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->traverseOnly:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 268
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->sharedFolderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->traverseOnly:Z

    .line 271
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo;->noAccess:Z

    .line 272
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 268
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 274
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/files/SharingInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 275
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    sget-object v0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/FolderSharingInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
