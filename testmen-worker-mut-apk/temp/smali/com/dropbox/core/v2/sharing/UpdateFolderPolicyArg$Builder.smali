.class public Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
.super Ljava/lang/Object;
.source "UpdateFolderPolicyArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field protected linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

.field protected memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final sharedFolderId:Ljava/lang/String;

.field protected sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field protected viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    const-string v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->sharedFolderId:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 177
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 178
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 179
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 180
    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 181
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
    .locals 7

    .prologue
    .line 255
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->sharedFolderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/LinkSettings;)V

    return-object v0
.end method

.method public withAclUpdatePolicy(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 0
    .param p1, "aclUpdatePolicy"    # Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 206
    return-object p0
.end method

.method public withLinkSettings(Lcom/dropbox/core/v2/sharing/LinkSettings;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 0
    .param p1, "linkSettings"    # Lcom/dropbox/core/v2/sharing/LinkSettings;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 245
    return-object p0
.end method

.method public withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 0
    .param p1, "memberPolicy"    # Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 193
    return-object p0
.end method

.method public withSharedLinkPolicy(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 0
    .param p1, "sharedLinkPolicy"    # Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 233
    return-object p0
.end method

.method public withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 0
    .param p1, "viewerInfoPolicy"    # Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 219
    return-object p0
.end method
