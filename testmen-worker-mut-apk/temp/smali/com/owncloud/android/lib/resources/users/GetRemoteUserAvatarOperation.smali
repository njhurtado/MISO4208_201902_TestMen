.class public Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "GetRemoteUserAvatarOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation$ResultData;
    }
.end annotation


# static fields
.field private static final NON_OFFICIAL_AVATAR_PATH:Ljava/lang/String; = "/index.php/avatar/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDimension:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "dimension"    # I
    .param p2, "currentEtag"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 65
    iput p1, p0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->mDimension:I

    .line 67
    return-void
.end method

.method private createResult(Lorg/apache/commons/httpclient/methods/GetMethod;[BLjava/lang/String;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 6
    .param p1, "get"    # Lorg/apache/commons/httpclient/methods/GetMethod;
    .param p2, "avatarData"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {p1}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->getEtagFromResponse(Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "etag":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 174
    sget-object v4, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->TAG:Ljava/lang/String;

    const-string v5, "Could not read Etag from avatar"

    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    new-instance v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v4, 0x1

    invoke-direct {v2, v4, p1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V

    .line 178
    .local v2, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    new-instance v3, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation$ResultData;

    invoke-direct {v3, p2, p3, v1}, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation$ResultData;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 179
    .local v3, "resultData":Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation$ResultData;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v2, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V

    .line 182
    return-object v2
.end method

.method private getAvatarUri(Lcom/owncloud/android/lib/common/OwnCloudClient;I)Ljava/lang/String;
    .locals 2
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;
    .param p2, "dimension"    # I

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/index.php/avatar/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v1

    invoke-interface {v1}, Lcom/owncloud/android/lib/common/OwnCloudCredentials;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 190
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 29
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 71
    const/16 v19, 0x0

    .line 72
    .local v19, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v12, 0x0

    .line 73
    .local v12, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    const/4 v15, 0x0

    .line 74
    .local v15, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 75
    .local v4, "bis":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 78
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->mDimension:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->getAvatarUri(Lcom/owncloud/android/lib/common/OwnCloudClient;I)Ljava/lang/String;

    move-result-object v23

    .line 80
    .local v23, "uri":Ljava/lang/String;
    sget-object v26, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "avatar URI: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v13, Lorg/apache/commons/httpclient/methods/GetMethod;

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .local v13, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v21

    .line 97
    .local v21, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->isSuccess(I)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 100
    const/16 v22, 0x0

    .line 101
    .local v22, "totalToTransfer":I
    const-string v26, "Content-Length"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v9

    .line 102
    .local v9, "contentLength":Lorg/apache/commons/httpclient/Header;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_0

    .line 103
    invoke-virtual {v9}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 108
    :cond_0
    const-string v26, "Content-Type"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v10

    .line 109
    .local v10, "contentType":Lorg/apache/commons/httpclient/Header;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    const-string v27, "image"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 110
    :cond_1
    sget-object v26, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->TAG:Ljava/lang/String;

    const-string v27, "Not an image, failing with no avatar"

    invoke-static/range {v26 .. v27}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v20, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v26, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->FILE_NOT_FOUND:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    .end local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v20, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    if-eqz v13, :cond_4

    .line 145
    if-eqz v15, :cond_2

    .line 146
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V

    .line 147
    if-eqz v4, :cond_5

    .line 148
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 157
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 158
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 163
    :cond_3
    :goto_1
    invoke-virtual {v13}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    :cond_4
    move-object v12, v13

    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v19, v20

    .line 167
    .end local v9    # "contentLength":Lorg/apache/commons/httpclient/Header;
    .end local v10    # "contentType":Lorg/apache/commons/httpclient/Header;
    .end local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v21    # "status":I
    .end local v22    # "totalToTransfer":I
    .end local v23    # "uri":Ljava/lang/String;
    :goto_2
    return-object v20

    .line 150
    .end local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v9    # "contentLength":Lorg/apache/commons/httpclient/Header;
    .restart local v10    # "contentType":Lorg/apache/commons/httpclient/Header;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v21    # "status":I
    .restart local v22    # "totalToTransfer":I
    .restart local v23    # "uri":Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v14

    .line 154
    .local v14, "i":Ljava/io/IOException;
    sget-object v26, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->TAG:Ljava/lang/String;

    const-string v27, "Unexpected exception closing input stream "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v14}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 160
    .end local v14    # "i":Ljava/io/IOException;
    :catch_1
    move-exception v17

    .line 161
    .local v17, "o":Ljava/io/IOException;
    sget-object v26, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->TAG:Ljava/lang/String;

    const-string v27, "Unexpected exception closing output stream "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 114
    .end local v17    # "o":Ljava/io/IOException;
    .end local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_6
    :try_start_5
    invoke-virtual {v10}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 117
    .local v16, "mimeType":Ljava/lang/String;
    invoke-virtual {v13}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v15

    .line 118
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 119
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v5, "bis":Ljava/io/BufferedInputStream;
    :try_start_6
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    move/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 121
    .end local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v7, "bos":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v24, 0x0

    .line 122
    .local v24, "transferred":J
    const/16 v26, 0x1000

    :try_start_7
    move/from16 v0, v26

    new-array v8, v0, [B

    .line 123
    .local v8, "bytes":[B
    const/16 v18, 0x0

    .line 124
    .local v18, "readResult":I
    :goto_3
    invoke-virtual {v5, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v18

    const/16 v26, -0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 125
    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v7, v8, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 126
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    goto :goto_3

    .line 131
    :cond_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-direct {v0, v13, v1, v2}, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->createResult(Lorg/apache/commons/httpclient/methods/GetMethod;[BLjava/lang/String;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v19

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .line 143
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "bytes":[B
    .end local v9    # "contentLength":Lorg/apache/commons/httpclient/Header;
    .end local v10    # "contentType":Lorg/apache/commons/httpclient/Header;
    .end local v16    # "mimeType":Ljava/lang/String;
    .end local v18    # "readResult":I
    .end local v22    # "totalToTransfer":I
    .end local v24    # "transferred":J
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    :goto_4
    if-eqz v13, :cond_14

    .line 145
    if-eqz v15, :cond_8

    .line 146
    :try_start_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V

    .line 147
    if-eqz v4, :cond_c

    .line 148
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 157
    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    .line 158
    :try_start_9
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 163
    :cond_9
    :goto_6
    invoke-virtual {v13}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    move-object v12, v13

    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v21    # "status":I
    .end local v23    # "uri":Ljava/lang/String;
    .restart local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :cond_a
    :goto_7
    move-object/from16 v20, v19

    .line 167
    .local v20, "result":Ljava/lang/Object;
    goto/16 :goto_2

    .line 134
    .end local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v20    # "result":Ljava/lang/Object;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v21    # "status":I
    .restart local v23    # "uri":Ljava/lang/String;
    :cond_b
    :try_start_a
    new-instance v20, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-direct {v0, v1, v13}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 135
    .end local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v20, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_b
    invoke-virtual {v13}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v19, v20

    .end local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_4

    .line 150
    :cond_c
    :try_start_c
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_5

    .line 153
    :catch_2
    move-exception v14

    .line 154
    .restart local v14    # "i":Ljava/io/IOException;
    sget-object v26, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->TAG:Ljava/lang/String;

    const-string v27, "Unexpected exception closing input stream "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v14}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 160
    .end local v14    # "i":Ljava/io/IOException;
    :catch_3
    move-exception v17

    .line 161
    .restart local v17    # "o":Ljava/io/IOException;
    sget-object v26, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->TAG:Ljava/lang/String;

    const-string v27, "Unexpected exception closing output stream "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 138
    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v17    # "o":Ljava/io/IOException;
    .end local v21    # "status":I
    .end local v23    # "uri":Ljava/lang/String;
    .restart local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catch_4
    move-exception v11

    move-object/from16 v20, v19

    .line 139
    .end local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v11, "e":Ljava/lang/Exception;
    .restart local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_8
    :try_start_d
    new-instance v19, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 140
    .end local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_e
    sget-object v26, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->TAG:Ljava/lang/String;

    const-string v27, "Exception while getting OC user avatar"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v11}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 143
    if-eqz v12, :cond_a

    .line 145
    if-eqz v15, :cond_d

    .line 146
    :try_start_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V

    .line 147
    if-eqz v4, :cond_f

    .line 148
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 157
    :cond_d
    :goto_9
    if-eqz v6, :cond_e

    .line 158
    :try_start_10
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 163
    :cond_e
    :goto_a
    invoke-virtual {v12}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    goto :goto_7

    .line 150
    :cond_f
    :try_start_11
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_9

    .line 153
    :catch_5
    move-exception v14

    .line 154
    .restart local v14    # "i":Ljava/io/IOException;
    sget-object v26, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->TAG:Ljava/lang/String;

    const-string v27, "Unexpected exception closing input stream "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v14}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 160
    .end local v14    # "i":Ljava/io/IOException;
    :catch_6
    move-exception v17

    .line 161
    .restart local v17    # "o":Ljava/io/IOException;
    sget-object v26, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->TAG:Ljava/lang/String;

    const-string v27, "Unexpected exception closing output stream "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 143
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v17    # "o":Ljava/io/IOException;
    :catchall_0
    move-exception v26

    :goto_b
    if-eqz v12, :cond_12

    .line 145
    if-eqz v15, :cond_10

    .line 146
    :try_start_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V

    .line 147
    if-eqz v4, :cond_13

    .line 148
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    .line 157
    :cond_10
    :goto_c
    if-eqz v6, :cond_11

    .line 158
    :try_start_13
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 163
    :cond_11
    :goto_d
    invoke-virtual {v12}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    :cond_12
    throw v26

    .line 150
    :cond_13
    :try_start_14
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_c

    .line 153
    :catch_7
    move-exception v14

    .line 154
    .restart local v14    # "i":Ljava/io/IOException;
    sget-object v27, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->TAG:Ljava/lang/String;

    const-string v28, "Unexpected exception closing input stream "

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v14}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 160
    .end local v14    # "i":Ljava/io/IOException;
    :catch_8
    move-exception v17

    .line 161
    .restart local v17    # "o":Ljava/io/IOException;
    sget-object v27, Lcom/owncloud/android/lib/resources/users/GetRemoteUserAvatarOperation;->TAG:Ljava/lang/String;

    const-string v28, "Unexpected exception closing output stream "

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 143
    .end local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v17    # "o":Ljava/io/IOException;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v23    # "uri":Ljava/lang/String;
    :catchall_1
    move-exception v26

    move-object v12, v13

    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_b

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "contentLength":Lorg/apache/commons/httpclient/Header;
    .restart local v10    # "contentType":Lorg/apache/commons/httpclient/Header;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v16    # "mimeType":Ljava/lang/String;
    .restart local v21    # "status":I
    .restart local v22    # "totalToTransfer":I
    :catchall_2
    move-exception v26

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object v12, v13

    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_b

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v24    # "transferred":J
    :catchall_3
    move-exception v26

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object v12, v13

    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_b

    .end local v9    # "contentLength":Lorg/apache/commons/httpclient/Header;
    .end local v10    # "contentType":Lorg/apache/commons/httpclient/Header;
    .end local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v16    # "mimeType":Ljava/lang/String;
    .end local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v22    # "totalToTransfer":I
    .end local v24    # "transferred":J
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_4
    move-exception v26

    move-object v12, v13

    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v19, v20

    .end local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_b

    .end local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v21    # "status":I
    .end local v23    # "uri":Ljava/lang/String;
    .restart local v11    # "e":Ljava/lang/Exception;
    .restart local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_5
    move-exception v26

    move-object/from16 v19, v20

    .end local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_b

    .line 138
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v23    # "uri":Ljava/lang/String;
    :catch_9
    move-exception v11

    move-object v12, v13

    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v20, v19

    .end local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_8

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "contentLength":Lorg/apache/commons/httpclient/Header;
    .restart local v10    # "contentType":Lorg/apache/commons/httpclient/Header;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v16    # "mimeType":Ljava/lang/String;
    .restart local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v21    # "status":I
    .restart local v22    # "totalToTransfer":I
    :catch_a
    move-exception v11

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object v12, v13

    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v20, v19

    .end local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_8

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v24    # "transferred":J
    :catch_b
    move-exception v11

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object v12, v13

    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v20, v19

    .end local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_8

    .end local v9    # "contentLength":Lorg/apache/commons/httpclient/Header;
    .end local v10    # "contentType":Lorg/apache/commons/httpclient/Header;
    .end local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v16    # "mimeType":Ljava/lang/String;
    .end local v22    # "totalToTransfer":I
    .end local v24    # "transferred":J
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catch_c
    move-exception v11

    move-object v12, v13

    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto/16 :goto_8

    .end local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v20    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v19    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_14
    move-object v12, v13

    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v12    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto/16 :goto_7
.end method
