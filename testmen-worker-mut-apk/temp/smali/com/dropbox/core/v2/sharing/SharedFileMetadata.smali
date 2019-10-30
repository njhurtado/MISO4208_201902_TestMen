.class public Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
.super Ljava/lang/Object;
.source "SharedFileMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;,
        Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    }
.end annotation


# instance fields
.field protected final id:Ljava/lang/String;

.field protected final linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

.field protected final name:Ljava/lang/String;

.field protected final ownerTeam:Lcom/dropbox/core/v2/users/Team;

.field protected final parentSharedFolderId:Ljava/lang/String;

.field protected final pathDisplay:Ljava/lang/String;

.field protected final pathLower:Ljava/lang/String;

.field protected final permissions:Ljava/util/List;
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

.field protected final timeInvited:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "policy"    # Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .param p2, "previewUrl"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v11}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;-><init>(Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 3
    .param p1, "policy"    # Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .param p2, "previewUrl"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "linkMetadata"    # Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .param p7, "ownerTeam"    # Lcom/dropbox/core/v2/users/Team;
    .param p8, "parentSharedFolderId"    # Ljava/lang/String;
    .param p9, "pathLower"    # Ljava/lang/String;
    .param p10, "pathDisplay"    # Ljava/lang/String;
    .param p11, "timeInvited"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/FolderPolicy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FilePermission;",
            ">;",
            "Lcom/dropbox/core/v2/users/Team;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p6, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FilePermission;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'policy\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .line 87
    if-eqz p6, :cond_2

    .line 88
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FilePermission;

    .line 89
    .local v0, "x":Lcom/dropbox/core/v2/sharing/FilePermission;
    if-nez v0, :cond_1

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'permissions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/FilePermission;
    :cond_2
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    .line 95
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 96
    if-eqz p8, :cond_3

    .line 97
    const-string v1, "[-_0-9a-zA-Z:]+"

    invoke-static {v1, p8}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_3
    iput-object p8, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    .line 102
    if-nez p2, :cond_4

    .line 103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'previewUrl\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    .line 106
    iput-object p9, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    .line 107
    iput-object p10, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    .line 108
    if-nez p3, :cond_5

    .line 109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'name\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_5
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    .line 112
    if-nez p4, :cond_6

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'id\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_6
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_7

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'id\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_7
    const-string v1, "id:.*"

    invoke-static {v1, p4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'id\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_8
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    .line 122
    invoke-static {p11}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    .line 123
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 1
    .param p0, "policy"    # Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .param p1, "previewUrl"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 273
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;-><init>(Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 475
    if-ne p1, p0, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v1

    .line 479
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v0, p1

    .line 480
    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;

    .line 481
    .local v0, "other":Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/FolderPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    .line 482
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    .line 483
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    .line 484
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 485
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_6
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    .line 486
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_7
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 487
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/users/Team;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_8
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    .line 488
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_9
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    .line 489
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    .line 490
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    .line 491
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_c
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    :cond_d
    move v1, v2

    .line 495
    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkMetadata()Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerTeam()Lcom/dropbox/core/v2/users/Team;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    return-object v0
.end method

.method public getParentSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FilePermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getPolicy()Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeInvited()Ljava/util/Date;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 457
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 470
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 501
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 513
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
