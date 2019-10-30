.class Lcom/dropbox/core/v2/sharing/ShareFolderArg;
.super Ljava/lang/Object;
.source "ShareFolderArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;,
        Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    }
.end annotation


# instance fields
.field protected final aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field protected final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation
.end field

.field protected final forceAsync:Z

.field protected final linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

.field protected final memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final path:Ljava/lang/String;

.field protected final sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field protected final viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 96
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/ShareFolderArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;ZLjava/util/List;Lcom/dropbox/core/v2/sharing/LinkSettings;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;ZLjava/util/List;Lcom/dropbox/core/v2/sharing/LinkSettings;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "memberPolicy"    # Lcom/dropbox/core/v2/sharing/MemberPolicy;
    .param p3, "aclUpdatePolicy"    # Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    .param p4, "sharedLinkPolicy"    # Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    .param p5, "forceAsync"    # Z
    .param p7, "linkSettings"    # Lcom/dropbox/core/v2/sharing/LinkSettings;
    .param p8, "viewerInfoPolicy"    # Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/MemberPolicy;",
            "Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;",
            "Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkSettings;",
            "Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p6, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FolderAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'path\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    const-string v1, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'path\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->path:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 68
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 69
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 70
    iput-boolean p5, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->forceAsync:Z

    .line 71
    if-eqz p6, :cond_3

    .line 72
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 73
    .local v0, "x":Lcom/dropbox/core/v2/sharing/FolderAction;
    if-nez v0, :cond_2

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'actions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_3
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    .line 79
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 80
    iput-object p8, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 81
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 191
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    if-ne p1, p0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v1

    .line 370
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v0, p1

    .line 371
    check-cast v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;

    .line 372
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ShareFolderArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->path:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 373
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/MemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 374
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 375
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_5
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->forceAsync:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->forceAsync:Z

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    .line 377
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 378
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/LinkSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 379
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_8
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/ShareFolderArg;
    :cond_9
    move v1, v2

    .line 383
    goto/16 :goto_0
.end method

.method public getAclUpdatePolicy()Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getForceAsync()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->forceAsync:Z

    return v0
.end method

.method public getLinkSettings()Lcom/dropbox/core/v2/sharing/LinkSettings;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    return-object v0
.end method

.method public getMemberPolicy()Lcom/dropbox/core/v2/sharing/MemberPolicy;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedLinkPolicy()Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    return-object v0
.end method

.method public getViewerInfoPolicy()Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 351
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->forceAsync:Z

    .line 356
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->actions:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    aput-object v3, v1, v2

    .line 351
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 361
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
