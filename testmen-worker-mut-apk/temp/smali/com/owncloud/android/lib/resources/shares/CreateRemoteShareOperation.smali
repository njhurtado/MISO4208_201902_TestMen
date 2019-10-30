.class public Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "CreateRemoteShareOperation.java"


# static fields
.field private static final PARAM_PASSWORD:Ljava/lang/String; = "password"

.field private static final PARAM_PATH:Ljava/lang/String; = "path"

.field private static final PARAM_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final PARAM_PUBLIC_UPLOAD:Ljava/lang/String; = "publicUpload"

.field private static final PARAM_SHARE_TYPE:Ljava/lang/String; = "shareType"

.field private static final PARAM_SHARE_WITH:Ljava/lang/String; = "shareWith"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGetShareDetails:Z

.field private mPassword:Ljava/lang/String;

.field private mPermissions:I

.field private mPublicUpload:Z

.field private mRemoteFilePath:Ljava/lang/String;

.field private mShareType:Lcom/owncloud/android/lib/resources/shares/ShareType;

.field private mShareWith:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/owncloud/android/lib/resources/shares/ShareType;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 1
    .param p1, "remoteFilePath"    # Ljava/lang/String;
    .param p2, "shareType"    # Lcom/owncloud/android/lib/resources/shares/ShareType;
    .param p3, "shareWith"    # Ljava/lang/String;
    .param p4, "publicUpload"    # Z
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "permissions"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mRemoteFilePath:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mShareType:Lcom/owncloud/android/lib/resources/shares/ShareType;

    .line 90
    iput-object p3, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mShareWith:Ljava/lang/String;

    .line 91
    iput-boolean p4, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mPublicUpload:Z

    .line 92
    iput-object p5, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mPassword:Ljava/lang/String;

    .line 93
    iput p6, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mPermissions:I

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mGetShareDetails:Z

    .line 95
    return-void
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 173
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x193

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isGettingShareDetails()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mGetShareDetails:Z

    return v0
.end method

.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 12
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 107
    const/4 v7, 0x0

    .line 108
    .local v7, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v9, -0x1

    .line 110
    .local v9, "status":I
    const/4 v4, 0x0

    .line 114
    .local v4, "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :try_start_0
    new-instance v5, Lorg/apache/commons/httpclient/methods/PostMethod;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/ocs/v2.php/apps/files_sharing/api/v1/shares"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v4    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .local v5, "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :try_start_1
    const-string v10, "Content-Type"

    const-string v11, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v5, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v10, "path"

    iget-object v11, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mRemoteFilePath:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v10, "shareType"

    iget-object v11, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mShareType:Lcom/owncloud/android/lib/resources/shares/ShareType;

    invoke-virtual {v11}, Lcom/owncloud/android/lib/resources/shares/ShareType;->getValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v10, "shareWith"

    iget-object v11, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mShareWith:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-boolean v10, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mPublicUpload:Z

    if-eqz v10, :cond_0

    .line 123
    const-string v10, "publicUpload"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v10, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mPassword:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mPassword:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 126
    const-string v10, "password"

    iget-object v11, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mPassword:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_1
    const/4 v10, -0x1

    iget v11, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mPermissions:I

    if-eq v10, v11, :cond_2

    .line 129
    const-string v10, "permissions"

    iget v11, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mPermissions:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_2
    const-string v10, "OCS-APIREQUEST"

    const-string v11, "true"

    invoke-virtual {v5, v10, v11}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1, v5}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v9

    .line 136
    invoke-direct {p0, v9}, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->isSuccess(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 137
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "response":Ljava/lang/String;
    new-instance v3, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;

    new-instance v10, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-direct {v10}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;-><init>()V

    invoke-direct {v3, v10}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;-><init>(Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;)V

    .line 142
    .local v3, "parser":Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->setOneOrMoreSharesRequired(Z)V

    .line 143
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getOwnCloudVersion()Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->setOwnCloudVersion(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)V

    .line 144
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->setServerBaseUri(Landroid/net/Uri;)V

    .line 145
    invoke-virtual {v3, v6}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->parse(Ljava/lang/String;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v7

    .line 147
    invoke-virtual {v7}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mGetShareDetails:Z

    if-eqz v10, :cond_3

    .line 149
    invoke-virtual {v7}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getData()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/owncloud/android/lib/resources/shares/OCShare;

    .line 150
    .local v1, "emptyShare":Lcom/owncloud/android/lib/resources/shares/OCShare;
    new-instance v2, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareOperation;

    .line 151
    invoke-virtual {v1}, Lcom/owncloud/android/lib/resources/shares/OCShare;->getRemoteId()J

    move-result-wide v10

    invoke-direct {v2, v10, v11}, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareOperation;-><init>(J)V

    .line 153
    .local v2, "getInfo":Lcom/owncloud/android/lib/resources/shares/GetRemoteShareOperation;
    invoke-virtual {v2, p1}, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareOperation;->execute(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 165
    .end local v1    # "emptyShare":Lcom/owncloud/android/lib/resources/shares/OCShare;
    .end local v2    # "getInfo":Lcom/owncloud/android/lib/resources/shares/GetRemoteShareOperation;
    .end local v3    # "parser":Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;
    .end local v6    # "response":Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v5, :cond_7

    .line 166
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    move-object v4, v5

    .line 169
    .end local v5    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v4    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :cond_4
    :goto_1
    return-object v7

    .line 157
    .end local v4    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v5    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :cond_5
    :try_start_2
    new-instance v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v10, 0x0

    invoke-direct {v8, v10, v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v8, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object v7, v8

    .end local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_0

    .line 160
    .end local v5    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v4    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :catch_0
    move-exception v0

    move-object v8, v7

    .line 161
    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    :try_start_3
    new-instance v7, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v7, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 162
    .end local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_4
    sget-object v10, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->TAG:Ljava/lang/String;

    const-string v11, "Exception while Creating New Share"

    invoke-static {v10, v11, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    if-eqz v4, :cond_4

    .line 166
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    goto :goto_1

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v4, :cond_6

    .line 166
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    :cond_6
    throw v10

    .line 165
    .end local v4    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v5    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v4    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    goto :goto_3

    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v5    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v4    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    move-object v8, v7

    .end local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .end local v4    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .end local v8    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v7    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_7
    move-object v4, v5

    .end local v5    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v4    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    goto :goto_1
.end method

.method public setGetShareDetails(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/owncloud/android/lib/resources/shares/CreateRemoteShareOperation;->mGetShareDetails:Z

    .line 103
    return-void
.end method
