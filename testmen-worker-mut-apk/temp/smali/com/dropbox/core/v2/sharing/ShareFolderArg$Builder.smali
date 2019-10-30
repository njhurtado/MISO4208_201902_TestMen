.class public Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
.super Ljava/lang/Object;
.source "ShareFolderArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ShareFolderArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field protected actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation
.end field

.field protected forceAsync:Z

.field protected linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

.field protected memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final path:Ljava/lang/String;

.field protected sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field protected viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    if-nez p1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    const-string v0, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->path:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 217
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 218
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->forceAsync:Z

    .line 220
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->actions:Ljava/util/List;

    .line 221
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 222
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 223
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/ShareFolderArg;
    .locals 9

    .prologue
    .line 345
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->forceAsync:Z

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->actions:Ljava/util/List;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v8, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/ShareFolderArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;ZLjava/util/List;Lcom/dropbox/core/v2/sharing/LinkSettings;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)V

    return-object v0
.end method

.method public withAclUpdatePolicy(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 0
    .param p1, "aclUpdatePolicy"    # Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 248
    return-object p0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FolderAction;>;"
    if-eqz p1, :cond_1

    .line 303
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 304
    .local v0, "x":Lcom/dropbox/core/v2/sharing/FolderAction;
    if-nez v0, :cond_0

    .line 305
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'actions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->actions:Ljava/util/List;

    .line 310
    return-object p0
.end method

.method public withForceAsync(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 1
    .param p1, "forceAsync"    # Ljava/lang/Boolean;

    .prologue
    .line 278
    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->forceAsync:Z

    .line 284
    :goto_0
    return-object p0

    .line 282
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->forceAsync:Z

    goto :goto_0
.end method

.method public withLinkSettings(Lcom/dropbox/core/v2/sharing/LinkSettings;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 0
    .param p1, "linkSettings"    # Lcom/dropbox/core/v2/sharing/LinkSettings;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 322
    return-object p0
.end method

.method public withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 0
    .param p1, "memberPolicy"    # Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 235
    return-object p0
.end method

.method public withSharedLinkPolicy(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 0
    .param p1, "sharedLinkPolicy"    # Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 262
    return-object p0
.end method

.method public withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    .locals 0
    .param p1, "viewerInfoPolicy"    # Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 335
    return-object p0
.end method
