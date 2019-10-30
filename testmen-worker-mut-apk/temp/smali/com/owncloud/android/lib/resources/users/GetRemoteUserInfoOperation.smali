.class public Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "GetRemoteUserInfoOperation.java"


# static fields
.field private static final NODE_ADDRESS:Ljava/lang/String; = "address"

.field private static final NODE_DATA:Ljava/lang/String; = "data"

.field private static final NODE_DISPLAY_NAME:Ljava/lang/String; = "display-name"

.field private static final NODE_DISPLAY_NAME_ALT:Ljava/lang/String; = "displayname"

.field private static final NODE_EMAIL:Ljava/lang/String; = "email"

.field private static final NODE_ENABLED:Ljava/lang/String; = "enabled"

.field private static final NODE_ID:Ljava/lang/String; = "id"

.field private static final NODE_OCS:Ljava/lang/String; = "ocs"

.field private static final NODE_PHONE:Ljava/lang/String; = "phone"

.field private static final NODE_QUOTA:Ljava/lang/String; = "quota"

.field private static final NODE_QUOTA_FREE:Ljava/lang/String; = "free"

.field private static final NODE_QUOTA_RELATIVE:Ljava/lang/String; = "relative"

.field private static final NODE_QUOTA_TOTAL:Ljava/lang/String; = "total"

.field private static final NODE_QUOTA_USED:Ljava/lang/String; = "used"

.field private static final NODE_TWITTER:Ljava/lang/String; = "twitter"

.field private static final NODE_WEBPAGE:Ljava/lang/String; = "webpage"

.field private static final OCS_ROUTE_SEARCH:Ljava/lang/String; = "/ocs/v1.php/cloud/users/"

.field private static final OCS_ROUTE_SELF:Ljava/lang/String; = "/ocs/v1.php/cloud/user"

.field public static final QUOTA_LIMIT_INFO_NOT_AVAILABLE:J = -0x8000000000000000L

.field public static final SPACE_NOT_COMPUTED:J = -0x1L

.field public static final SPACE_UNKNOWN:J = -0x2L

