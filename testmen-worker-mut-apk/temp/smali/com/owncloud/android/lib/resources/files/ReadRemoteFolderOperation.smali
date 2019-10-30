.class public Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "ReadRemoteFolderOperation.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFolderAndFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRemotePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "remotePath"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private fillOCFile(Lcom/owncloud/android/lib/common/network/WebdavEntry;)Lcom/owncloud/android/lib/resources/files/RemoteFile;
    .locals 4
    .param p1, "we"    # Lcom/owncloud/android/lib/common/network/WebdavEntry;

    .prologue
    .line 164
    new-instance v0, Lcom/owncloud/android/lib/resources/files/RemoteFile;

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->decodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "file":Lcom/owncloud/android/lib/resources/files/RemoteFile;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->createTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setCreationTimestamp(J)V

    .line 166
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->contentLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setLength(J)V

    .line 167
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->contentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setMimeType(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->modifiedTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setModifiedTimestamp(J)V

    .line 169
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->etag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setEtag(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->permissions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setPermissions(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->remoteId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setRemoteId(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setSize(J)V

    .line 173
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->quotaUsedBytes()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setQuotaUsedBytes(Ljava/math/BigDecimal;)V

    .line 174
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->quotaAvailableBytes()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setQuotaAvailableBytes(Ljava/math/BigDecimal;)V

    .line 175
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->isFavorite()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setFavorite(Z)V

    .line 176
    return-object v0
.end method

.method private readData(Lorg/apache/jackrabbit/webdav/MultiStatus;Lcom/owncloud/android/lib/common/OwnCloudClient;)V
    .locals 5
    .param p1, "remoteData"    # Lorg/apache/jackrabbit/webdav/MultiStatus;
    .param p2, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mFolderAndFiles:Ljava/util/ArrayList;

    .line 142
    new-instance v2, Lcom/owncloud/android/lib/common/network/WebdavEntry;

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->getResponses()[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 143
    invoke-virtual {p2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/owncloud/android/lib/common/network/WebdavEntry;-><init>(Lorg/apache/jackrabbit/webdav/MultiStatusResponse;Ljava/lang/String;)V

    .line 144
    .local v2, "we":Lcom/owncloud/android/lib/common/network/WebdavEntry;
    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mFolderAndFiles:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->fillOCFile(Lcom/owncloud/android/lib/common/network/WebdavEntry;)Lcom/owncloud/android/lib/resources/files/RemoteFile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "remoteFile":Lcom/owncloud/android/lib/resources/files/RemoteFile;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->getResponses()[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 150
    new-instance v2, Lcom/owncloud/android/lib/common/network/WebdavEntry;

    .end local v2    # "we":Lcom/owncloud/android/lib/common/network/WebdavEntry;
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->getResponses()[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {p2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/owncloud/android/lib/common/network/WebdavEntry;-><init>(Lorg/apache/jackrabbit/webdav/MultiStatusResponse;Ljava/lang/String;)V

    .line 151
    .restart local v2    # "we":Lcom/owncloud/android/lib/common/network/WebdavEntry;
    invoke-direct {p0, v2}, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->fillOCFile(Lcom/owncloud/android/lib/common/network/WebdavEntry;)Lcom/owncloud/android/lib/resources/files/RemoteFile;

    move-result-object v1

    .line 152
    iget-object v3, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mFolderAndFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public isMultiStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 126
    const/16 v0, 0xcf

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 12
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 71
    const/4 v5, 0x0

    .line 72
    .local v5, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v3, 0x0

    .line 76
    .local v3, "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    :try_start_0
    new-instance v4, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 77
    invoke-static {}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->getAllPropSet()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v4, v9, v10, v11}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .local v4, "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    :try_start_1
    invoke-virtual {p1, v4}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v7

    .line 82
    .local v7, "status":I
    const/16 v9, 0xcf

    if-eq v7, v9, :cond_0

    const/16 v9, 0xc8

    if-ne v7, v9, :cond_1

    :cond_0
    move v2, v8

    .line 86
    .local v2, "isSuccess":Z
    :cond_1
    if-eqz v2, :cond_4

    .line 88
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->getResponseBodyAsMultiStatus()Lorg/apache/jackrabbit/webdav/MultiStatus;

    move-result-object v0

    .line 89
    .local v0, "dataInServer":Lorg/apache/jackrabbit/webdav/MultiStatus;
    invoke-direct {p0, v0, p1}, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->readData(Lorg/apache/jackrabbit/webdav/MultiStatus;Lcom/owncloud/android/lib/common/OwnCloudClient;)V

    .line 92
    new-instance v6, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v8, 0x1

    invoke-direct {v6, v8, v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v6, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    invoke-virtual {v6}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 95
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mFolderAndFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    move-object v5, v6

    .line 108
    .end local v0    # "dataInServer":Lorg/apache/jackrabbit/webdav/MultiStatus;
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_0
    if-eqz v4, :cond_3

    .line 109
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->releaseConnection()V

    .line 110
    :cond_3
    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 111
    sget-object v8, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Synchronized "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 122
    .end local v2    # "isSuccess":Z
    .end local v4    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .end local v7    # "status":I
    .restart local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    :goto_1
    return-object v5

    .line 99
    .end local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v2    # "isSuccess":Z
    .restart local v4    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v7    # "status":I
    :cond_4
    :try_start_3
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V

    .line 100
    new-instance v6, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v8, 0x0

    invoke-direct {v6, v8, v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_0

    .line 113
    :cond_5
    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isException()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 114
    sget-object v8, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Synchronized "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 115
    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getException()Ljava/lang/Exception;

    move-result-object v10

    .line 114
    invoke-static {v8, v9, v10}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .end local v4    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    goto :goto_1

    .line 117
    .end local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v4    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    :cond_6
    sget-object v8, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Synchronized "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 121
    .end local v4    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    goto :goto_1

    .line 103
    .end local v2    # "isSuccess":Z
    .end local v7    # "status":I
    :catch_0
    move-exception v1

    move-object v6, v5

    .line 104
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    :try_start_4
    new-instance v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v5, v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 108
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    if-eqz v3, :cond_7

    .line 109
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->releaseConnection()V

    .line 110
    :cond_7
    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 111
    sget-object v8, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Synchronized "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 113
    :cond_8
    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isException()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 114
    sget-object v8, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Synchronized "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 115
    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getException()Ljava/lang/Exception;

    move-result-object v10

    .line 114
    invoke-static {v8, v9, v10}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 117
    :cond_9
    sget-object v8, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Synchronized "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 108
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v3, :cond_a

    .line 109
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->releaseConnection()V

    .line 110
    :cond_a
    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 111
    sget-object v9, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Synchronized "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/owncloud/android/lib/common/utils/Log_OC;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_4
    throw v8

    .line 113
    :cond_b
    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isException()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 114
    sget-object v9, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Synchronized "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 115
    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getException()Ljava/lang/Exception;

    move-result-object v11

    .line 114
    invoke-static {v9, v10, v11}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 117
    :cond_c
    sget-object v9, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Synchronized "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFolderOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 108
    .end local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v4    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    goto/16 :goto_3

    .end local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v0    # "dataInServer":Lorg/apache/jackrabbit/webdav/MultiStatus;
    .restart local v2    # "isSuccess":Z
    .restart local v4    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v7    # "status":I
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_3

    .end local v0    # "dataInServer":Lorg/apache/jackrabbit/webdav/MultiStatus;
    .end local v2    # "isSuccess":Z
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v7    # "status":I
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v8

    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_3

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v4    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    move-object v6, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_2

    .end local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v0    # "dataInServer":Lorg/apache/jackrabbit/webdav/MultiStatus;
    .restart local v2    # "isSuccess":Z
    .restart local v4    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v7    # "status":I
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v3    # "query":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    goto/16 :goto_2
.end method
