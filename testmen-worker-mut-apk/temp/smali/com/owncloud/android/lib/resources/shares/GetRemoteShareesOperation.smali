.class public Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "GetRemoteShareesOperation.java"


# static fields
.field private static final NODE_DATA:Ljava/lang/String; = "data"

.field private static final NODE_EXACT:Ljava/lang/String; = "exact"

.field private static final NODE_GROUPS:Ljava/lang/String; = "groups"

.field private static final NODE_OCS:Ljava/lang/String; = "ocs"

.field private static final NODE_REMOTES:Ljava/lang/String; = "remotes"

.field private static final NODE_USERS:Ljava/lang/String; = "users"

.field public static final NODE_VALUE:Ljava/lang/String; = "value"

.field private static final OCS_ROUTE:Ljava/lang/String; = "ocs/v2.php/apps/files_sharing/api/v1/sharees"

.field private static final PARAM_FORMAT:Ljava/lang/String; = "format"

.field private static final PARAM_ITEM_TYPE:Ljava/lang/String; = "itemType"

.field private static final PARAM_PAGE:Ljava/lang/String; = "page"

.field private static final PARAM_PER_PAGE:Ljava/lang/String; = "perPage"

.field private static final PARAM_SEARCH:Ljava/lang/String; = "search"

.field public static final PROPERTY_LABEL:Ljava/lang/String; = "label"

.field public static final PROPERTY_SHARE_TYPE:Ljava/lang/String; = "shareType"

.field public static final PROPERTY_SHARE_WITH:Ljava/lang/String; = "shareWith"

.field private static final TAG:Ljava/lang/String;

.field private static final VALUE_FORMAT:Ljava/lang/String; = "json"

.field private static final VALUE_ITEM_TYPE:Ljava/lang/String; = "file"


# instance fields
.field private mPage:I

.field private mPerPage:I

