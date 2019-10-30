.class public Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "RegisterAccountDeviceForNotificationsOperation.java"


# static fields
.field private static final DEVICE_PUBLIC_KEY:Ljava/lang/String; = "devicePublicKey"

.field private static final INVALID_SESSION_TOKEN:Ljava/lang/String; = "INVALID_SESSION_TOKEN"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final NODE_DATA:Ljava/lang/String; = "data"

.field private static final NODE_OCS:Ljava/lang/String; = "ocs"

.field private static final OCS_ROUTE:Ljava/lang/String; = "/ocs/v2.php/apps/notifications/api/v2/push?format=json"

.field private static final PROXY_SERVER:Ljava/lang/String; = "proxyServer"

.field private static final PUSH_TOKEN_HASH:Ljava/lang/String; = "pushTokenHash"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private devicePublicKey:Ljava/lang/String;

.field private proxyServer:Ljava/lang/String;

.field private pushTokenHash:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pushTokenHash"    # Ljava/lang/String;
    .param p2, "devicePublicKey"    # Ljava/lang/String;
    .param p3, "proxyServer"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;->pushTokenHash:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;->devicePublicKey:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;->proxyServer:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private isInvalidSessionToken(Ljava/lang/String;)Z
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 138
    .local v1, "jsonParser":Lcom/google/gson/JsonParser;
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 139
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v3, "ocs"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "message":Ljava/lang/String;
    const-string v3, "INVALID_SESSION_TOKEN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 145
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseResult(Ljava/lang/String;)Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;
    .locals 7
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    .line 127
    .local v3, "jsonParser":Lcom/google/gson/JsonParser;
    invoke-virtual {v3, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 128
    .local v1, "jo":Lcom/google/gson/JsonObject;
    const-string v5, "ocs"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 130
    .local v2, "jsonDataObject":Lcom/google/gson/JsonObject;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 131
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation$1;

    invoke-direct {v5, p0}, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation$1;-><init>(Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;)V

    invoke-virtual {v5}, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 133
    .local v4, "pushResponseType":Ljava/lang/reflect/Type;
    invoke-virtual {v0, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;

    return-object v5
.end method


# virtual methods
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 12
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 78
    const/4 v5, 0x0

    .line 79
    .local v5, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v7, -0x1

    .line 81
    .local v7, "status":I
    const/4 v1, 0x0

    .line 85
    .local v1, "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/ocs/v2.php/apps/notifications/api/v2/push?format=json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 86
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "pushTokenHash"

    iget-object v11, p0, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;->pushTokenHash:Ljava/lang/String;

    .line 87
    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "devicePublicKey"

    iget-object v11, p0, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;->devicePublicKey:Ljava/lang/String;

    .line 88
    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "proxyServer"

    iget-object v11, p0, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;->proxyServer:Ljava/lang/String;

    .line 89
    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 90
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, "uri":Ljava/lang/String;
    new-instance v2, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {v2, v8}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .local v2, "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :try_start_1
    const-string v9, "OCS-APIREQUEST"

    const-string v10, "true"

    invoke-virtual {v2, v9, v10}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, v2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v7

    .line 96
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "response":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;->isSuccess(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 99
    new-instance v6, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v9, 0x1

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v10

    invoke-direct {v6, v9, v7, v10}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v6, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    sget-object v9, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Successful response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, v4}, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;->parseResult(Ljava/lang/String;)Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;

    move-result-object v3

    .line 104
    .local v3, "pushResponse":Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;
    invoke-virtual {v6, v3}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setPushResponseData(Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v6

    .line 118
    .end local v3    # "pushResponse":Lcom/owncloud/android/lib/resources/notifications/models/PushResponse;
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_0
    if-eqz v2, :cond_4

    .line 119
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    move-object v1, v2

    .line 122
    .end local v2    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .end local v4    # "response":Ljava/lang/String;
    .end local v8    # "uri":Ljava/lang/String;
    .restart local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :cond_0
    :goto_1
    return-object v5

    .line 106
    .end local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v2    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v8    # "uri":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-direct {p0, v4}, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;->isInvalidSessionToken(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 107
    new-instance v6, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v9, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->ACCOUNT_USES_STANDARD_PASSWORD:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v6, v9}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_0

    .line 109
    :cond_2
    new-instance v6, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v10

    invoke-direct {v6, v9, v7, v10}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
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
    .end local v2    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .end local v4    # "response":Ljava/lang/String;
    .end local v8    # "uri":Ljava/lang/String;
    .restart local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    :catch_0
    move-exception v0

    move-object v6, v5

    .line 114
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    :try_start_4
    new-instance v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v5, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 115
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_5
    sget-object v9, Lcom/owncloud/android/lib/resources/notifications/RegisterAccountDeviceForNotificationsOperation;->TAG:Ljava/lang/String;

    const-string v10, "Exception while registering device for notifications"

    invoke-static {v9, v10, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    goto :goto_1

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v1, :cond_3

    .line 119
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    :cond_3
    throw v9

    .line 118
    .end local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v2    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v8    # "uri":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    goto :goto_3

    .end local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_2
    move-exception v9

    move-object v1, v2

    .end local v2    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v8    # "uri":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v2    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v8    # "uri":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    move-object v6, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .end local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v2    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v4    # "response":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    goto :goto_2

    .end local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_4
    move-object v1, v2

    .end local v2    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v1    # "post":Lorg/apache/commons/httpclient/methods/PostMethod;
    goto :goto_1
.end method
