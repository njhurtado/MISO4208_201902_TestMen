.class public Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;
.super Ljava/lang/Object;
.source "DbxUserSharingRequests.java"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0
    .param p1, "client"    # Lcom/dropbox/core/v2/DbxRawClientV2;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 34
    return-void
.end method


# virtual methods
.method addFileMember(Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;)Ljava/util/List;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileMemberActionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/add_file_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;

    .line 53
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;

    move-object v3, p1

    .line 48
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 56
    :catch_0
    move-exception v8

    .line 57
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;

    const-string v2, "2/sharing/add_file_member"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/AddFileMemberError;)V

    throw v1
.end method

.method public addFileMember(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberSelector;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileMemberActionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberSelector;>;"
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 81
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->addFileMember(Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public addFileMemberBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberSelector;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberSelector;>;"
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->newBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    move-result-object v0

    .line 104
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;
    new-instance v1, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;)V

    return-object v1
.end method

.method addFolderMember(Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/add_folder_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Serializer;

    .line 126
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;

    move-object v3, p1

    .line 121
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-void

    .line 129
    :catch_0
    move-exception v8

    .line 130
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberErrorException;

    const-string v2, "2/sharing/add_folder_member"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)V

    throw v1
.end method

.method public addFolderMember(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 154
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/AddMember;>;"
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 155
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->addFolderMember(Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;)V

    .line 156
    return-void
.end method

.method public addFolderMemberBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFolderMemberBuilder;
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/AddFolderMemberBuilder;"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/AddMember;>;"
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->newBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;

    move-result-object v0

    .line 179
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;)V

    return-object v1
.end method

.method changeFileMemberAccess(Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;)Lcom/dropbox/core/v2/sharing/FileMemberActionResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/change_file_member_access"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 206
    :catch_0
    move-exception v8

    .line 207
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;

    const-string v2, "2/sharing/change_file_member_access"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)V

    throw v1
.end method