.field private mSearchString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "perPage"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->mSearchString:Ljava/lang/String;

    .line 109
    iput p2, p0, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->mPage:I

    .line 110
    iput p3, p0, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->mPerPage:I

    .line 111
    return-void
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 198
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
    .line 115
    const/16 v22, 0x0

    .line 117
    .local v22, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v4, 0x0

    .line 120
    .local v4, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v10

    .line 121
    .local v10, "requestUri":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v25

    .line 122
    .local v25, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v26, "ocs/v2.php/apps/files_sharing/api/v1/sharees"

    invoke-virtual/range {v25 .. v26}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    const-string v26, "format"

    const-string v27, "json"

    invoke-virtual/range {v25 .. v27}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    const-string v26, "itemType"

    const-string v27, "file"

    invoke-virtual/range {v25 .. v27}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    const-string v26, "search"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->mSearchString:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 126
    const-string v26, "page"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->mPage:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    const-string v26, "perPage"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->mPerPage:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 130
    new-instance v5, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .local v5, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :try_start_1
    const-string v26, "OCS-APIREQUEST"

    const-string v27, "true"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Lorg/apache/commons/httpclient/methods/GetMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v24

    .line 135
    .local v24, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->isSuccess(I)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 136
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v21

    .line 137
    .local v21, "response":Ljava/lang/String;
    sget-object v26, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Successful response: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .local v16, "respJSON":Lorg/json/JSONObject;
    const-string v26, "ocs"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 142
    .local v17, "respOCS":Lorg/json/JSONObject;
    const-string v26, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 143
    .local v11, "respData":Lorg/json/JSONObject;
    const-string v26, "exact"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 144
    .local v12, "respExact":Lorg/json/JSONObject;
    const-string v26, "users"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 145
    .local v15, "respExactUsers":Lorg/json/JSONArray;
    const-string v26, "groups"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 146
    .local v13, "respExactGroups":Lorg/json/JSONArray;
    const-string v26, "remotes"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 147
    .local v14, "respExactRemotes":Lorg/json/JSONArray;
    const-string v26, "users"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 148
    .local v20, "respPartialUsers":Lorg/json/JSONArray;
    const-string v26, "groups"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 149
    .local v18, "respPartialGroups":Lorg/json/JSONArray;
    const-string v26, "remotes"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 150
    .local v19, "respPartialRemotes":Lorg/json/JSONArray;
    const/16 v26, 0x6

    move/from16 v0, v26

    new-array v9, v0, [Lorg/json/JSONArray;

    const/16 v26, 0x0

    aput-object v15, v9, v26

    const/16 v26, 0x1

    aput-object v13, v9, v26

    const/16 v26, 0x2

    aput-object v14, v9, v26

    const/16 v26, 0x3

    aput-object v20, v9, v26

    const/16 v26, 0x4

    aput-object v18, v9, v26

    const/16 v26, 0x5

    aput-object v19, v9, v26

    .line 159
    .local v9, "jsonResults":[Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v26, 0x6

    move/from16 v0, v26

    if-ge v6, v0, :cond_1

    .line 161
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    aget-object v26, v9, v6

    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_0

    .line 162
    aget-object v26, v9, v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 163
    .local v8, "jsonResult":Lorg/json/JSONObject;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v26, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "*** Added item: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "label"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 160
    .end local v8    # "jsonResult":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 169
    .end local v7    # "j":I
    :cond_1
    new-instance v23, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-direct {v0, v1, v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v23, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V

    .line 172
    sget-object v26, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->TAG:Ljava/lang/String;

    const-string v27, "*** Get Users or groups completed "

    invoke-static/range {v26 .. v27}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v22, v23

    .line 190
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v6    # "i":I
    .end local v9    # "jsonResults":[Lorg/json/JSONArray;
    .end local v11    # "respData":Lorg/json/JSONObject;
    .end local v12    # "respExact":Lorg/json/JSONObject;
    .end local v13    # "respExactGroups":Lorg/json/JSONArray;
    .end local v14    # "respExactRemotes":Lorg/json/JSONArray;
    .end local v15    # "respExactUsers":Lorg/json/JSONArray;
    .end local v16    # "respJSON":Lorg/json/JSONObject;
    .end local v17    # "respOCS":Lorg/json/JSONObject;
    .end local v18    # "respPartialGroups":Lorg/json/JSONArray;
    .end local v19    # "respPartialRemotes":Lorg/json/JSONArray;
    .end local v20    # "respPartialUsers":Lorg/json/JSONArray;
    .end local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    if-eqz v5, :cond_6

    .line 191
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    move-object v4, v5

    .line 194
    .end local v5    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v10    # "requestUri":Landroid/net/Uri;
    .end local v21    # "response":Ljava/lang/String;
    .end local v24    # "status":I
    .end local v25    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :cond_2
    :goto_3
    return-object v22

    .line 175
    .end local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v5    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v10    # "requestUri":Landroid/net/Uri;
    .restart local v24    # "status":I
    .restart local v25    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_3
    :try_start_3
    new-instance v23, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-direct {v0, v1, v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_4
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v21

    .line 177
    .restart local v21    # "response":Ljava/lang/String;
    sget-object v26, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->TAG:Ljava/lang/String;

    const-string v27, "Failed response while getting users/groups from the server "

    invoke-static/range {v26 .. v27}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    if-eqz v21, :cond_4

    .line 179
    sget-object v26, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "*** status code: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "; response message: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v23

    .end local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .line 181
    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_4
    sget-object v26, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "*** status code: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v22, v23

    .end local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .line 185
    .end local v5    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v10    # "requestUri":Landroid/net/Uri;
    .end local v21    # "response":Ljava/lang/String;
    .end local v24    # "status":I
    .end local v25    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catch_0
    move-exception v3

    move-object/from16 v23, v22

    .line 186
    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_4
    :try_start_5
    new-instance v22, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 187
    .end local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_6
    sget-object v26, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareesOperation;->TAG:Ljava/lang/String;

    const-string v27, "Exception while getting users/groups"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v3}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 190
    if-eqz v4, :cond_2

    .line 191
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    goto :goto_3

    .line 190
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v26

    :goto_5
    if-eqz v4, :cond_5

    .line 191
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    :cond_5
    throw v26

    .line 190
    .end local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v5    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v10    # "requestUri":Landroid/net/Uri;
    .restart local v25    # "uriBuilder":Landroid/net/Uri$Builder;
    :catchall_1
    move-exception v26

    move-object v4, v5

    .end local v5    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_5

    .end local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v24    # "status":I
    :catchall_2
    move-exception v26

    move-object v4, v5

    .end local v5    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v22, v23

    .end local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_5

    .end local v10    # "requestUri":Landroid/net/Uri;
    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v24    # "status":I
    .end local v25    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v26

    move-object/from16 v22, v23

    .end local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_5

    .line 185
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v5    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v10    # "requestUri":Landroid/net/Uri;
    .restart local v25    # "uriBuilder":Landroid/net/Uri$Builder;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v23, v22

    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_4

    .end local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v5    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v24    # "status":I
    :catch_2
    move-exception v3

    move-object v4, v5

    .end local v5    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_4

    .end local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v23    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v21    # "response":Ljava/lang/String;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_6
    move-object v4, v5

    .end local v5    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v4    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto/16 :goto_3
.end method
