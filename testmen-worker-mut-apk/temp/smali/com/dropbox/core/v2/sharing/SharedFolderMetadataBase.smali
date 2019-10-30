.class public Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;
.super Ljava/lang/Object;
.source "SharedFolderMetadataBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Serializer;,
        Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    }
.end annotation


# instance fields
.field protected final accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final isInsideTeamFolder:Z

.field protected final isTeamFolder:Z

.field protected final ownerTeam:Lcom/dropbox/core/v2/users/Team;

.field protected final parentSharedFolderId:Ljava/lang/String;

.field protected final pathLower:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZ)V
    .locals 7
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "isInsideTeamFolder"    # Z
    .param p3, "isTeamFolder"    # Z

    .prologue
    const/4 v4, 0x0

    .line 88
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "isInsideTeamFolder"    # Z
    .param p3, "isTeamFolder"    # Z
    .param p4, "ownerTeam"    # Lcom/dropbox/core/v2/users/Team;
    .param p5, "parentSharedFolderId"    # Ljava/lang/String;
    .param p6, "pathLower"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'accessType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 60
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isInsideTeamFolder:Z

    .line 61
    iput-boolean p3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isTeamFolder:Z

    .line 62
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 63
    if-eqz p5, :cond_1

    .line 64
    const-string v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZ)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 1
    .param p0, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p1, "isInsideTeamFolder"    # Z
    .param p2, "isTeamFolder"    # Z

    .prologue
    .line 165
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    if-ne p1, p0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v1

    .line 270
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 271
    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;

    .line 272
    .local v0, "other":Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isInsideTeamFolder:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isInsideTeamFolder:Z

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isTeamFolder:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isTeamFolder:Z

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 275
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/users/Team;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    .line 276
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    .line 277
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;
    :cond_6
    move v1, v2

    .line 281
    goto :goto_0
.end method

.method public getAccessType()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getIsInsideTeamFolder()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isInsideTeamFolder:Z

    return v0
.end method

.method public getIsTeamFolder()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isTeamFolder:Z

    return v0
.end method

.method public getOwnerTeam()Lcom/dropbox/core/v2/users/Team;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    return-object v0
.end method

.method public getParentSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 253
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isInsideTeamFolder:Z

    .line 255
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isTeamFolder:Z

    .line 256
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 253
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 261
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
