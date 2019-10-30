.class public Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
.super Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
.source "SharedFolderMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

.field protected final name:Ljava/lang/String;

.field protected permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderPermission;",
            ">;"
        }
    .end annotation
.end field

.field protected final policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

.field protected final previewUrl:Ljava/lang/String;

.field protected final sharedFolderId:Ljava/lang/String;

.field protected final timeInvited:Ljava/util/Date;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "isInsideTeamFolder"    # Z
    .param p3, "isTeamFolder"    # Z
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "policy"    # Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .param p6, "previewUrl"    # Ljava/lang/String;
    .param p7, "sharedFolderId"    # Ljava/lang/String;
    .param p8, "timeInvited"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x0

    .line 307
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZ)V

    .line 308
    if-nez p4, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->name:Ljava/lang/String;

    .line 312
    if-nez p5, :cond_1

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'policy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_1
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .line 316
    if-nez p6, :cond_2

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'previewUrl\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_2
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->previewUrl:Ljava/lang/String;

    .line 320
    if-nez p7, :cond_3

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_3
    const-string v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_4
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->sharedFolderId:Ljava/lang/String;

    .line 327
    if-nez p8, :cond_5

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'timeInvited\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_5
    invoke-static {p8}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->timeInvited:Ljava/util/Date;

    .line 331
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 332
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->permissions:Ljava/util/List;

    .line 333
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 14

    .prologue
    .line 423
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->isInsideTeamFolder:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->isTeamFolder:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->previewUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->sharedFolderId:Ljava/lang/String;

    iget-object v8, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->timeInvited:Ljava/util/Date;

    iget-object v9, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v10, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    iget-object v11, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->pathLower:Ljava/lang/String;

    iget-object v12, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v13, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->permissions:Ljava/util/List;

    invoke-direct/range {v0 .. v13}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->build()Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method public withLinkMetadata(Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 0
    .param p1, "linkMetadata"    # Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 345
    return-object p0
.end method

.method public withOwnerTeam(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 0
    .param p1, "ownerTeam"    # Lcom/dropbox/core/v2/users/Team;

    .prologue
    .line 382
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->withOwnerTeam(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;

    .line 383
    return-object p0
.end method

.method public bridge synthetic withOwnerTeam(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->withOwnerTeam(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 0
    .param p1, "parentSharedFolderId"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;

    .line 400
    return-object p0
.end method

.method public bridge synthetic withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 0
    .param p1, "pathLower"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;

    .line 413
    return-object p0
.end method

.method public bridge synthetic withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderPermission;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FolderPermission;>;"
    if-eqz p1, :cond_1

    .line 363
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FolderPermission;

    .line 364
    .local v0, "x":Lcom/dropbox/core/v2/sharing/FolderPermission;
    if-nez v0, :cond_0

    .line 365
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'permissions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/FolderPermission;
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;->permissions:Ljava/util/List;

    .line 370
    return-object p0
.end method
