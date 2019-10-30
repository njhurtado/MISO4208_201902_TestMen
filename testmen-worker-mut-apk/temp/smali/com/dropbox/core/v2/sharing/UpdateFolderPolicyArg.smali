.class Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
.super Ljava/lang/Object;
.source "UpdateFolderPolicyArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;,
        Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    }
.end annotation


# instance fields
.field protected final aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field protected final linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

.field protected final memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field protected final sharedFolderId:Ljava/lang/String;

.field protected final sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field protected final viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "sharedFolderId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/LinkSettings;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/LinkSettings;)V
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .param p2, "memberPolicy"    # Lcom/dropbox/core/v2/sharing/MemberPolicy;
    .param p3, "aclUpdatePolicy"    # Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    .param p4, "viewerInfoPolicy"    # Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    .param p5, "sharedLinkPolicy"    # Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    .param p6, "linkSettings"    # Lcom/dropbox/core/v2/sharing/LinkSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    const-string v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 63
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 64
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 65
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 66
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 67
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    .locals 1
    .param p0, "sharedFolderId"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    if-ne p1, p0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v1

    .line 278
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 279
    check-cast v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;

    .line 280
    .local v0, "other":Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    .line 281
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/MemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 282
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 283
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 284
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    .line 285
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/LinkSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
    :cond_8
    move v1, v2

    .line 289
    goto/16 :goto_0
.end method

.method public getAclUpdatePolicy()Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    return-object v0
.end method

.method public getLinkSettings()Lcom/dropbox/core/v2/sharing/LinkSettings;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    return-object v0
.end method

.method public getMemberPolicy()Lcom/dropbox/core/v2/sharing/MemberPolicy;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    return-object v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedLinkPolicy()Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    return-object v0
.end method

.method public getViewerInfoPolicy()Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 261
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedFolderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->memberPolicy:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->aclUpdatePolicy:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->viewerInfoPolicy:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->sharedLinkPolicy:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->linkSettings:Lcom/dropbox/core/v2/sharing/LinkSettings;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 269
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
