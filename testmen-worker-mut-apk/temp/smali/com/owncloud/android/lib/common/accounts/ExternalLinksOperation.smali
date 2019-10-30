.class public Lcom/owncloud/android/lib/common/accounts/ExternalLinksOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "ExternalLinksOperation.java"


# static fields
.field private static final NODE_DATA:Ljava/lang/String; = "data"

.field private static final NODE_ICON:Ljava/lang/String; = "icon"

.field private static final NODE_ID:Ljava/lang/String; = "id"

.field private static final NODE_LANGUAGE:Ljava/lang/String; = "lang"

.field private static final NODE_NAME:Ljava/lang/String; = "name"

.field private static final NODE_OCS:Ljava/lang/String; = "ocs"

.field private static final NODE_TYPE:Ljava/lang/String; = "type"

.field private static final NODE_URL:Ljava/lang/String; = "url"

.field private static final OCS_ROUTE_EXTERNAL_LINKS:Ljava/lang/String; = "/ocs/v2.php/apps/external/api/v1"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/owncloud/android/lib/common/accounts/ExternalLinksOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/accounts/ExternalLinksOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    return-void
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 154
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
    .line 64
    const/16 v21, 0x0

    .line 65
    .local v21, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/16 v24, -0x1

    .line 66
    .local v24, "status":I
    const/4 v13, 0x0

    .line 67
    .local v13, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v25, "/ocs/v2.php/apps/external/api/v1"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 71
    .local v19, "ocsUrl":Ljava/lang/String;
    :try_start_0
    new-instance v15, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;

    invoke-direct {v15}, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;-><init>()V

    .line 72
    .local v15, "getCapabilities":Lcom/owncloud/android/lib/common/operations/RemoteOperation;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->execute(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v10

    .line 73
    .local v10, "capabilitiesResult":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    invoke-virtual {v10}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getData()Ljava/util/ArrayList;

    move-result-object v3

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/owncloud/android/lib/resources/status/OCCapability;

    .line 75
    .local v11, "capability":Lcom/owncloud/android/lib/resources/status/OCCapability;
    invoke-virtual {v11}, Lcom/owncloud/android/lib/resources/status/OCCapability;->getExternalLinks()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->isTrue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 77
    new-instance v14, Lorg/apache/commons/httpclient/methods/GetMethod;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .local v14, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :try_start_1
    const-string v3, "OCS-APIREQUEST"

    const-string v25, "true"

    move-object/from16 v0, v25

    invoke-virtual {v14, v3, v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/commons/httpclient/NameValuePair;

    const/16 v25, 0x0

    new-instance v26, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v27, "format"

    const-string v28, "json"

    invoke-direct/range {v26 .. v28}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v26, v3, v25

    invoke-virtual {v14, v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->setQueryString([Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 80
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v24

    .line 82
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/common/accounts/ExternalLinksOperation;->isSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    invoke-virtual {v14}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v20

    .line 84
    .local v20, "response":Ljava/lang/String;
    sget-object v3, Lcom/owncloud/android/lib/common/accounts/ExternalLinksOperation;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Successful response: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v25, "ocs"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v25, "data"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 89
    .local v18, "links":Lorg/json/JSONArray;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v23, "resultLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_2

    .line 92
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 94
    .local v17, "link":Lorg/json/JSONObject;
    if-eqz v17, :cond_1

    .line 95
    const-string v3, "id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 96
    .local v4, "id":Ljava/lang/Integer;
    const-string v3, "icon"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "iconUrl":Ljava/lang/String;
    const-string v3, "lang"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "language":Ljava/lang/String;
    const-string v3, "type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/4 v3, -0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->hashCode()I

    move-result v26

    sparse-switch v26, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 111
    sget-object v7, Lcom/owncloud/android/lib/common/ExternalLinkType;->UNKNOWN:Lcom/owncloud/android/lib/common/ExternalLinkType;

    .line 116
    .local v7, "type":Lcom/owncloud/android/lib/common/ExternalLinkType;
    :goto_2
    const-string v3, "name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "name":Ljava/lang/String;
    const-string v3, "url"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, "url":Ljava/lang/String;
    new-instance v3, Lcom/owncloud/android/lib/common/ExternalLink;

    invoke-direct/range {v3 .. v9}, Lcom/owncloud/android/lib/common/ExternalLink;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/owncloud/android/lib/common/ExternalLinkType;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v4    # "id":Ljava/lang/Integer;
    .end local v5    # "iconUrl":Ljava/lang/String;
    .end local v6    # "language":Ljava/lang/String;
    .end local v7    # "type":Lcom/owncloud/android/lib/common/ExternalLinkType;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 100
    .restart local v4    # "id":Ljava/lang/Integer;
    .restart local v5    # "iconUrl":Ljava/lang/String;
    .restart local v6    # "language":Ljava/lang/String;
    :sswitch_0
    const-string v26, "link"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v26, "settings"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v26, "quota"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    .line 102
    :pswitch_0
    sget-object v7, Lcom/owncloud/android/lib/common/ExternalLinkType;->LINK:Lcom/owncloud/android/lib/common/ExternalLinkType;

    .line 103
    .restart local v7    # "type":Lcom/owncloud/android/lib/common/ExternalLinkType;
    goto :goto_2

    .line 105
    .end local v7    # "type":Lcom/owncloud/android/lib/common/ExternalLinkType;
    :pswitch_1
    sget-object v7, Lcom/owncloud/android/lib/common/ExternalLinkType;->SETTINGS:Lcom/owncloud/android/lib/common/ExternalLinkType;

    .line 106
    .restart local v7    # "type":Lcom/owncloud/android/lib/common/ExternalLinkType;
    goto :goto_2

    .line 108
    .end local v7    # "type":Lcom/owncloud/android/lib/common/ExternalLinkType;
    :pswitch_2
    sget-object v7, Lcom/owncloud/android/lib/common/ExternalLinkType;->QUOTA:Lcom/owncloud/android/lib/common/ExternalLinkType;

    .line 109
    .restart local v7    # "type":Lcom/owncloud/android/lib/common/ExternalLinkType;
    goto :goto_2

    .line 123
    .end local v4    # "id":Ljava/lang/Integer;
    .end local v5    # "iconUrl":Ljava/lang/String;
    .end local v6    # "language":Ljava/lang/String;
    .end local v7    # "type":Lcom/owncloud/android/lib/common/ExternalLinkType;
    .end local v17    # "link":Lorg/json/JSONObject;
    :cond_2
    new-instance v22, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v3, 0x1

    invoke-virtual {v14}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v3, v1, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    .end local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v22, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    invoke-virtual/range {v22 .. v23}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v13, v14

    .end local v14    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v21, v22

    .line 145
    .end local v16    # "i":I
    .end local v18    # "links":Lorg/json/JSONArray;
    .end local v20    # "response":Ljava/lang/String;
    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v23    # "resultLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_3
    if-eqz v13, :cond_3

    .line 146
    invoke-virtual {v13}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 150
    .end local v10    # "capabilitiesResult":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v11    # "capability":Lcom/owncloud/android/lib/resources/status/OCCapability;
    .end local v15    # "getCapabilities":Lcom/owncloud/android/lib/common/operations/RemoteOperation;
    :cond_3
    :goto_4
    return-object v21

    .line 127
    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v10    # "capabilitiesResult":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v11    # "capability":Lcom/owncloud/android/lib/resources/status/OCCapability;
    .restart local v14    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v15    # "getCapabilities":Lcom/owncloud/android/lib/common/operations/RemoteOperation;
    :cond_4
    :try_start_3
    new-instance v22, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v3, 0x0

    invoke-virtual {v14}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v3, v1, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    .end local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_4
    invoke-virtual {v14}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v20

    .line 129
    .restart local v20    # "response":Ljava/lang/String;
    sget-object v3, Lcom/owncloud/android/lib/common/accounts/ExternalLinksOperation;->TAG:Ljava/lang/String;

    const-string v25, "Failed response while getting external links "

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz v20, :cond_5

    .line 131
    sget-object v3, Lcom/owncloud/android/lib/common/accounts/ExternalLinksOperation;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "*** status code: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ; response message: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object v13, v14

    .end local v14    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v21, v22

    .line 135
    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_3

    .line 133
    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v14    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_5
    sget-object v3, Lcom/owncloud/android/lib/common/accounts/ExternalLinksOperation;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "*** status code: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 141
    .end local v20    # "response":Ljava/lang/String;
    :catch_0
    move-exception v12

    move-object v13, v14

    .line 142
    .end local v10    # "capabilitiesResult":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v11    # "capability":Lcom/owncloud/android/lib/resources/status/OCCapability;
    .end local v14    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v15    # "getCapabilities":Lcom/owncloud/android/lib/common/operations/RemoteOperation;
    .local v12, "e":Ljava/lang/Exception;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :goto_6
    :try_start_5
    new-instance v21, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 143
    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_6
    sget-object v3, Lcom/owncloud/android/lib/common/accounts/ExternalLinksOperation;->TAG:Ljava/lang/String;

    const-string v25, "Exception while getting external links "

    move-object/from16 v0, v25

    invoke-static {v3, v0, v12}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 145
    if-eqz v13, :cond_3

    .line 146
    invoke-virtual {v13}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    goto/16 :goto_4

    .line 137
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v10    # "capabilitiesResult":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v11    # "capability":Lcom/owncloud/android/lib/resources/status/OCCapability;
    .restart local v15    # "getCapabilities":Lcom/owncloud/android/lib/common/operations/RemoteOperation;
    :cond_6
    :try_start_7
    new-instance v22, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->NOT_AVAILABLE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 138
    .end local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_8
    sget-object v3, Lcom/owncloud/android/lib/common/accounts/ExternalLinksOperation;->TAG:Ljava/lang/String;

    const-string v25, "External links disabled"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v21, v22

    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_3

    .line 145
    .end local v10    # "capabilitiesResult":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v11    # "capability":Lcom/owncloud/android/lib/resources/status/OCCapability;
    .end local v15    # "getCapabilities":Lcom/owncloud/android/lib/common/operations/RemoteOperation;
    :catchall_0
    move-exception v3

    :goto_7
    if-eqz v13, :cond_7

    .line 146
    invoke-virtual {v13}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    :cond_7
    throw v3

    .line 145
    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v10    # "capabilitiesResult":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v11    # "capability":Lcom/owncloud/android/lib/resources/status/OCCapability;
    .restart local v14    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v15    # "getCapabilities":Lcom/owncloud/android/lib/common/operations/RemoteOperation;
    :catchall_1
    move-exception v3

    move-object v13, v14

    .end local v14    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_7

    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v14    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_2
    move-exception v3

    move-object v13, v14

    .end local v14    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v21, v22

    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_7

    .end local v10    # "capabilitiesResult":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v11    # "capability":Lcom/owncloud/android/lib/resources/status/OCCapability;
    .end local v15    # "getCapabilities":Lcom/owncloud/android/lib/common/operations/RemoteOperation;
    .end local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v3

    move-object/from16 v21, v22

    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_7

    .line 141
    :catch_1
    move-exception v12

    move-object/from16 v22, v21

    .end local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_6

    .end local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v10    # "capabilitiesResult":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v11    # "capability":Lcom/owncloud/android/lib/resources/status/OCCapability;
    .restart local v14    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v15    # "getCapabilities":Lcom/owncloud/android/lib/common/operations/RemoteOperation;
    .restart local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catch_2
    move-exception v12

    move-object v13, v14

    .end local v14    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v13    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v22, v21

    .end local v21    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v22    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_6

    :catch_3
    move-exception v12

    goto :goto_6

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x32affa -> :sswitch_0
        0x66f3e78 -> :sswitch_2
        0x5582bc23 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
