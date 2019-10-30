.class public Lcom/owncloud/android/lib/resources/files/ToggleFavoriteOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "ToggleFavoriteOperation.java"


# instance fields
.field private filePath:Ljava/lang/String;

.field private makeItFavorited:Z

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "makeItFavorited"    # Z
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "userID"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 49
    iput-boolean p1, p0, Lcom/owncloud/android/lib/resources/files/ToggleFavoriteOperation;->makeItFavorited:Z

    .line 50
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/files/ToggleFavoriteOperation;->filePath:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/owncloud/android/lib/resources/files/ToggleFavoriteOperation;->userID:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 16
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 56
    const/4 v10, 0x0

    .line 57
    .local v10, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v7, 0x0

    .line 59
    .local v7, "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    new-instance v5, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    invoke-direct {v5}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;-><init>()V

    .line 60
    .local v5, "newProps":Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
    new-instance v9, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v9}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    .line 62
    .local v9, "removeProperties":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/owncloud/android/lib/resources/files/ToggleFavoriteOperation;->makeItFavorited:Z

    if-eqz v13, :cond_2

    .line 63
    new-instance v2, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;

    const-string v13, "oc:favorite"

    const-string v14, "1"

    const-string v15, "http://owncloud.org/ns"

    .line 64
    invoke-static {v15}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v15

    invoke-direct {v2, v13, v14, v15}, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V

    .line 65
    .local v2, "favoriteProperty":Lorg/apache/jackrabbit/webdav/property/DavProperty;
    invoke-virtual {v5, v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->add(Lorg/apache/jackrabbit/webdav/property/DavProperty;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    .line 70
    .end local v2    # "favoriteProperty":Lorg/apache/jackrabbit/webdav/property/DavProperty;
    :goto_0
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getNewWebdavUri(Z)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, "webDavUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/owncloud/android/lib/resources/files/ToggleFavoriteOperation;->filePath:Ljava/lang/String;

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    add-int/lit8 v6, v13, 0x1

    .line 72
    .local v6, "pos":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/owncloud/android/lib/resources/files/ToggleFavoriteOperation;->filePath:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/owncloud/android/lib/resources/files/ToggleFavoriteOperation;->filePath:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/resources/files/ToggleFavoriteOperation;->filePath:Ljava/lang/String;

    .line 74
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/files/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/owncloud/android/lib/resources/files/ToggleFavoriteOperation;->userID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/owncloud/android/lib/resources/files/ToggleFavoriteOperation;->filePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "fullFilePath":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;

    invoke-direct {v8, v3, v5, v9}, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/property/DavPropertySet;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v7    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    .local v8, "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v11

    .line 82
    .local v11, "status":I
    const/16 v13, 0xcf

    if-eq v11, v13, :cond_0

    const/16 v13, 0xc8

    if-ne v11, v13, :cond_3

    :cond_0
    const/4 v4, 0x1

    .line 87
    .local v4, "isSuccess":Z
    :goto_1
    if-eqz v4, :cond_4

    .line 88
    new-instance v10, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .end local v10    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v13, 0x1

    invoke-virtual {v8}, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v14

    invoke-direct {v10, v13, v11, v14}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    .restart local v10    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    if-eqz v8, :cond_6

    .line 97
    invoke-virtual {v8}, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->releaseConnection()V

    move-object v7, v8

    .line 101
    .end local v4    # "isSuccess":Z
    .end local v8    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    .end local v11    # "status":I
    .restart local v7    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    :cond_1
    :goto_3
    return-object v10

    .line 67
    .end local v3    # "fullFilePath":Ljava/lang/String;
    .end local v6    # "pos":I
    .end local v12    # "webDavUrl":Ljava/lang/String;
    :cond_2
    const-string v13, "oc:favorite"

    const-string v14, "http://owncloud.org/ns"

    invoke-static {v14}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    goto/16 :goto_0

    .line 82
    .end local v7    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    .restart local v3    # "fullFilePath":Ljava/lang/String;
    .restart local v6    # "pos":I
    .restart local v8    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    .restart local v11    # "status":I
    .restart local v12    # "webDavUrl":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 90
    .restart local v4    # "isSuccess":Z
    :cond_4
    :try_start_2
    invoke-virtual {v8}, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V

    .line 91
    new-instance v10, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .end local v10    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v13, 0x0

    invoke-virtual {v8}, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v14

    invoke-direct {v10, v13, v11, v14}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local v10    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .line 93
    .end local v4    # "isSuccess":Z
    .end local v8    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    .end local v11    # "status":I
    .restart local v7    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    :catch_0
    move-exception v1

    .line 94
    .end local v10    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_3
    new-instance v10, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v10, v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    .restart local v10    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    if-eqz v7, :cond_1

    .line 97
    invoke-virtual {v7}, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->releaseConnection()V

    goto :goto_3

    .line 96
    .end local v1    # "e":Ljava/io/IOException;
    .end local v10    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_0
    move-exception v13

    :goto_5
    if-eqz v7, :cond_5

    .line 97
    invoke-virtual {v7}, Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;->releaseConnection()V

    :cond_5
    throw v13

    .line 96
    .end local v7    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    .restart local v8    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    .restart local v7    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    goto :goto_5

    .line 93
    .end local v7    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    .restart local v8    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    :catch_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    .restart local v7    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    goto :goto_4

    .end local v7    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    .restart local v4    # "isSuccess":Z
    .restart local v8    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    .restart local v10    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v11    # "status":I
    :cond_6
    move-object v7, v8

    .end local v8    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    .restart local v7    # "propPatchMethod":Lorg/apache/jackrabbit/webdav/client/methods/PropPatchMethod;
    goto :goto_3
.end method
