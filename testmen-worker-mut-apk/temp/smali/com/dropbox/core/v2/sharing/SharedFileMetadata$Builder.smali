.class public Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
.super Ljava/lang/Object;
.source "SharedFileMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final id:Ljava/lang/String;

.field protected linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

.field protected final name:Ljava/lang/String;

.field protected ownerTeam:Lcom/dropbox/core/v2/users/Team;

.field protected parentSharedFolderId:Ljava/lang/String;

.field protected pathDisplay:Ljava/lang/String;

.field protected pathLower:Ljava/lang/String;

.field protected permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FilePermission;",
            ">;"
        }
    .end annotation
.end field

.field protected final policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

.field protected final previewUrl:Ljava/lang/String;

.field protected timeInvited:Ljava/util/Date;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "policy"    # Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .param p2, "previewUrl"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    if-nez p1, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'policy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .line 298
    if-nez p2, :cond_1

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'previewUrl\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->previewUrl:Ljava/lang/String;

    .line 302
    if-nez p3, :cond_2

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->name:Ljava/lang/String;

    .line 306
    if-nez p4, :cond_3

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'id\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'id\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_4
    const-string v0, "id:.*"

    invoke-static {v0, p4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'id\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_5
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->id:Ljava/lang/String;

    .line 316
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 317
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->permissions:Ljava/util/List;

    .line 318
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 319
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    .line 320
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->pathLower:Ljava/lang/String;

    .line 321
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->pathDisplay:Ljava/lang/String;

    .line 322
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->timeInvited:Ljava/util/Date;

    .line 323
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    .locals 12

    .prologue
    .line 451
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->previewUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->permissions:Ljava/util/List;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v8, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->pathLower:Ljava/lang/String;

    iget-object v10, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->pathDisplay:Ljava/lang/String;

    iget-object v11, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->timeInvited:Ljava/util/Date;

    invoke-direct/range {v0 .. v11}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;-><init>(Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public withLinkMetadata(Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 0
    .param p1, "linkMetadata"    # Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 335
    return-object p0
.end method

.method public withOwnerTeam(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 0
    .param p1, "ownerTeam"    # Lcom/dropbox/core/v2/users/Team;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 376
    return-object p0
.end method

.method public withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 2
    .param p1, "parentSharedFolderId"    # Ljava/lang/String;

    .prologue
    .line 392
    if-eqz p1, :cond_0

    .line 393
    const-string v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    .line 398
    return-object p0
.end method

.method public withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 0
    .param p1, "pathDisplay"    # Ljava/lang/String;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->pathDisplay:Ljava/lang/String;

    .line 426
    return-object p0
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 0
    .param p1, "pathLower"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->pathLower:Ljava/lang/String;

    .line 411
    return-object p0
.end method

.method public withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FilePermission;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FilePermission;>;"
    if-eqz p1, :cond_1

    .line 356
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FilePermission;

    .line 357
    .local v0, "x":Lcom/dropbox/core/v2/sharing/FilePermission;
    if-nez v0, :cond_0

    .line 358
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'permissions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/FilePermission;
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->permissions:Ljava/util/List;

    .line 363
    return-object p0
.end method

.method public withTimeInvited(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 1
    .param p1, "timeInvited"    # Ljava/util/Date;

    .prologue
    .line 440
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->timeInvited:Ljava/util/Date;

    .line 441
    return-object p0
.end method