.field public static final SPACE_UNLIMITED:J = -0x3L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private userID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->userID:Ljava/lang/String;

    .line 108
    return-void
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 242
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
    .locals 35
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 112
    const/16 v28, 0x0

    .line 113
    .local v28, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/16 v30, -0x1

    .line 114
    .local v30, "status":I
    const/16 v16, 0x0

    .line 116
    .local v16, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getOwnCloudVersion()Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-result-object v33

    .line 117
    .local v33, "version":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    if-eqz v33, :cond_8

    invoke-virtual/range {v33 .. v33}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->isSelfSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v34, 0x1

    .line 119
    .local v34, "versionWithSelfAPI":Z
    :goto_0
    const-string v31, ""

    .line 121
    .local v31, "url":Ljava/lang/String;
    if-nez v34, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->userID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ocs/v1.php/cloud/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->userID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 128
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v2

    check-cast v2, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;

    .line 133
    .local v2, "credentials":Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;
    :try_start_0
    new-instance v17, Lorg/apache/commons/httpclient/methods/GetMethod;

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    .end local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .local v17, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :try_start_1
    const-string v3, "OCS-APIREQUEST"

    const-string v4, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/httpclient/methods/GetMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/commons/httpclient/NameValuePair;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v6, "format"

    const-string v7, "json"

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->setQueryString([Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 136
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v30

    .line 138
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->isSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 139
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v27

    .line 140
    .local v27, "response":Ljava/lang/String;
    sget-object v3, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successful response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    .local v25, "respJSON":Lorg/json/JSONObject;
    const-string v3, "ocs"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 145
    .local v26, "respOCS":Lorg/json/JSONObject;
    const-string v3, "data"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 147
    .local v24, "respData":Lorg/json/JSONObject;
    new-instance v32, Lcom/owncloud/android/lib/common/UserInfo;

    invoke-direct/range {v32 .. v32}, Lcom/owncloud/android/lib/common/UserInfo;-><init>()V

    .line 150
    .local v32, "userInfo":Lcom/owncloud/android/lib/common/UserInfo;
    const-string v3, "id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 151
    const-string v3, "id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/UserInfo;->setId(Ljava/lang/String;)V

    .line 161
    :goto_2
    const-string v3, "display-name"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 162
    const-string v3, "display-name"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/UserInfo;->setDisplayName(Ljava/lang/String;)V

    .line 167
    :goto_3
    const-string v3, "email"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "email"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "email"

    .line 168
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    const-string v3, "email"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/UserInfo;->setEmail(Ljava/lang/String;)V

    .line 172
    :cond_0
    const-string v3, "quota"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "quota"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    const-string v3, "quota"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 174
    .local v18, "quota":Lorg/json/JSONObject;
    const-string v3, "free"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 175
    .local v19, "quotaFree":Ljava/lang/Long;
    const-string v3, "used"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 176
    .local v22, "quotaUsed":Ljava/lang/Long;
    const-string v3, "total"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 177
    .local v21, "quotaTotal":Ljava/lang/Long;
    const-string v3, "relative"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v20

    .line 181
    .local v20, "quotaRelative":Ljava/lang/Double;
    :try_start_2
    const-string v3, "quota"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v23

    .line 187
    .local v23, "quotaValue":Ljava/lang/Long;
    :goto_4
    :try_start_3
    new-instance v3, Lcom/owncloud/android/lib/common/Quota;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct/range {v3 .. v13}, Lcom/owncloud/android/lib/common/Quota;-><init>(JJJDJ)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/UserInfo;->setQuota(Lcom/owncloud/android/lib/common/Quota;)V

    .line 190
    .end local v18    # "quota":Lorg/json/JSONObject;
    .end local v19    # "quotaFree":Ljava/lang/Long;
    .end local v20    # "quotaRelative":Ljava/lang/Double;
    .end local v21    # "quotaTotal":Ljava/lang/Long;
    .end local v22    # "quotaUsed":Ljava/lang/Long;
    .end local v23    # "quotaValue":Ljava/lang/Long;
    :cond_1
    const-string v3, "phone"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "phone"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "phone"

    .line 191
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 192
    const-string v3, "phone"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/UserInfo;->setPhone(Ljava/lang/String;)V

    .line 195
    :cond_2
    const-string v3, "address"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "address"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "address"

    .line 196
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 197
    const-string v3, "address"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/UserInfo;->setAddress(Ljava/lang/String;)V

    .line 200
    :cond_3
    const-string v3, "webpage"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "webpage"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "webpage"

    .line 201
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 202
    const-string v3, "webpage"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/UserInfo;->setWebpage(Ljava/lang/String;)V

    .line 205
    :cond_4
    const-string v3, "twitter"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "twitter"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "twitter"

    .line 206
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 207
    const-string v3, "twitter"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/UserInfo;->setTwitter(Ljava/lang/String;)V

    .line 210
    :cond_5
    const-string v3, "enabled"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 211
    const-string v3, "enabled"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/UserInfo;->setEnabled(Ljava/lang/Boolean;)V

    .line 215
    :cond_6
    new-instance v29, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v3, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    .end local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v29, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v14, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v28, v29

    .line 234
    .end local v14    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v24    # "respData":Lorg/json/JSONObject;
    .end local v25    # "respJSON":Lorg/json/JSONObject;
    .end local v26    # "respOCS":Lorg/json/JSONObject;
    .end local v29    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v32    # "userInfo":Lcom/owncloud/android/lib/common/UserInfo;
    .restart local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_5
    if-eqz v17, :cond_10

    .line 235
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    move-object/from16 v16, v17

    .line 238
    .end local v17    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v27    # "response":Ljava/lang/String;
    .restart local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :cond_7
    :goto_6
    return-object v28

    .line 117
    .end local v2    # "credentials":Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;
    .end local v31    # "url":Ljava/lang/String;
    .end local v34    # "versionWithSelfAPI":Z
    :cond_8
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 124
    .restart local v31    # "url":Ljava/lang/String;
    .restart local v34    # "versionWithSelfAPI":Z
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ocs/v1.php/cloud/user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1

    .line 153
    .end local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v2    # "credentials":Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;
    .restart local v17    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v24    # "respData":Lorg/json/JSONObject;
    .restart local v25    # "respJSON":Lorg/json/JSONObject;
    .restart local v26    # "respOCS":Lorg/json/JSONObject;
    .restart local v27    # "response":Ljava/lang/String;
    .restart local v32    # "userInfo":Lcom/owncloud/android/lib/common/UserInfo;
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->userID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 154
    invoke-virtual {v2}, Lcom/owncloud/android/lib/common/OwnCloudBasicCredentials;->getUsername()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/UserInfo;->setId(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 230
    .end local v24    # "respData":Lorg/json/JSONObject;
    .end local v25    # "respJSON":Lorg/json/JSONObject;
    .end local v26    # "respOCS":Lorg/json/JSONObject;
    .end local v27    # "response":Ljava/lang/String;
    .end local v32    # "userInfo":Lcom/owncloud/android/lib/common/UserInfo;
    :catch_0
    move-exception v15

    move-object/from16 v16, v17

    .end local v17    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v29, v28

    .line 231
    .end local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v15, "e":Ljava/lang/Exception;
    .restart local v29    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_7
    :try_start_6
    new-instance v28, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v0, v28

    invoke-direct {v0, v15}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 232
    .end local v29    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_7
    sget-object v3, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->TAG:Ljava/lang/String;

    const-string v4, "Exception while getting OC user information"

    invoke-static {v3, v4, v15}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 234
    if-eqz v16, :cond_7

    .line 235
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    goto :goto_6

    .line 156
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v17    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v24    # "respData":Lorg/json/JSONObject;
    .restart local v25    # "respJSON":Lorg/json/JSONObject;
    .restart local v26    # "respOCS":Lorg/json/JSONObject;
    .restart local v27    # "response":Ljava/lang/String;
    .restart local v32    # "userInfo":Lcom/owncloud/android/lib/common/UserInfo;
    :cond_b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->userID:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/UserInfo;->setId(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 234
    .end local v24    # "respData":Lorg/json/JSONObject;
    .end local v25    # "respJSON":Lorg/json/JSONObject;
    .end local v26    # "respOCS":Lorg/json/JSONObject;
    .end local v27    # "response":Ljava/lang/String;
    .end local v32    # "userInfo":Lcom/owncloud/android/lib/common/UserInfo;
    :catchall_0
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :goto_8
    if-eqz v16, :cond_c

    .line 235
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    :cond_c
    throw v3

    .line 164
    .end local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v17    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v24    # "respData":Lorg/json/JSONObject;
    .restart local v25    # "respJSON":Lorg/json/JSONObject;
    .restart local v26    # "respOCS":Lorg/json/JSONObject;
    .restart local v27    # "response":Ljava/lang/String;
    .restart local v32    # "userInfo":Lcom/owncloud/android/lib/common/UserInfo;
    :cond_d
    :try_start_9
    const-string v3, "displayname"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/owncloud/android/lib/common/UserInfo;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 182
    .restart local v18    # "quota":Lorg/json/JSONObject;
    .restart local v19    # "quotaFree":Ljava/lang/Long;
    .restart local v20    # "quotaRelative":Ljava/lang/Double;
    .restart local v21    # "quotaTotal":Ljava/lang/Long;
    .restart local v22    # "quotaUsed":Ljava/lang/Long;
    :catch_1
    move-exception v15

    .line 183
    .local v15, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->TAG:Ljava/lang/String;

    const-string v4, "Legacy server in use < Nextcloud 9.0.54"

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-wide/high16 v4, -0x8000000000000000L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .restart local v23    # "quotaValue":Ljava/lang/Long;
    goto/16 :goto_4

    .line 221
    .end local v15    # "e":Lorg/json/JSONException;
    .end local v18    # "quota":Lorg/json/JSONObject;
    .end local v19    # "quotaFree":Ljava/lang/Long;
    .end local v20    # "quotaRelative":Ljava/lang/Double;
    .end local v21    # "quotaTotal":Ljava/lang/Long;
    .end local v22    # "quotaUsed":Ljava/lang/Long;
    .end local v23    # "quotaValue":Ljava/lang/Long;
    .end local v24    # "respData":Lorg/json/JSONObject;
    .end local v25    # "respJSON":Lorg/json/JSONObject;
    .end local v26    # "respOCS":Lorg/json/JSONObject;
    .end local v27    # "response":Ljava/lang/String;
    .end local v32    # "userInfo":Lcom/owncloud/android/lib/common/UserInfo;
    :cond_e
    new-instance v29, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 222
    .end local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v29    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v27

    .line 223
    .restart local v27    # "response":Ljava/lang/String;
    sget-object v3, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->TAG:Ljava/lang/String;

    const-string v4, "Failed response while getting user information "

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    if-eqz v27, :cond_f

    .line 225
    sget-object v3, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; response message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v28, v29

    .end local v29    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_5

    .line 227
    .end local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v29    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_f
    sget-object v3, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v28, v29

    .end local v29    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_5

    .line 234
    .end local v17    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v27    # "response":Ljava/lang/String;
    .restart local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catchall_1
    move-exception v3

    goto/16 :goto_8

    .end local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v17    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v29    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_2
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v28, v29

    .end local v29    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_8

    .end local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v15, "e":Ljava/lang/Exception;
    .restart local v29    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v3

    move-object/from16 v28, v29

    .end local v29    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_8

    .line 230
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v15

    move-object/from16 v29, v28

    .end local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v29    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_7

    .end local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v17    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :catch_3
    move-exception v15

    move-object/from16 v16, v17

    .end local v17    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto/16 :goto_7

    .end local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v29    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v17    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v27    # "response":Ljava/lang/String;
    .restart local v28    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_10
    move-object/from16 v16, v17

    .end local v17    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v16    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto/16 :goto_6
.end method
