.class public Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
.super Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;
.source "SharedFolderMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;,
        Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    }
.end annotation


# instance fields
.field protected final linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

.field protected final name:Ljava/lang/String;

.field protected final permissions:Ljava/util/List;
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
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 14
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "isInsideTeamFolder"    # Z
    .param p3, "isTeamFolder"    # Z
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "policy"    # Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .param p6, "previewUrl"    # Ljava/lang/String;
    .param p7, "sharedFolderId"    # Ljava/lang/String;
    .param p8, "timeInvited"    # Ljava/util/Date;

    .prologue
    .line 137
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v13}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;)V
    .locals 9
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "isInsideTeamFolder"    # Z
    .param p3, "isTeamFolder"    # Z
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "policy"    # Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .param p6, "previewUrl"    # Ljava/lang/String;
    .param p7, "sharedFolderId"    # Ljava/lang/String;
    .param p8, "timeInvited"    # Ljava/util/Date;
    .param p9, "ownerTeam"    # Lcom/dropbox/core/v2/users/Team;
    .param p10, "parentSharedFolderId"    # Ljava/lang/String;
    .param p11, "pathLower"    # Ljava/lang/String;
    .param p12, "linkMetadata"    # Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/FolderPolicy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/dropbox/core/v2/users/Team;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderPermission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p13, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FolderPermission;>;"
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 78
    if-nez p4, :cond_0

    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'name\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    .line 82
    if-eqz p13, :cond_2

    .line 83
    invoke-interface/range {p13 .. p13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dropbox/core/v2/sharing/FolderPermission;

    .line 84
    .local v8, "x":Lcom/dropbox/core/v2/sharing/FolderPermission;
    if-nez v8, :cond_1

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'permissions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    .end local v8    # "x":Lcom/dropbox/core/v2/sharing/FolderPermission;
    :cond_2
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    .line 90
    if-nez p5, :cond_3

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'policy\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_3
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .line 94
    if-nez p6, :cond_4

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'previewUrl\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_4
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    .line 98
    if-nez p7, :cond_5

    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_5
    const-string v1, "[-_0-9a-zA-Z:]+"

    move-object/from16 v0, p7

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_6
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    .line 105
    if-nez p8, :cond_7

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'timeInvited\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_7
    invoke-static/range {p8 .. p8}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    .line 109
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 9
    .param p0, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p1, "isInsideTeamFolder"    # Z
    .param p2, "isTeamFolder"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "policy"    # Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .param p5, "previewUrl"    # Ljava/lang/String;
    .param p6, "sharedFolderId"    # Ljava/lang/String;
    .param p7, "timeInvited"    # Ljava/util/Date;

    .prologue
    .line 290
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 444
    if-ne p1, p0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v1

    .line 448
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v0, p1

    .line 449
    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    .line 450
    .local v0, "other":Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_2
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isInsideTeamFolder:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isInsideTeamFolder:Z

    if-ne v3, v4, :cond_c

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isTeamFolder:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isTeamFolder:Z

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    .line 453
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .line 454
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/FolderPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    .line 455
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_6
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    .line 457
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_7
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 458
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/users/Team;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_8
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    .line 459
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_9
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    .line 460
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 461
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    .line 462
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_c
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    :cond_d
    move v1, v2

    .line 466
    goto/16 :goto_0
.end method

.method public getAccessType()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getIsInsideTeamFolder()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isInsideTeamFolder:Z

    return v0
.end method

.method public getIsTeamFolder()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isTeamFolder:Z

    return v0
.end method

.method public getLinkMetadata()Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerTeam()Lcom/dropbox/core/v2/users/Team;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    return-object v0
.end method

.method public getParentSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getPolicy()Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeInvited()Ljava/util/Date;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 429
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 438
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 439
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 472
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 484
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
