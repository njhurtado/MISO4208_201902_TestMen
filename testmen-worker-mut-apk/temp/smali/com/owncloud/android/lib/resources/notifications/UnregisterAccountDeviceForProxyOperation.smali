.class public Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForProxyOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "UnregisterAccountDeviceForProxyOperation.java"


# static fields
.field private static final DEVICE_IDENTIFIER:Ljava/lang/String; = "deviceIdentifier"

.field private static final DEVICE_IDENTIFIER_SIGNATURE:Ljava/lang/String; = "deviceIdentifierSignature"

.field private static final PROXY_ROUTE:Ljava/lang/String; = "/devices"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_PUBLIC_KEY:Ljava/lang/String; = "userPublicKey"


# instance fields
.field private deviceIdentifier:Ljava/lang/String;

.field private deviceIdentifierSignature:Ljava/lang/String;

.field private proxyUrl:Ljava/lang/String;

.field private userPublicKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForProxyOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForProxyOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyUrl"    # Ljava/lang/String;
    .param p2, "deviceIdentifier"    # Ljava/lang/String;
    .param p3, "deviceIdentifierSignature"    # Ljava/lang/String;
    .param p4, "userPublicKey"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForProxyOperation;->proxyUrl:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForProxyOperation;->deviceIdentifier:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForProxyOperation;->deviceIdentifierSignature:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForProxyOperation;->userPublicKey:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 102
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
    .locals 11
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 64
    const/4 v4, 0x0

    .line 65
    .local v4, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v6, -0x1

    .line 66
    .local v6, "status":I
    const/4 v0, 0x0

    .line 70
    .local v0, "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForProxyOperation;->proxyUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/devices"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "uriToPost":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?deviceIdentifier="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForProxyOperation;->deviceIdentifier:Ljava/lang/String;

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "deviceIdentifierSignature="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForProxyOperation;->deviceIdentifierSignature:Ljava/lang/String;

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "userPublicKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForProxyOperation;->userPublicKey:Ljava/lang/String;

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 75
    new-instance v1, Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;

    invoke-direct {v1, v7}, Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .local v1, "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    :try_start_1
    const-string v8, "OCS-APIREQUEST"

    const-string v9, "true"

    invoke-virtual {v1, v8, v9}, Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v8, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v8, v9}, Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, v1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v6

    .line 80
    invoke-virtual {v1}, Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "response":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForProxyOperation;->isSuccess(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 83
    new-instance v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v9

    invoke-direct {v5, v8, v6, v9}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v5, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    sget-object v8, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForProxyOperation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Successful response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v5

    .line 94
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_0
    if-eqz v1, :cond_3

    .line 95
    invoke-virtual {v1}, Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;->releaseConnection()V

    move-object v0, v1

    .line 98
    .end local v1    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .end local v3    # "response":Ljava/lang/String;
    .end local v7    # "uriToPost":Ljava/lang/String;
    .restart local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    :cond_0
    :goto_1
    return-object v4

    .line 86
    .end local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v1    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v3    # "response":Ljava/lang/String;
    .restart local v7    # "uriToPost":Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v9

    invoke-direct {v5, v8, v6, v9}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object v4, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_0

    .line 89
    .end local v1    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .end local v3    # "response":Ljava/lang/String;
    .end local v7    # "uriToPost":Ljava/lang/String;
    .restart local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    :catch_0
    move-exception v2

    move-object v5, v4

    .line 90
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    :try_start_4
    new-instance v4, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v4, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 91
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_5
    sget-object v8, Lcom/owncloud/android/lib/resources/notifications/UnregisterAccountDeviceForProxyOperation;->TAG:Ljava/lang/String;

    const-string v9, "Exception while registering device for notifications"

    invoke-static {v8, v9, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;->releaseConnection()V

    goto :goto_1

    .line 94
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0}, Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;->releaseConnection()V

    :cond_2
    throw v8

    .line 94
    .end local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v1    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v7    # "uriToPost":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    goto :goto_3

    .end local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v1    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v3    # "response":Ljava/lang/String;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    move-object v4, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v7    # "uriToPost":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v8

    move-object v4, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .line 89
    .end local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v7    # "uriToPost":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    move-object v5, v4

    .end local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .end local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v1    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v3    # "response":Ljava/lang/String;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    goto :goto_2

    .end local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v1    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v4    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_3
    move-object v0, v1

    .end local v1    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    .restart local v0    # "delete":Lcom/owncloud/android/lib/common/utils/HttpDeleteWithBody;
    goto :goto_1
.end method