.method public changeFileMemberAccess(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionResult;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "member"    # Lcom/dropbox/core/v2/sharing/MemberSelector;
    .param p3, "accessLevel"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 237
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->changeFileMemberAccess(Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;)Lcom/dropbox/core/v2/sharing/FileMemberActionResult;

    move-result-object v1

    return-object v1
.end method

.method checkJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/async/PollArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/check_job_status"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/JobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 261
    :catch_0
    move-exception v8

    .line 262
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string v2, "2/sharing/check_job_status"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/PollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v1
.end method

.method public checkJobStatus(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 2
    .param p1, "asyncJobId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "_arg":Lcom/dropbox/core/v2/async/PollArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->checkJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/JobStatus;

    move-result-object v1

    return-object v1
.end method

.method checkRemoveMemberJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/async/PollArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/check_remove_member_job_status"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 303
    :catch_0
    move-exception v8

    .line 304
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string v2, "2/sharing/check_remove_member_job_status"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/PollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v1
.end method

.method public checkRemoveMemberJobStatus(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 2
    .param p1, "asyncJobId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "_arg":Lcom/dropbox/core/v2/async/PollArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->checkRemoveMemberJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    move-result-object v1

    return-object v1
.end method

.method checkShareJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/async/PollArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/check_share_job_status"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 345
    :catch_0
    move-exception v8

    .line 346
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string v2, "2/sharing/check_share_job_status"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/PollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v1
.end method

.method public checkShareJobStatus(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 2
    .param p1, "asyncJobId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "_arg":Lcom/dropbox/core/v2/async/PollArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->checkShareJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    move-result-object v1

    return-object v1
.end method

.method createSharedLink(Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/create_shared_link"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 394
    :catch_0
    move-exception v8

    .line 395
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkErrorException;

    const-string v2, "2/sharing/create_shared_link"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;)V

    throw v1
.end method

.method public createSharedLink(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 426
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->createSharedLink(Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    move-result-object v1

    return-object v1
.end method

.method public createSharedLinkBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;

    move-result-object v0

    .line 456
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;)V

    return-object v1
.end method

.method createSharedLinkWithSettings(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/create_shared_link_with_settings"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 482
    :catch_0
    move-exception v8

    .line 483
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;

    const-string v2, "2/sharing/create_shared_link_with_settings"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;)V

    throw v1
.end method

.method public createSharedLinkWithSettings(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;-><init>(Ljava/lang/String;)V

    .line 504
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->createSharedLinkWithSettings(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object v1

    return-object v1
.end method

.method public createSharedLinkWithSettings(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 525
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)V

    .line 526
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->createSharedLinkWithSettings(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object v1

    return-object v1
.end method

.method getFileMetadata(Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/get_file_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 551
    :catch_0
    move-exception v8

    .line 552
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;

    const-string v2, "2/sharing/get_file_metadata"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/GetFileMetadataError;)V

    throw v1
.end method

.method public getFileMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 569
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;-><init>(Ljava/lang/String;)V

    .line 570
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getFileMetadata(Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;

    move-result-object v1

    return-object v1
.end method

.method public getFileMetadata(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    .locals 4
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/SharedFileMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 588
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FileAction;>;"
    if-eqz p2, :cond_1

    .line 589
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/FileAction;

    .line 590
    .local v1, "x":Lcom/dropbox/core/v2/sharing/FileAction;
    if-nez v1, :cond_0

    .line 591
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "An item in list \'actions\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 595
    .end local v1    # "x":Lcom/dropbox/core/v2/sharing/FileAction;
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 596
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getFileMetadata(Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;

    move-result-object v2

    return-object v2
.end method

.method getFileMetadataBatch(Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;)Ljava/util/List;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/get_file_metadata/batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;

    .line 616
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    move-object v3, p1

    .line 611
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 619
    :catch_0
    move-exception v8

    .line 620
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;

    const-string v2, "2/sharing/get_file_metadata/batch"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharingUserError;)V

    throw v1
.end method

.method public getFileMetadataBatch(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 634
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;-><init>(Ljava/util/List;)V

    .line 635
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getFileMetadataBatch(Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFileMetadataBatch(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 650
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FileAction;>;"
    if-eqz p2, :cond_1

    .line 651
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/FileAction;

    .line 652
    .local v1, "x":Lcom/dropbox/core/v2/sharing/FileAction;
    if-nez v1, :cond_0

    .line 653
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "An item in list \'actions\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    .end local v1    # "x":Lcom/dropbox/core/v2/sharing/FileAction;
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 658
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getFileMetadataBatch(Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method getFolderMetadata(Lcom/dropbox/core/v2/sharing/GetMetadataArgs;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/GetMetadataArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/get_folder_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/GetMetadataArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetMetadataArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 683
    :catch_0
    move-exception v8

    .line 684
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;

    const-string v2, "2/sharing/get_folder_metadata"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    throw v1
.end method

.method public getFolderMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 702
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;-><init>(Ljava/lang/String;)V

    .line 703
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/GetMetadataArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getFolderMetadata(Lcom/dropbox/core/v2/sharing/GetMetadataArgs;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v1

    return-object v1
.end method

.method public getFolderMetadata(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 4
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 724
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/FolderAction;>;"
    if-eqz p2, :cond_1

    .line 725
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 726
    .local v1, "x":Lcom/dropbox/core/v2/sharing/FolderAction;
    if-nez v1, :cond_0

    .line 727
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "An item in list \'actions\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 731
    .end local v1    # "x":Lcom/dropbox/core/v2/sharing/FolderAction;
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 732
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/GetMetadataArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getFolderMetadata(Lcom/dropbox/core/v2/sharing/GetMetadataArgs;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v2

    return-object v2
.end method

.method getSharedLinkFile(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 10
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinkFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 749
    .local p2, "_headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/get_shared_link_file"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    sget-object v8, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError$Serializer;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 758
    :catch_0
    move-exception v9

    .line 759
    .local v9, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileErrorException;

    const-string v2, "2/sharing/get_shared_link_file"

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;)V

    throw v1
.end method

.method public getSharedLinkFile(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinkFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 775
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;-><init>(Ljava/lang/String;)V

    .line 776
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getSharedLinkFile(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v1

    return-object v1
.end method

.method public getSharedLinkFileBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkFileBuilder;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 791
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    move-result-object v0

    .line 792
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;)V

    return-object v1
.end method

.method getSharedLinkMetadata(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 807
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/get_shared_link_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharedLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 815
    :catch_0
    move-exception v8

    .line 816
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;

    const-string v2, "2/sharing/get_shared_link_metadata"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharedLinkError;)V

    throw v1
.end method

.method public getSharedLinkMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 831
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;-><init>(Ljava/lang/String;)V

    .line 832
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getSharedLinkMetadata(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object v1

    return-object v1
.end method

.method public getSharedLinkMetadataBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 847
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    move-result-object v0

    .line 848
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;)V

    return-object v1
.end method

.method public getSharedLinks()Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 891
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;-><init>()V

    .line 892
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getSharedLinks(Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;)Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;

    move-result-object v1

    return-object v1
.end method

.method getSharedLinks(Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;)Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/get_shared_links"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/GetSharedLinksArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinksArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/GetSharedLinksResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinksResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 874
    :catch_0
    move-exception v8

    .line 875
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;

    const-string v2, "2/sharing/get_shared_links"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/GetSharedLinksError;)V

    throw v1
.end method

.method public getSharedLinks(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 910
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;-><init>(Ljava/lang/String;)V

    .line 911
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getSharedLinks(Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;)Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;

    move-result-object v1

    return-object v1
.end method

.method listFileMembers(Lcom/dropbox/core/v2/sharing/ListFileMembersArg;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFileMembersErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 933
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_file_members"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFileMembersError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 941
    :catch_0
    move-exception v8

    .line 942
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFileMembersErrorException;

    const-string v2, "2/sharing/list_file_members"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFileMembersError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFileMembersError;)V

    throw v1
.end method

.method public listFileMembers(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFileMembersErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 968
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;-><init>(Ljava/lang/String;)V

    .line 969
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFileMembers(Lcom/dropbox/core/v2/sharing/ListFileMembersArg;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    move-result-object v1

    return-object v1
.end method

.method listFileMembersBatch(Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;)Ljava/util/List;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1008
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_file_members/batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult$Serializer;

    .line 1013
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    move-object v3, p1

    .line 1008
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1016
    :catch_0
    move-exception v8

    .line 1017
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;

    const-string v2, "2/sharing/list_file_members/batch"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharingUserError;)V

    throw v1
.end method

.method public listFileMembersBatch(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1038
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;-><init>(Ljava/util/List;)V

    .line 1039
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFileMembersBatch(Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public listFileMembersBatch(Ljava/util/List;J)Ljava/util/List;
    .locals 4
    .param p2, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1058
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v2, 0x14

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 1059
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'limit\' is larger than 20L"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1061
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;-><init>(Ljava/util/List;J)V

    .line 1062
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFileMembersBatch(Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public listFileMembersBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 988
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

    move-result-object v0

    .line 989
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;)V

    return-object v1
.end method

.method listFileMembersContinue(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFileMembersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1086
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_file_members/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1094
    :catch_0
    move-exception v8

    .line 1095
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueErrorException;

    const-string v2, "2/sharing/list_file_members/continue"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;)V

    throw v1
.end method

.method public listFileMembersContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 2
    .param p1, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFileMembersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1121
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFileMembersContinue(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    move-result-object v1

    return-object v1
.end method

.method listFolderMembers(Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1138
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_folder_members"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1146
    :catch_0
    move-exception v8

    .line 1147
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;

    const-string v2, "2/sharing/list_folder_members"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    throw v1
.end method

.method public listFolderMembers(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1167
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFolderMembers(Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;

    move-result-object v1

    return-object v1
.end method

.method public listFolderMembersBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;

    .prologue
    .line 1185
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;

    move-result-object v0

    .line 1186
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;)V

    return-object v1
.end method

.method listFolderMembersContinue(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1204
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_folder_members/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1212
    :catch_0
    move-exception v8

    .line 1213
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException;

    const-string v2, "2/sharing/list_folder_members/continue"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;)V

    throw v1
.end method

.method public listFolderMembersContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 2
    .param p1, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1234
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg;-><init>(Ljava/lang/String;)V

    .line 1235
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFolderMembersContinue(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;

    move-result-object v1

    return-object v1
.end method

.method public listFolders()Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1280
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;-><init>()V

    .line 1281
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ListFoldersArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFolders(Lcom/dropbox/core/v2/sharing/ListFoldersArgs;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    move-result-object v1

    return-object v1
.end method

.method listFolders(Lcom/dropbox/core/v2/sharing/ListFoldersArgs;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ListFoldersArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1254
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_folders"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;

    .line 1260
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 1254
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1262
    :catch_0
    move-exception v8

    .line 1263
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"list_folders\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v0
.end method

.method public listFoldersBuilder()Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;
    .locals 2

    .prologue
    .line 1292
    invoke-static {}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->newBuilder()Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    move-result-object v0

    .line 1293
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;)V

    return-object v1
.end method

.method listFoldersContinue(Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1316
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_folders/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1324
    :catch_0
    move-exception v8

    .line 1325
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;

    const-string v2, "2/sharing/list_folders/continue"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;)V

    throw v1
.end method

.method public listFoldersContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 2
    .param p1, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1349
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;-><init>(Ljava/lang/String;)V

    .line 1350
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFoldersContinue(Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    move-result-object v1

    return-object v1
.end method

.method public listMountableFolders()Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1395
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;-><init>()V

    .line 1396
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ListFoldersArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listMountableFolders(Lcom/dropbox/core/v2/sharing/ListFoldersArgs;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    move-result-object v1

    return-object v1
.end method

.method listMountableFolders(Lcom/dropbox/core/v2/sharing/ListFoldersArgs;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ListFoldersArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1369
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_mountable_folders"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;

    .line 1375
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 1369
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1377
    :catch_0
    move-exception v8

    .line 1378
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"list_mountable_folders\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v0
.end method

.method public listMountableFoldersBuilder()Lcom/dropbox/core/v2/sharing/ListMountableFoldersBuilder;
    .locals 2

    .prologue
    .line 1407
    invoke-static {}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->newBuilder()Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    move-result-object v0

    .line 1408
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListMountableFoldersBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListMountableFoldersBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;)V

    return-object v1
.end method

.method listMountableFoldersContinue(Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1431
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_mountable_folders/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1439
    :catch_0
    move-exception v8

    .line 1440
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;

    const-string v2, "2/sharing/list_mountable_folders/continue"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;)V

    throw v1
.end method

.method public listMountableFoldersContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 2
    .param p1, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1464
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;-><init>(Ljava/lang/String;)V

    .line 1465
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listMountableFoldersContinue(Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    move-result-object v1

    return-object v1
.end method

.method public listReceivedFiles()Lcom/dropbox/core/v2/sharing/ListFilesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1510
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFilesArg;-><init>()V

    .line 1511
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ListFilesArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listReceivedFiles(Lcom/dropbox/core/v2/sharing/ListFilesArg;)Lcom/dropbox/core/v2/sharing/ListFilesResult;

    move-result-object v1

    return-object v1
.end method

.method listReceivedFiles(Lcom/dropbox/core/v2/sharing/ListFilesArg;)Lcom/dropbox/core/v2/sharing/ListFilesResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ListFilesArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1485
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_received_files"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFilesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFilesResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFilesResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1493
    :catch_0
    move-exception v8

    .line 1494
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;

    const-string v2, "2/sharing/list_received_files"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharingUserError;)V

    throw v1
.end method

.method public listReceivedFilesBuilder()Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;
    .locals 2

    .prologue
    .line 1523
    invoke-static {}, Lcom/dropbox/core/v2/sharing/ListFilesArg;->newBuilder()Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;

    move-result-object v0

    .line 1524
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;)V

    return-object v1
.end method

.method listReceivedFilesContinue(Lcom/dropbox/core/v2/sharing/ListFilesContinueArg;)Lcom/dropbox/core/v2/sharing/ListFilesResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ListFilesContinueArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFilesContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1543
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_received_files/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFilesContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFilesResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFilesResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1551
    :catch_0
    move-exception v8

    .line 1552
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFilesContinueErrorException;

    const-string v2, "2/sharing/list_received_files/continue"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListFilesContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFilesContinueError;)V

    throw v1
.end method

.method public listReceivedFilesContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFilesResult;
    .locals 2
    .param p1, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFilesContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1570
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueArg;-><init>(Ljava/lang/String;)V

    .line 1571
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ListFilesContinueArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listReceivedFilesContinue(Lcom/dropbox/core/v2/sharing/ListFilesContinueArg;)Lcom/dropbox/core/v2/sharing/ListFilesResult;

    move-result-object v1

    return-object v1
.end method

.method public listSharedLinks()Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1611
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;-><init>()V

    .line 1612
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listSharedLinks(Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;)Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;

    move-result-object v1

    return-object v1
.end method

.method listSharedLinks(Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;)Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1589
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/list_shared_links"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1597
    :catch_0
    move-exception v8

    .line 1598
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;

    const-string v2, "2/sharing/list_shared_links"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListSharedLinksError;)V

    throw v1
.end method

.method public listSharedLinksBuilder()Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;
    .locals 2

    .prologue
    .line 1627
    invoke-static {}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->newBuilder()Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    move-result-object v0

    .line 1628
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;)V

    return-object v1
.end method

.method modifySharedLinkSettings(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1649
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/modify_shared_link_settings"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1657
    :catch_0
    move-exception v8

    .line 1658
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;

    const-string v2, "2/sharing/modify_shared_link_settings"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;)V

    throw v1
.end method

.method public modifySharedLinkSettings(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1686
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)V

    .line 1687
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->modifySharedLinkSettings(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object v1

    return-object v1
.end method

.method public modifySharedLinkSettings(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;Z)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    .param p3, "removeExpiration"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1712
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;Z)V

    .line 1713
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->modifySharedLinkSettings(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object v1

    return-object v1
.end method

.method mountFolder(Lcom/dropbox/core/v2/sharing/MountFolderArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/MountFolderArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/MountFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1732
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/mount_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/MountFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MountFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1740
    :catch_0
    move-exception v8

    .line 1741
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/MountFolderErrorException;

    const-string v2, "2/sharing/mount_folder"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/MountFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/MountFolderError;)V

    throw v1
.end method

.method public mountFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/MountFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1761
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/MountFolderArg;-><init>(Ljava/lang/String;)V

    .line 1762
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/MountFolderArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->mountFolder(Lcom/dropbox/core/v2/sharing/MountFolderArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v1

    return-object v1
.end method

.method relinquishFileMembership(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1778
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/relinquish_file_membership"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg$Serializer;

    .line 1783
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;

    move-object v3, p1

    .line 1778
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    return-void

    .line 1786
    :catch_0
    move-exception v8

    .line 1787
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException;

    const-string v2, "2/sharing/relinquish_file_membership"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;)V

    throw v1
.end method

.method public relinquishFileMembership(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1805
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg;-><init>(Ljava/lang/String;)V

    .line 1806
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->relinquishFileMembership(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg;)V

    .line 1807
    return-void
.end method

.method relinquishFolderMembership(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1828
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/relinquish_folder_membership"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1836
    :catch_0
    move-exception v8

    .line 1837
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;

    const-string v2, "2/sharing/relinquish_folder_membership"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)V

    throw v1
.end method

.method public relinquishFolderMembership(Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1863
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;-><init>(Ljava/lang/String;)V

    .line 1864
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->relinquishFolderMembership(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object v1

    return-object v1
.end method

.method public relinquishFolderMembership(Ljava/lang/String;Z)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .param p2, "leaveACopy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1888
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;-><init>(Ljava/lang/String;Z)V

    .line 1889
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->relinquishFolderMembership(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object v1

    return-object v1
.end method

.method removeFileMember(Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1904
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/remove_file_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1912
    :catch_0
    move-exception v8

    .line 1913
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;

    const-string v2, "2/sharing/remove_file_member"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)V

    throw v1
.end method

.method public removeFileMember(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "member"    # Lcom/dropbox/core/v2/sharing/MemberSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1938
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V

    .line 1939
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->removeFileMember(Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v1

    return-object v1
.end method

.method removeFileMember2(Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1954
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/remove_file_member_2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1962
    :catch_0
    move-exception v8

    .line 1963
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;

    const-string v2, "2/sharing/remove_file_member_2"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)V

    throw v1
.end method

.method public removeFileMember2(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "member"    # Lcom/dropbox/core/v2/sharing/MemberSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1983
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V

    .line 1984
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->removeFileMember2(Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    move-result-object v1

    return-object v1
.end method

.method removeFolderMember(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;)Lcom/dropbox/core/v2/async/LaunchResultBase;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2005
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/remove_folder_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/LaunchResultBase;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2013
    :catch_0
    move-exception v8

    .line 2014
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberErrorException;

    const-string v2, "2/sharing/remove_folder_member"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)V

    throw v1
.end method

.method public removeFolderMember(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Z)Lcom/dropbox/core/v2/async/LaunchResultBase;
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .param p2, "member"    # Lcom/dropbox/core/v2/sharing/MemberSelector;
    .param p3, "leaveACopy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2042
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Z)V

    .line 2043
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->removeFolderMember(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;)Lcom/dropbox/core/v2/async/LaunchResultBase;

    move-result-object v1

    return-object v1
.end method

.method revokeSharedLink(Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RevokeSharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2061
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/revoke_shared_link"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg$Serializer;

    .line 2066
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;

    move-object v3, p1

    .line 2061
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2072
    return-void

    .line 2069
    :catch_0
    move-exception v8

    .line 2070
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkErrorException;

    const-string v2, "2/sharing/revoke_shared_link"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;)V

    throw v1
.end method

.method public revokeSharedLink(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RevokeSharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2088
    new-instance v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg;-><init>(Ljava/lang/String;)V

    .line 2089
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->revokeSharedLink(Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg;)V

    .line 2090
    return-void
.end method

.method shareFolder(Lcom/dropbox/core/v2/sharing/ShareFolderArg;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/ShareFolderArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ShareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2108
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/share_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2116
    :catch_0
    move-exception v8

    .line 2117
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ShareFolderErrorException;

    const-string v2, "2/sharing/share_folder"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ShareFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ShareFolderError;)V

    throw v1
.end method

.method public shareFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ShareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2141
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg;-><init>(Ljava/lang/String;)V

    .line 2142
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/ShareFolderArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->shareFolder(Lcom/dropbox/core/v2/sharing/ShareFolderArg;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    move-result-object v1

    return-object v1
.end method

.method public shareFolderBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2165
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    move-result-object v0

    .line 2166
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;)V

    return-object v1
.end method

.method transferFolder(Lcom/dropbox/core/v2/sharing/TransferFolderArg;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/TransferFolderArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/TransferFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2182
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/transfer_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/TransferFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TransferFolderArg$Serializer;

    .line 2187
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;

    move-object v3, p1

    .line 2182
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2193
    return-void

    .line 2190
    :catch_0
    move-exception v8

    .line 2191
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/TransferFolderErrorException;

    const-string v2, "2/sharing/transfer_folder"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/TransferFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/TransferFolderError;)V

    throw v1
.end method

.method public transferFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .param p2, "toDropboxId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/TransferFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2210
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/TransferFolderArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/TransferFolderArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->transferFolder(Lcom/dropbox/core/v2/sharing/TransferFolderArg;)V

    .line 2212
    return-void
.end method

.method unmountFolder(Lcom/dropbox/core/v2/sharing/UnmountFolderArg;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/UnmountFolderArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnmountFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2227
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/unmount_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/UnmountFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnmountFolderArg$Serializer;

    .line 2232
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Serializer;

    move-object v3, p1

    .line 2227
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2238
    return-void

    .line 2235
    :catch_0
    move-exception v8

    .line 2236
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/UnmountFolderErrorException;

    const-string v2, "2/sharing/unmount_folder"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UnmountFolderError;)V

    throw v1
.end method

.method public unmountFolder(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnmountFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2253
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/UnmountFolderArg;-><init>(Ljava/lang/String;)V

    .line 2254
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/UnmountFolderArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->unmountFolder(Lcom/dropbox/core/v2/sharing/UnmountFolderArg;)V

    .line 2255
    return-void
.end method

.method unshareFile(Lcom/dropbox/core/v2/sharing/UnshareFileArg;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/UnshareFileArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2269
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/unshare_file"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/UnshareFileArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFileArg$Serializer;

    .line 2274
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;

    move-object v3, p1

    .line 2269
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2280
    return-void

    .line 2277
    :catch_0
    move-exception v8

    .line 2278
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/UnshareFileErrorException;

    const-string v2, "2/sharing/unshare_file"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/UnshareFileErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UnshareFileError;)V

    throw v1
.end method

.method public unshareFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2293
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/UnshareFileArg;-><init>(Ljava/lang/String;)V

    .line 2294
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/UnshareFileArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->unshareFile(Lcom/dropbox/core/v2/sharing/UnshareFileArg;)V

    .line 2295
    return-void
.end method

.method unshareFolder(Lcom/dropbox/core/v2/sharing/UnshareFolderArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/UnshareFolderArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2314
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/unshare_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/UnshareFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2322
    :catch_0
    move-exception v8

    .line 2323
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;

    const-string v2, "2/sharing/unshare_folder"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UnshareFolderError;)V

    throw v1
.end method

.method public unshareFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2347
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;-><init>(Ljava/lang/String;)V

    .line 2348
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/UnshareFolderArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->unshareFolder(Lcom/dropbox/core/v2/sharing/UnshareFolderArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object v1

    return-object v1
.end method

.method public unshareFolder(Ljava/lang/String;Z)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .param p2, "leaveACopy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2372
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;-><init>(Ljava/lang/String;Z)V

    .line 2373
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/UnshareFolderArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->unshareFolder(Lcom/dropbox/core/v2/sharing/UnshareFolderArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object v1

    return-object v1
.end method

.method updateFileMember(Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2391
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/update_file_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2399
    :catch_0
    move-exception v8

    .line 2400
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;

    const-string v2, "2/sharing/update_file_member"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)V

    throw v1
.end method

.method public updateFileMember(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "member"    # Lcom/dropbox/core/v2/sharing/MemberSelector;
    .param p3, "accessLevel"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2423
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 2424
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->updateFileMember(Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v1

    return-object v1
.end method

.method updateFolderMember(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UpdateFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2441
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/update_folder_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2449
    :catch_0
    move-exception v8

    .line 2450
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberErrorException;

    const-string v2, "2/sharing/update_folder_member"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)V

    throw v1
.end method

.method public updateFolderMember(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .param p2, "member"    # Lcom/dropbox/core/v2/sharing/MemberSelector;
    .param p3, "accessLevel"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UpdateFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2474
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 2475
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->updateFolderMember(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v1

    return-object v1
.end method

.method updateFolderPolicy(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2495
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/sharing/update_folder_policy"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2503
    :catch_0
    move-exception v8

    .line 2504
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException;

    const-string v2, "2/sharing/update_folder_policy"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;)V

    throw v1
.end method

.method public updateFolderPolicy(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2523
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;-><init>(Ljava/lang/String;)V

    .line 2524
    .local v0, "_arg":Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->updateFolderPolicy(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v1

    return-object v1
.end method

.method public updateFolderPolicyBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;

    .prologue
    .line 2542
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    move-result-object v0

    .line 2543
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;
    new-instance v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;)V

    return-object v1
.end method
