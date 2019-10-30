.class public Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "GetRemoteNotificationsOperation.java"


# static fields
.field private static final NODE_DATA:Ljava/lang/String; = "data"

.field private static final NODE_OCS:Ljava/lang/String; = "ocs"

.field private static final OCS_ROUTE_LIST_V12_AND_UP:Ljava/lang/String; = "/ocs/v2.php/apps/notifications/api/v2/notifications?format=json"

.field private static final OCS_ROUTE_LIST_V9_AND_UP:Ljava/lang/String; = "/ocs/v2.php/apps/notifications/api/v1/notifications?format=json"

.field public static final STATUS_NO_CONTENT:Ljava/lang/String; = "204"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    return-void
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 140
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseResult(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/owncloud/android/lib/resources/notifications/models/Notification;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    .line 130
    .local v3, "jsonParser":Lcom/google/gson/JsonParser;
    invoke-virtual {v3, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 131
    .local v1, "jo":Lcom/google/gson/JsonObject;
    const-string v5, "ocs"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 133
    .local v2, "jsonDataArray":Lcom/google/gson/JsonArray;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 134
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation$1;

    invoke-direct {v5, p0}, Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation$1;-><init>(Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;)V

    invoke-virtual {v5}, Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 136
    .local v4, "listType":Ljava/lang/reflect/Type;
    invoke-virtual {v0, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    return-object v5
.end method


# virtual methods
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 12
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 81
    const/4 v5, 0x0

    .line 82
    .local v5, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v7, -0x1

    .line 83
    .local v7, "status":I
    const/4 v1, 0x0

    .line 86
    .local v1, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getOwnCloudVersion()Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-result-object v9

    sget-object v10, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->nextcloud_12:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    invoke-virtual {v9, v10}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->compareTo(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)I

    move-result v9

    if-ltz v9, :cond_1

    .line 87
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/ocs/v2.php/apps/notifications/api/v2/notifications?format=json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "url":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v2, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-direct {v2, v8}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .local v2, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :try_start_1
    const-string v9, "OCS-APIREQUEST"

    const-string v10, "true"

    invoke-virtual {v2, v9, v10}, Lorg/apache/commons/httpclient/methods/GetMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, v2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v7

    .line 98
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "response":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;->isSuccess(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 101
    new-instance v6, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v9, 0x1

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v10

    invoke-direct {v6, v9, v7, v10}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v6, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    sget-object v9, Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;->TAG:Ljava/lang/String;

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

    .line 105
    invoke-direct {p0, v4}, Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;->parseResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 106
    .local v3, "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/owncloud/android/lib/resources/notifications/models/Notification;>;"
    invoke-virtual {v6, v3}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setNotificationData(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v6

    .line 120
    .end local v3    # "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/owncloud/android/lib/resources/notifications/models/Notification;>;"
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_1
    if-eqz v2, :cond_5

    .line 121
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    move-object v1, v2

    .line 125
    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v4    # "response":Ljava/lang/String;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :cond_0
    :goto_2
    return-object v5

    .line 89
    .end local v8    # "url":Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/ocs/v2.php/apps/notifications/api/v1/notifications?format=json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "url":Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v4    # "response":Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v6, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v10

    invoke-direct {v6, v9, v7, v10}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_4
    sget-object v9, Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;->TAG:Ljava/lang/String;

    const-string v10, "Failed response while getting user notifications "

    invoke-static {v9, v10}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz v4, :cond_3

    .line 111
    sget-object v9, Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "*** status code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; response message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_1

    .line 113
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_3
    sget-object v9, Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "*** status code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_1

    .line 116
    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v4    # "response":Ljava/lang/String;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catch_0
    move-exception v0

    move-object v6, v5

    .line 117
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_3
    :try_start_5
    new-instance v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v5, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 118
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_6
    sget-object v9, Lcom/owncloud/android/lib/resources/notifications/GetRemoteNotificationsOperation;->TAG:Ljava/lang/String;

    const-string v10, "Exception while getting remote notifications"

    invoke-static {v9, v10, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 120
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    goto :goto_2

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v1, :cond_4

    .line 121
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    :cond_4
    throw v9

    .line 120
    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_4

    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_2
    move-exception v9

    move-object v1, v2

    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_4

    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_4

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object v6, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v4    # "response":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_3

    .end local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_5
    move-object v1, v2

    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v1    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto/16 :goto_2
.end method
