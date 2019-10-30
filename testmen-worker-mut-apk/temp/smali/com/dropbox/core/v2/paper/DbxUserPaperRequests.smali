.class public Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;
.super Ljava/lang/Object;
.source "DbxUserPaperRequests.java"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0
    .param p1, "client"    # Lcom/dropbox/core/v2/DbxRawClientV2;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 30
    return-void
.end method


# virtual methods
.method docsArchive(Lcom/dropbox/core/v2/paper/RefPaperDoc;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/RefPaperDoc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/archive"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;

    .line 50
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    .line 45
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 53
    :catch_0
    move-exception v8

    .line 54
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string v2, "2/paper/docs/archive"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsArchive(Ljava/lang/String;)V
    .locals 1
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/dropbox/core/v2/paper/RefPaperDoc;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/RefPaperDoc;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsArchive(Lcom/dropbox/core/v2/paper/RefPaperDoc;)V

    .line 72
    return-void
.end method

.method docsDownload(Lcom/dropbox/core/v2/paper/PaperDocExport;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 10
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/PaperDocExport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/paper/PaperDocExport;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/paper/PaperDocExportResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "_headers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/http/HttpRequestor$Header;>;"
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/download"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/paper/PaperDocExport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocExport$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;

    sget-object v8, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 97
    :catch_0
    move-exception v9

    .line 98
    .local v9, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string v2, "2/paper/docs/download"

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v9}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsDownload(Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "exportFormat"    # Lcom/dropbox/core/v2/paper/ExportFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/paper/ExportFormat;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/paper/PaperDocExportResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocExport;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/PaperDocExport;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)V

    .line 116
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/PaperDocExport;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsDownload(Lcom/dropbox/core/v2/paper/PaperDocExport;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v1

    return-object v1
.end method

.method public docsDownloadBuilder(Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;
    .locals 1
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "exportFormat"    # Lcom/dropbox/core/v2/paper/ExportFormat;

    .prologue
    .line 132
    new-instance v0, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/paper/DocsDownloadBuilder;-><init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Ljava/lang/String;Lcom/dropbox/core/v2/paper/ExportFormat;)V

    return-object v0
.end method

.method docsFolderUsersList(Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/folder_users/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 156
    :catch_0
    move-exception v8

    .line 157
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string v2, "2/paper/docs/folder_users/list"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsFolderUsersList(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsFolderUsersList(Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    move-result-object v1

    return-object v1
.end method

.method public docsFolderUsersList(Ljava/lang/String;I)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 3
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 197
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'limit\' is smaller than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_0
    const/16 v1, 0x3e8

    if-le p2, v1, :cond_1

    .line 200
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'limit\' is larger than 1000"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;-><init>(Ljava/lang/String;I)V

    .line 203
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsFolderUsersList(Lcom/dropbox/core/v2/paper/ListUsersOnFolderArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    move-result-object v1

    return-object v1
.end method

.method docsFolderUsersListContinue(Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/folder_users/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 226
    :catch_0
    move-exception v8

    .line 227
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;

    const-string v2, "2/paper/docs/folder_users/list/continue"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/ListUsersCursorError;)V

    throw v1
.end method

.method public docsFolderUsersListContinue(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsFolderUsersListContinue(Lcom/dropbox/core/v2/paper/ListUsersOnFolderContinueArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    move-result-object v1

    return-object v1
.end method

.method docsGetFolderInfo(Lcom/dropbox/core/v2/paper/RefPaperDoc;)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/RefPaperDoc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/get_folder_info"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 277
    :catch_0
    move-exception v8

    .line 278
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string v2, "2/paper/docs/get_folder_info"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsGetFolderInfo(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Lcom/dropbox/core/v2/paper/RefPaperDoc;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/RefPaperDoc;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsGetFolderInfo(Lcom/dropbox/core/v2/paper/RefPaperDoc;)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;

    move-result-object v1

    return-object v1
.end method

.method public docsList()Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;-><init>()V

    .line 339
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsList(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;

    move-result-object v1

    return-object v1
.end method

.method docsList(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;

    .line 322
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 316
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 324
    :catch_0
    move-exception v8

    .line 325
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v0, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error response for \"docs/list\":"

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

.method public docsListBuilder()Lcom/dropbox/core/v2/paper/DocsListBuilder;
    .locals 2

    .prologue
    .line 351
    invoke-static {}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->newBuilder()Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;

    move-result-object v0

    .line 352
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;
    new-instance v1, Lcom/dropbox/core/v2/paper/DocsListBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/paper/DocsListBuilder;-><init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Builder;)V

    return-object v1
.end method

.method docsListContinue(Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListDocsCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsResponse$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 375
    :catch_0
    move-exception v8

    .line 376
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/paper/ListDocsCursorErrorException;

    const-string v2, "2/paper/docs/list/continue"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/ListDocsCursorErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/ListDocsCursorError;)V

    throw v1
.end method

.method public docsListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;
    .locals 2
    .param p1, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListDocsCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsListContinue(Lcom/dropbox/core/v2/paper/ListPaperDocsContinueArgs;)Lcom/dropbox/core/v2/paper/ListPaperDocsResponse;

    move-result-object v1

    return-object v1
.end method

.method docsPermanentlyDelete(Lcom/dropbox/core/v2/paper/RefPaperDoc;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/RefPaperDoc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/permanently_delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;

    .line 416
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    .line 411
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    return-void

    .line 419
    :catch_0
    move-exception v8

    .line 420
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string v2, "2/paper/docs/permanently_delete"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsPermanentlyDelete(Ljava/lang/String;)V
    .locals 1
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Lcom/dropbox/core/v2/paper/RefPaperDoc;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 437
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/RefPaperDoc;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsPermanentlyDelete(Lcom/dropbox/core/v2/paper/RefPaperDoc;)V

    .line 438
    return-void
.end method

.method docsSharingPolicyGet(Lcom/dropbox/core/v2/paper/RefPaperDoc;)Lcom/dropbox/core/v2/paper/SharingPolicy;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/RefPaperDoc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/sharing_policy/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RefPaperDoc$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/SharingPolicy;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 460
    :catch_0
    move-exception v8

    .line 461
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string v2, "2/paper/docs/sharing_policy/get"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsSharingPolicyGet(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/SharingPolicy;
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 476
    new-instance v0, Lcom/dropbox/core/v2/paper/RefPaperDoc;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 477
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/RefPaperDoc;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsSharingPolicyGet(Lcom/dropbox/core/v2/paper/RefPaperDoc;)Lcom/dropbox/core/v2/paper/SharingPolicy;

    move-result-object v1

    return-object v1
.end method

.method docsSharingPolicySet(Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/sharing_policy/set"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy$Serializer;

    .line 500
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    .line 495
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    return-void

    .line 503
    :catch_0
    move-exception v8

    .line 504
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string v2, "2/paper/docs/sharing_policy/set"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsSharingPolicySet(Ljava/lang/String;Lcom/dropbox/core/v2/paper/SharingPolicy;)V
    .locals 1
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "sharingPolicy"    # Lcom/dropbox/core/v2/paper/SharingPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 524
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/SharingPolicy;)V

    .line 525
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsSharingPolicySet(Lcom/dropbox/core/v2/paper/PaperDocSharingPolicy;)V

    .line 526
    return-void
.end method

.method docsUsersAdd(Lcom/dropbox/core/v2/paper/AddPaperDocUser;)Ljava/util/List;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/AddPaperDocUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/paper/AddPaperDocUser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/users/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult$Serializer;

    .line 546
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    .line 541
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 549
    :catch_0
    move-exception v8

    .line 550
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string v2, "2/paper/docs/users/add"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsUsersAdd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddPaperDocUserMemberResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 572
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/AddMember;>;"
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/AddPaperDocUser;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 573
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/AddPaperDocUser;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsUsersAdd(Lcom/dropbox/core/v2/paper/AddPaperDocUser;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public docsUsersAddBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;)",
            "Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;"
        }
    .end annotation

    .prologue
    .line 594
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/AddMember;>;"
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->newBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;

    move-result-object v0

    .line 595
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;
    new-instance v1, Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/paper/DocsUsersAddBuilder;-><init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;)V

    return-object v1
.end method

.method docsUsersList(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/users/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 620
    :catch_0
    move-exception v8

    .line 621
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string v2, "2/paper/docs/users/list"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsUsersList(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 641
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;-><init>(Ljava/lang/String;)V

    .line 642
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsUsersList(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;

    move-result-object v1

    return-object v1
.end method

.method public docsUsersListBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;

    .prologue
    .line 661
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;

    move-result-object v0

    .line 662
    .local v0, "argBuilder_":Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;
    new-instance v1, Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/paper/DocsUsersListBuilder;-><init>(Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocArgs$Builder;)V

    return-object v1
.end method

.method docsUsersListContinue(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/users/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 685
    :catch_0
    move-exception v8

    .line 686
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;

    const-string v2, "2/paper/docs/users/list/continue"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/ListUsersCursorError;)V

    throw v1
.end method

.method public docsUsersListContinue(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/ListUsersCursorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 705
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsUsersListContinue(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocContinueArgs;)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;

    move-result-object v1

    return-object v1
.end method

.method docsUsersRemove(Lcom/dropbox/core/v2/paper/RemovePaperDocUser;)V
    .locals 9
    .param p1, "arg"    # Lcom/dropbox/core/v2/paper/RemovePaperDocUser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2/paper/docs/users/remove"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;

    .line 727
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;

    move-object v3, p1

    .line 722
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    return-void

    .line 730
    :catch_0
    move-exception v8

    .line 731
    .local v8, "ex":Lcom/dropbox/core/DbxWrappedException;
    new-instance v1, Lcom/dropbox/core/v2/paper/DocLookupErrorException;

    const-string v2, "2/paper/docs/users/remove"

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v8}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/paper/DocLookupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/paper/DocLookupError;)V

    throw v1
.end method

.method public docsUsersRemove(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V
    .locals 1
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "member"    # Lcom/dropbox/core/v2/sharing/MemberSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/paper/DocLookupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 749
    new-instance v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V

    .line 750
    .local v0, "_arg":Lcom/dropbox/core/v2/paper/RemovePaperDocUser;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;->docsUsersRemove(Lcom/dropbox/core/v2/paper/RemovePaperDocUser;)V

    .line 751
    return-void
.end method
