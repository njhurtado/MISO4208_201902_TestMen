.class public Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "GetRemoteActivitiesOperation.java"


# static fields
.field private static final NODE_DATA:Ljava/lang/String; = "data"

.field private static final NODE_OCS:Ljava/lang/String; = "ocs"

.field private static final OCS_ROUTE_PRE_V12:Ljava/lang/String; = "/ocs/v1.php/cloud/activity?format=json"

.field private static final OCS_ROUTE_V12_AND_UP:Ljava/lang/String; = "/ocs/v2.php/apps/activity/api/v2/activity?format=json"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    return-void
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 133
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseResult(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    .line 121
    .local v3, "jsonParser":Lcom/google/gson/JsonParser;
    invoke-virtual {v3, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 122
    .local v1, "jo":Lcom/google/gson/JsonObject;
    const-string v5, "ocs"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 124
    .local v2, "jsonDataArray":Lcom/google/gson/JsonArray;
    new-instance v5, Lcom/google/gson/GsonBuilder;

    invoke-direct {v5}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v6, Lcom/owncloud/android/lib/resources/activities/models/RichElement;

    new-instance v7, Lcom/owncloud/android/lib/resources/activities/models/RichElementTypeAdapter;

    invoke-direct {v7}, Lcom/owncloud/android/lib/resources/activities/models/RichElementTypeAdapter;-><init>()V

    .line 125
    invoke-virtual {v5, v6, v7}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v5

    .line 126
    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 127
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation$1;

    invoke-direct {v5, p0}, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation$1;-><init>(Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;)V

    invoke-virtual {v5}, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 129
    .local v4, "listType":Ljava/lang/reflect/Type;
    invoke-virtual {v0, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method


# virtual methods
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 12
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 73
    const/4 v5, 0x0

    .line 74
    .local v5, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v7, -0x1

    .line 75
    .local v7, "status":I
    const/4 v2, 0x0

    .line 78
    .local v2, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getOwnCloudVersion()Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-result-object v9

    sget-object v10, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->nextcloud_12:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    invoke-virtual {v9, v10}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->compareTo(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)I

    move-result v9

    if-ltz v9, :cond_1

    .line 79
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/ocs/v2.php/apps/activity/api/v2/activity?format=json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "url":Ljava/lang/String;
    :goto_0
    sget-object v9, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :try_start_0
    new-instance v3, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-direct {v3, v8}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .local v3, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :try_start_1
    const-string v9, "OCS-APIREQUEST"

    const-string v10, "true"

    invoke-virtual {v3, v9, v10}, Lorg/apache/commons/httpclient/methods/GetMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1, v3}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v7

    .line 90
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "response":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;->isSuccess(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 93
    sget-object v9, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;->TAG:Ljava/lang/String;

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

    .line 94
    new-instance v6, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v9, 0x1

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v10

    invoke-direct {v6, v9, v7, v10}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v6, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    invoke-direct {p0, v4}, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;->parseResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v6, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v6

    .line 111
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_1
    if-eqz v3, :cond_5

    .line 112
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    move-object v2, v3

    .line 116
    .end local v3    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v4    # "response":Ljava/lang/String;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :cond_0
    :goto_2
    return-object v5

    .line 81
    .end local v8    # "url":Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/ocs/v1.php/cloud/activity?format=json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "url":Ljava/lang/String;
    goto :goto_0

    .line 99
    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v3    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v4    # "response":Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v6, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v10

    invoke-direct {v6, v9, v7, v10}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_4
    sget-object v9, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;->TAG:Ljava/lang/String;

    const-string v10, "Failed response while getting user activities "

    invoke-static {v9, v10}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz v4, :cond_3

    .line 102
    sget-object v9, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;->TAG:Ljava/lang/String;

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

    .line 104
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_3
    sget-object v9, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;->TAG:Ljava/lang/String;

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

    .line 107
    .end local v3    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v4    # "response":Ljava/lang/String;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catch_0
    move-exception v1

    move-object v6, v5

    .line 108
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_3
    :try_start_5
    new-instance v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v5, v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 109
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_6
    sget-object v9, Lcom/owncloud/android/lib/resources/activities/GetRemoteActivitiesOperation;->TAG:Ljava/lang/String;

    const-string v10, "Exception while getting remote activities"

    invoke-static {v9, v10, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 111
    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    goto :goto_2

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v2, :cond_4

    .line 112
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    :cond_4
    throw v9

    .line 111
    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v3    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_4

    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v4    # "response":Ljava/lang/String;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_4

    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_4

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v3    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object v6, v5

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v3    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v4    # "response":Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_3

    .end local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v6    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_5
    move-object v2, v3

    .end local v3    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto/16 :goto_2
.end method
