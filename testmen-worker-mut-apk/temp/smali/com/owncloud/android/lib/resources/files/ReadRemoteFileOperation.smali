.class public Lcom/owncloud/android/lib/resources/files/ReadRemoteFileOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "ReadRemoteFileOperation.java"


# static fields
.field private static final SYNC_CONNECTION_TIMEOUT:I = 0x1388

.field private static final SYNC_READ_TIMEOUT:I = 0x9c40

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRemotePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFileOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "remotePath"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 14
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 73
    const/4 v3, 0x0

    .line 74
    .local v3, "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    const/4 v7, 0x0

    .line 79
    .local v7, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_0
    new-instance v4, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-static {v12}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 80
    invoke-static {}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->getFilePropSet()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v4, v11, v12, v13}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .local v4, "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    const v11, 0x9c40

    const/16 v12, 0x1388

    :try_start_1
    invoke-virtual {p1, v4, v11, v12}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethodBase;II)I

    move-result v9

    .line 85
    .local v9, "status":I
    const/16 v11, 0xcf

    if-eq v9, v11, :cond_0

    const/16 v11, 0xc8

    if-ne v9, v11, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 89
    .local v2, "isSuccess":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 91
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->getResponseBodyAsMultiStatus()Lorg/apache/jackrabbit/webdav/MultiStatus;

    move-result-object v6

    .line 92
    .local v6, "resp":Lorg/apache/jackrabbit/webdav/MultiStatus;
    new-instance v10, Lcom/owncloud/android/lib/common/network/WebdavEntry;

    invoke-virtual {v6}, Lorg/apache/jackrabbit/webdav/MultiStatus;->getResponses()[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    .line 93
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/owncloud/android/lib/common/network/WebdavEntry;-><init>(Lorg/apache/jackrabbit/webdav/MultiStatusResponse;Ljava/lang/String;)V

    .line 94
    .local v10, "we":Lcom/owncloud/android/lib/common/network/WebdavEntry;
    new-instance v5, Lcom/owncloud/android/lib/resources/files/RemoteFile;

    invoke-direct {v5, v10}, Lcom/owncloud/android/lib/resources/files/RemoteFile;-><init>(Lcom/owncloud/android/lib/common/network/WebdavEntry;)V

    .line 95
    .local v5, "remoteFile":Lcom/owncloud/android/lib/resources/files/RemoteFile;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v11, 0x1

    invoke-direct {v8, v11, v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v8, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    invoke-virtual {v8, v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, v8

    .line 113
    .end local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v5    # "remoteFile":Lcom/owncloud/android/lib/resources/files/RemoteFile;
    .end local v6    # "resp":Lorg/apache/jackrabbit/webdav/MultiStatus;
    .end local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v10    # "we":Lcom/owncloud/android/lib/common/network/WebdavEntry;
    .restart local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_1
    if-eqz v4, :cond_5

    .line 114
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->releaseConnection()V

    move-object v3, v4

    .line 116
    .end local v2    # "isSuccess":Z
    .end local v4    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .end local v9    # "status":I
    .restart local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    :cond_1
    :goto_2
    return-object v7

    .line 85
    .end local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v4    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v9    # "status":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 103
    .restart local v2    # "isSuccess":Z
    :cond_3
    :try_start_3
    new-instance v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v11, 0x0

    invoke-direct {v8, v11, v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_4
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v7, v8

    .end local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_1

    .line 107
    .end local v2    # "isSuccess":Z
    .end local v4    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .end local v9    # "status":I
    .restart local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    :catch_0
    move-exception v0

    move-object v8, v7

    .line 108
    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_3
    :try_start_5
    new-instance v7, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v7, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 109
    .end local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    sget-object v11, Lcom/owncloud/android/lib/resources/files/ReadRemoteFileOperation;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Synchronizing  file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/owncloud/android/lib/resources/files/ReadRemoteFileOperation;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 111
    invoke-virtual {v7}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getException()Ljava/lang/Exception;

    move-result-object v13

    .line 110
    invoke-static {v11, v12, v13}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 113
    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->releaseConnection()V

    goto :goto_2

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v3, :cond_4

    .line 114
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->releaseConnection()V

    :cond_4
    throw v11

    .line 113
    .end local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v4    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    goto :goto_4

    .end local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "isSuccess":Z
    .restart local v4    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v9    # "status":I
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object v3, v4

    .end local v4    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    goto :goto_4

    .end local v2    # "isSuccess":Z
    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v9    # "status":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v11

    move-object v7, v8

    .end local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_4

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v4    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    :catch_1
    move-exception v0

    move-object v8, v7

    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object v3, v4

    .end local v4    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    goto :goto_3

    .end local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v2    # "isSuccess":Z
    .restart local v4    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v9    # "status":I
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    goto :goto_3

    .end local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .end local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_5
    move-object v3, v4

    .end local v4    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    .restart local v3    # "propfind":Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
    goto :goto_2
.end method
