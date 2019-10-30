.class public Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForNotificationsOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "UnregisterAccountDeviceForNotificationsOperation.java"


# static fields
.field private static final OCS_ROUTE:Ljava/lang/String; = "/ocs/v2.php/apps/notifications/api/v2/push"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForNotificationsOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForNotificationsOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    return-void
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 80
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xca

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
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 10
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 47
    const/4 v4, 0x0

    .line 48
    .local v4, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v6, -0x1

    .line 49
    .local v6, "status":I
    const/4 v0, 0x0

    .line 53
    .local v0, "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    :try_start_0
    new-instance v1, Lorg/apache/commons/httpclient/methods/DeleteMethod;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/ocs/v2.php/apps/notifications/api/v2/push"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/apache/commons/httpclient/methods/DeleteMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .local v1, "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    :try_start_1
    const-string v7, "OCS-APIREQUEST"

    const-string v8, "true"

    invoke-virtual {v1, v7, v8}, Lorg/apache/commons/httpclient/methods/DeleteMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v6

    .line 58
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/DeleteMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "response":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForNotificationsOperation;->isSuccess(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 61
    new-instance v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v7, 0x1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/DeleteMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v8

    invoke-direct {v5, v7, v6, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v5, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    sget-object v7, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForNotificationsOperation;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Successful response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v5

    .line 72
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_0
    if-eqz v1, :cond_3

    .line 73
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/DeleteMethod;->releaseConnection()V

    move-object v0, v1

    .line 76
    .end local v1    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .end local v3    # "response":Ljava/lang/String;
    .restart local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    :cond_0
    :goto_1
    return-object v4

    .line 64
    .end local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .restart local v1    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .restart local v3    # "response":Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/DeleteMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v8

    invoke-direct {v5, v7, v6, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object v4, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_0

    .line 67
    .end local v1    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .end local v3    # "response":Ljava/lang/String;
    .restart local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    :catch_0
    move-exception v2

    move-object v5, v4

    .line 68
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    :try_start_4
    new-instance v4, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v4, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 69
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_5
    sget-object v7, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForNotificationsOperation;->TAG:Ljava/lang/String;

    const-string v8, "Exception while registering device for notifications"

    invoke-static {v7, v8, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/DeleteMethod;->releaseConnection()V

    goto :goto_1

    .line 72
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/DeleteMethod;->releaseConnection()V

    :cond_2
    throw v7

    .line 72
    .end local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .restart local v1    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    goto :goto_3

    .end local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v1    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .restart local v3    # "response":Ljava/lang/String;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    move-object v4, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v7

    move-object v4, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .line 67
    .end local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    move-object v5, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .end local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .restart local v1    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .restart local v3    # "response":Ljava/lang/String;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    goto :goto_2

    .end local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v1    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_3
    move-object v0, v1

    .end local v1    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    .restart local v0    # "delete":Lorg/apache/commons/httpclient/methods/DeleteMethod;
    goto :goto_1
.end method
