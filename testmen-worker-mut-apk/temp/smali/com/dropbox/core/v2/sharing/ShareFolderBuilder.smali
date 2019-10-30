.class public Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;
.super Ljava/lang/Object;
.source "ShareFolderBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;)V
    .locals 2
    .param p1, "_client"    # Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;
    .param p2, "_builder"    # Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    .line 35
    if-nez p2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    .line 39
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ShareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->build()Lcom/dropbox/core/v2/sharing/ShareFolderArg;

    move-result-object v0

    .line 145
    .local v0, "arg_":Lcom/dropbox/core/v2/sharing/ShareFolderArg;
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->shareFolder(Lcom/dropbox/core/v2/sharing/ShareFolderArg;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    move-result-object v1

    return-object v1
.end method

.method public withAclUpdatePolicy(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;
    .locals 1
    .param p1, "aclUpdatePolicy"    # Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->withAclUpdatePolicy(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    .line 64
    return-object p0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FolderAction;>;"
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    .line 112
    return-object p0
.end method

.method public withForceAsync(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;
    .locals 1
    .param p1, "forceAsync"    # Ljava/lang/Boolean;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->withForceAsync(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    .line 93
    return-object p0
.end method

.method public withLinkSettings(Lcom/dropbox/core/v2/sharing/LinkSettings;)Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;
    .locals 1
    .param p1, "linkSettings"    # Lcom/dropbox/core/v2/sharing/LinkSettings;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->withLinkSettings(Lcom/dropbox/core/v2/sharing/LinkSettings;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    .line 124
    return-object p0
.end method

.method public withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;
    .locals 1
    .param p1, "memberPolicy"    # Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    .line 51
    return-object p0
.end method

.method public withSharedLinkPolicy(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;
    .locals 1
    .param p1, "sharedLinkPolicy"    # Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->withSharedLinkPolicy(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    .line 78
    return-object p0
.end method

.method public withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;
    .locals 1
    .param p1, "viewerInfoPolicy"    # Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;->withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    .line 137
    return-object p0
.end method
