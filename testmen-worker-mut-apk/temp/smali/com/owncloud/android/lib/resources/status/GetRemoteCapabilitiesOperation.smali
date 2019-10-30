.class public Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "GetRemoteCapabilitiesOperation.java"


# static fields
.field private static final NODE_CAPABILITIES:Ljava/lang/String; = "capabilities"

.field private static final NODE_CORE:Ljava/lang/String; = "core"

.field private static final NODE_DATA:Ljava/lang/String; = "data"

.field private static final NODE_EXPIRE_DATE:Ljava/lang/String; = "expire_date"

.field private static final NODE_EXTERNAL_LINKS:Ljava/lang/String; = "external"

.field private static final NODE_EXTERNAL_LINKS_SITES:Ljava/lang/String; = "sites"

.field private static final NODE_EXTERNAL_LINKS_V1:Ljava/lang/String; = "v1"

.field private static final NODE_FEDERATION:Ljava/lang/String; = "federation"

.field private static final NODE_FILES:Ljava/lang/String; = "files"

.field private static final NODE_FILES_DROP:Ljava/lang/String; = "upload_files_drop"

.field private static final NODE_FILES_SHARING:Ljava/lang/String; = "files_sharing"

.field private static final NODE_META:Ljava/lang/String; = "meta"

.field private static final NODE_NOTIFICATIONS:Ljava/lang/String; = "notifications"

.field private static final NODE_OCS:Ljava/lang/String; = "ocs"

.field private static final NODE_PASSWORD:Ljava/lang/String; = "password"

.field private static final NODE_PUBLIC:Ljava/lang/String; = "public"

.field private static final NODE_THEMING:Ljava/lang/String; = "theming"

.field private static final NODE_USER:Ljava/lang/String; = "user"

.field private static final NODE_VERSION:Ljava/lang/String; = "version"

.field private static final OCS_ROUTE:Ljava/lang/String; = "ocs/v1.php/cloud/capabilities"

.field private static final PARAM_FORMAT:Ljava/lang/String; = "format"

.field private static final PROPERTY_API_ENABLED:Ljava/lang/String; = "api_enabled"

.field private static final PROPERTY_BIGFILECHUNKING:Ljava/lang/String; = "bigfilechunking"

.field private static final PROPERTY_DAYS:Ljava/lang/String; = "days"

.field private static final PROPERTY_DELETE:Ljava/lang/String; = "delete"

.field private static final PROPERTY_EDITION:Ljava/lang/String; = "edition"

.field private static final PROPERTY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final PROPERTY_ENFORCED:Ljava/lang/String; = "enforced"

.field private static final PROPERTY_GET:Ljava/lang/String; = "get"

.field private static final PROPERTY_ICONS:Ljava/lang/String; = "icons"

.field private static final PROPERTY_INCOMING:Ljava/lang/String; = "incoming"

.field private static final PROPERTY_LIST:Ljava/lang/String; = "list"

.field private static final PROPERTY_MAJOR:Ljava/lang/String; = "major"

.field private static final PROPERTY_MESSAGE:Ljava/lang/String; = "message"

.field private static final PROPERTY_MICRO:Ljava/lang/String; = "micro"

.field private static final PROPERTY_MINOR:Ljava/lang/String; = "minor"

.field private static final PROPERTY_OCSENDPOINT:Ljava/lang/String; = "ocs-endpoints"

.field private static final PROPERTY_OUTGOING:Ljava/lang/String; = "outgoing"

.field private static final PROPERTY_POLLINTERVAL:Ljava/lang/String; = "pollinterval"

.field private static final PROPERTY_RESHARING:Ljava/lang/String; = "resharing"

.field private static final PROPERTY_RICH_STRINGS:Ljava/lang/String; = "rich-strings"

.field private static final PROPERTY_SEND_MAIL:Ljava/lang/String; = "send_mail"

.field private static final PROPERTY_SERVERBACKGROUND:Ljava/lang/String; = "background"

.field private static final PROPERTY_SERVERCOLOR:Ljava/lang/String; = "color"

.field private static final PROPERTY_SERVERLOGO:Ljava/lang/String; = "logo"

.field private static final PROPERTY_SERVERNAME:Ljava/lang/String; = "name"

.field private static final PROPERTY_SERVERSLOGAN:Ljava/lang/String; = "slogan"

.field private static final PROPERTY_STATUS:Ljava/lang/String; = "status"

.field private static final PROPERTY_STATUSCODE:Ljava/lang/String; = "statuscode"

.field private static final PROPERTY_STRING:Ljava/lang/String; = "string"

.field private static final PROPERTY_UNDELETE:Ljava/lang/String; = "undelete"

.field private static final PROPERTY_UPLOAD:Ljava/lang/String; = "upload"

.field private static final PROPERTY_VERSIONING:Ljava/lang/String; = "versioning"

.field private static final TAG:Ljava/lang/String;

.field private static final VALUE_FORMAT:Ljava/lang/String; = "json"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 135
    return-void
.end method

.method private isSuccess(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 363
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
    .locals 43
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 139
    const/16 v34, 0x0

    .line 141
    .local v34, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v9, 0x0

    .line 144
    .local v9, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v14

    .line 145
    .local v14, "requestUri":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v39

    .line 146
    .local v39, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v40, "ocs/v1.php/cloud/capabilities"

    invoke-virtual/range {v39 .. v40}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 147
    const-string v40, "format"

    const-string v41, "json"

    invoke-virtual/range {v39 .. v41}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 150
    new-instance v10, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-direct {v10, v0}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v9    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .local v10, "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :try_start_1
    const-string v40, "OCS-APIREQUEST"

    const-string v41, "true"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/httpclient/methods/GetMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v36

    .line 155
    .local v36, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->isSuccess(I)Z

    move-result v40

    if-eqz v40, :cond_19

    .line 156
    invoke-virtual {v10}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v33

    .line 157
    .local v33, "response":Ljava/lang/String;
    sget-object v40, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Successful response: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v24, Lorg/json/JSONObject;

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    .local v24, "respJSON":Lorg/json/JSONObject;
    const-string v40, "ocs"

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 162
    .local v28, "respOCS":Lorg/json/JSONObject;
    const-string v40, "meta"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 163
    .local v25, "respMeta":Lorg/json/JSONObject;
    const-string v40, "data"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 166
    .local v17, "respData":Lorg/json/JSONObject;
    const-string v40, "status"

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v41, "ok"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    .line 167
    .local v37, "statusProp":Z
    const-string v40, "statuscode"

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v38

    .line 168
    .local v38, "statuscode":I
    const-string v40, "message"

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 170
    .local v12, "message":Ljava/lang/String;
    if-eqz v37, :cond_18

    .line 171
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v6, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v5, Lcom/owncloud/android/lib/resources/status/OCCapability;

    invoke-direct {v5}, Lcom/owncloud/android/lib/resources/status/OCCapability;-><init>()V

    .line 174
    .local v5, "capability":Lcom/owncloud/android/lib/resources/status/OCCapability;
    const-string v40, "version"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 175
    const-string v40, "version"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v32

    .line 176
    .local v32, "respVersion":Lorg/json/JSONObject;
    const-string v40, "major"

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setVersionMayor(I)V

    .line 177
    const-string v40, "minor"

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setVersionMinor(I)V

    .line 178
    const-string v40, "micro"

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setVersionMicro(I)V

    .line 179
    const-string v40, "string"

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setVersionString(Ljava/lang/String;)V

    .line 180
    const-string v40, "edition"

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setVersionEdition(Ljava/lang/String;)V

    .line 181
    sget-object v40, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    const-string v41, "*** Added version"

    invoke-static/range {v40 .. v41}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v32    # "respVersion":Lorg/json/JSONObject;
    :cond_0
    const-string v40, "capabilities"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_14

    .line 186
    const-string v40, "capabilities"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 189
    .local v15, "respCapabilities":Lorg/json/JSONObject;
    const-string v40, "core"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1

    .line 190
    const-string v40, "core"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 191
    .local v16, "respCore":Lorg/json/JSONObject;
    const-string v40, "pollinterval"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setCorePollinterval(I)V

    .line 192
    sget-object v40, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    const-string v41, "*** Added core"

    invoke-static/range {v40 .. v41}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local v16    # "respCore":Lorg/json/JSONObject;
    :cond_1
    const-string v40, "files_sharing"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_a

    .line 197
    const-string v40, "files_sharing"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 198
    .local v23, "respFilesSharing":Lorg/json/JSONObject;
    const-string v40, "api_enabled"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 199
    const-string v40, "api_enabled"

    .line 200
    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 199
    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesSharingApiEnabled(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 203
    :cond_2
    const-string v40, "public"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 204
    const-string v40, "public"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    .line 205
    .local v29, "respPublic":Lorg/json/JSONObject;
    const-string v40, "enabled"

    .line 206
    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 205
    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesSharingPublicEnabled(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 207
    const-string v40, "password"

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3

    .line 208
    const-string v40, "password"

    .line 210
    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v40

    const-string v41, "enforced"

    invoke-virtual/range {v40 .. v41}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 209
    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    .line 208
    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesSharingPublicPasswordEnforced(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 212
    :cond_3
    const-string v40, "upload_files_drop"

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 213
    const-string v40, "upload_files_drop"

    .line 215
    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 214
    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    .line 213
    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesFileDrop(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 218
    :cond_4
    const-string v40, "expire_date"

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6

    .line 219
    const-string v40, "expire_date"

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 220
    .local v18, "respExpireDate":Lorg/json/JSONObject;
    const-string v40, "enabled"

    .line 222
    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 221
    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    .line 220
    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesSharingPublicExpireDateEnabled(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 223
    const-string v40, "days"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5

    .line 224
    const-string v40, "days"

    .line 225
    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v40

    .line 224
    move/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesSharingPublicExpireDateDays(I)V

    .line 227
    :cond_5
    const-string v40, "enforced"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6

    .line 228
    const-string v40, "enforced"

    .line 230
    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 229
    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    .line 228
    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesSharingPublicExpireDateEnforced(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 233
    .end local v18    # "respExpireDate":Lorg/json/JSONObject;
    :cond_6
    const-string v40, "upload"

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 234
    const-string v40, "upload"

    .line 235
    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 234
    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesSharingPublicUpload(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 239
    .end local v29    # "respPublic":Lorg/json/JSONObject;
    :cond_7
    const-string v40, "user"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_8

    .line 240
    const-string v40, "user"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v31

    .line 241
    .local v31, "respUser":Lorg/json/JSONObject;
    const-string v40, "send_mail"

    .line 242
    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 241
    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesSharingUserSendMail(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 245
    .end local v31    # "respUser":Lorg/json/JSONObject;
    :cond_8
    const-string v40, "resharing"

    .line 246
    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 245
    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesSharingResharing(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 247
    const-string v40, "federation"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_9

    .line 248
    const-string v40, "federation"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 249
    .local v21, "respFederation":Lorg/json/JSONObject;
    const-string v40, "outgoing"

    .line 250
    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    .line 249
    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesSharingFederationOutgoing(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 251
    const-string v40, "incoming"

    .line 252
    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 251
    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesSharingFederationIncoming(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 254
    .end local v21    # "respFederation":Lorg/json/JSONObject;
    :cond_9
    sget-object v40, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    const-string v41, "*** Added files_sharing"

    invoke-static/range {v40 .. v41}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v23    # "respFilesSharing":Lorg/json/JSONObject;
    :cond_a
    const-string v40, "files"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_d

    .line 259
    const-string v40, "files"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 261
    .local v22, "respFiles":Lorg/json/JSONObject;
    const-string v40, "bigfilechunking"

    .line 262
    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 261
    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesBigFileChuncking(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 263
    const-string v40, "undelete"

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_b

    .line 264
    const-string v40, "undelete"

    .line 265
    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 264
    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesUndelete(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 268
    :cond_b
    const-string v40, "versioning"

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_c

    .line 269
    const-string v40, "versioning"

    .line 270
    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    .line 269
    invoke-static/range {v40 .. v40}, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->fromBooleanValue(Z)Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setFilesVersioning(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 273
    :cond_c
    sget-object v40, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    const-string v41, "*** Added files"

    invoke-static/range {v40 .. v41}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .end local v22    # "respFiles":Lorg/json/JSONObject;
    :cond_d
    const-string v40, "theming"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_10

    .line 277
    const-string v40, "theming"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v30

    .line 279
    .local v30, "respTheming":Lorg/json/JSONObject;
    const-string v40, "name"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setServerName(Ljava/lang/String;)V

    .line 280
    const-string v40, "slogan"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setServerSlogan(Ljava/lang/String;)V

    .line 281
    const-string v40, "color"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setServerColor(Ljava/lang/String;)V

    .line 282
    const-string v40, "logo"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_e

    const-string v40, "logo"

    .line 283
    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_e

    .line 284
    const-string v40, "logo"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setServerLogo(Ljava/lang/String;)V

    .line 286
    :cond_e
    const-string v40, "background"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_f

    const-string v40, "background"

    .line 287
    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_f

    .line 288
    const-string v40, "background"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setServerBackground(Ljava/lang/String;)V

    .line 290
    :cond_f
    sget-object v40, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    const-string v41, "*** Added theming"

    invoke-static/range {v40 .. v41}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .end local v30    # "respTheming":Lorg/json/JSONObject;
    :cond_10
    const-string v40, "notifications"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_13

    .line 294
    const-string v40, "notifications"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 295
    .local v27, "respNotifications":Lorg/json/JSONObject;
    const-string v40, "ocs-endpoints"

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v26

    .line 297
    .local v26, "respNotificationSupportArray":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v40

    move/from16 v0, v40

    if-ge v11, v0, :cond_12

    .line 298
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 299
    .local v13, "propertyString":Ljava/lang/String;
    const-string v40, "rich-strings"

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_11

    const-string v40, "icons"

    .line 300
    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_16

    .line 301
    :cond_11
    sget-object v40, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->TRUE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setSupportsNotificationsV2(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 305
    .end local v13    # "propertyString":Ljava/lang/String;
    :cond_12
    invoke-virtual {v5}, Lcom/owncloud/android/lib/resources/status/OCCapability;->getSupportsNotificationsV2()Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-result-object v40

    sget-object v41, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->TRUE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_13

    .line 306
    sget-object v40, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->TRUE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setSupportsNotificationsV1(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 310
    .end local v11    # "i":I
    .end local v26    # "respNotificationSupportArray":Lorg/json/JSONArray;
    .end local v27    # "respNotifications":Lorg/json/JSONObject;
    :cond_13
    const-string v40, "external"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_14

    .line 311
    const-string v40, "external"

    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 313
    .local v19, "respExternalLinks":Lorg/json/JSONObject;
    const-string v40, "v1"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_14

    .line 314
    const-string v40, "v1"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 316
    .local v20, "respExternalLinksV1":Lorg/json/JSONArray;
    const/16 v40, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 318
    .local v8, "element":Ljava/lang/String;
    const-string v40, "sites"

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_17

    .line 319
    sget-object v40, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->TRUE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setExternalLinks(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V

    .line 328
    .end local v8    # "element":Ljava/lang/String;
    .end local v15    # "respCapabilities":Lorg/json/JSONObject;
    .end local v19    # "respExternalLinks":Lorg/json/JSONObject;
    .end local v20    # "respExternalLinksV1":Lorg/json/JSONArray;
    :cond_14
    :goto_1
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v35, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/16 v40, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v40

    invoke-direct {v0, v1, v10}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    .end local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v35, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V

    .line 332
    sget-object v40, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    const-string v41, "*** Get Capabilities completed "

    invoke-static/range {v40 .. v41}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v34, v35

    .line 355
    .end local v5    # "capability":Lcom/owncloud/android/lib/resources/status/OCCapability;
    .end local v6    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v12    # "message":Ljava/lang/String;
    .end local v17    # "respData":Lorg/json/JSONObject;
    .end local v24    # "respJSON":Lorg/json/JSONObject;
    .end local v25    # "respMeta":Lorg/json/JSONObject;
    .end local v28    # "respOCS":Lorg/json/JSONObject;
    .end local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v37    # "statusProp":Z
    .end local v38    # "statuscode":I
    .restart local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    if-eqz v10, :cond_1c

    .line 356
    invoke-virtual {v10}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    move-object v9, v10

    .line 359
    .end local v10    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v14    # "requestUri":Landroid/net/Uri;
    .end local v33    # "response":Ljava/lang/String;
    .end local v36    # "status":I
    .end local v39    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    :cond_15
    :goto_3
    return-object v34

    .line 297
    .end local v9    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v5    # "capability":Lcom/owncloud/android/lib/resources/status/OCCapability;
    .restart local v6    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v10    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v11    # "i":I
    .restart local v12    # "message":Ljava/lang/String;
    .restart local v13    # "propertyString":Ljava/lang/String;
    .restart local v14    # "requestUri":Landroid/net/Uri;
    .restart local v15    # "respCapabilities":Lorg/json/JSONObject;
    .restart local v17    # "respData":Lorg/json/JSONObject;
    .restart local v24    # "respJSON":Lorg/json/JSONObject;
    .restart local v25    # "respMeta":Lorg/json/JSONObject;
    .restart local v26    # "respNotificationSupportArray":Lorg/json/JSONArray;
    .restart local v27    # "respNotifications":Lorg/json/JSONObject;
    .restart local v28    # "respOCS":Lorg/json/JSONObject;
    .restart local v33    # "response":Ljava/lang/String;
    .restart local v36    # "status":I
    .restart local v37    # "statusProp":Z
    .restart local v38    # "statuscode":I
    .restart local v39    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 321
    .end local v11    # "i":I
    .end local v13    # "propertyString":Ljava/lang/String;
    .end local v26    # "respNotificationSupportArray":Lorg/json/JSONArray;
    .end local v27    # "respNotifications":Lorg/json/JSONObject;
    .restart local v8    # "element":Ljava/lang/String;
    .restart local v19    # "respExternalLinks":Lorg/json/JSONObject;
    .restart local v20    # "respExternalLinksV1":Lorg/json/JSONArray;
    :cond_17
    :try_start_3
    sget-object v40, Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;->FALSE:Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/owncloud/android/lib/resources/status/OCCapability;->setExternalLinks(Lcom/owncloud/android/lib/resources/status/CapabilityBooleanType;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 350
    .end local v5    # "capability":Lcom/owncloud/android/lib/resources/status/OCCapability;
    .end local v6    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v8    # "element":Ljava/lang/String;
    .end local v12    # "message":Ljava/lang/String;
    .end local v15    # "respCapabilities":Lorg/json/JSONObject;
    .end local v17    # "respData":Lorg/json/JSONObject;
    .end local v19    # "respExternalLinks":Lorg/json/JSONObject;
    .end local v20    # "respExternalLinksV1":Lorg/json/JSONArray;
    .end local v24    # "respJSON":Lorg/json/JSONObject;
    .end local v25    # "respMeta":Lorg/json/JSONObject;
    .end local v28    # "respOCS":Lorg/json/JSONObject;
    .end local v33    # "response":Ljava/lang/String;
    .end local v36    # "status":I
    .end local v37    # "statusProp":Z
    .end local v38    # "statuscode":I
    :catch_0
    move-exception v7

    move-object v9, v10

    .end local v10    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v9    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v35, v34

    .line 351
    .end local v14    # "requestUri":Landroid/net/Uri;
    .end local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v39    # "uriBuilder":Landroid/net/Uri$Builder;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_4
    :try_start_4
    new-instance v34, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-object/from16 v0, v34

    invoke-direct {v0, v7}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 352
    .end local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_5
    sget-object v40, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    const-string v41, "Exception while getting capabilities"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v7}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 355
    if-eqz v9, :cond_15

    .line 356
    invoke-virtual {v9}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    goto :goto_3

    .line 334
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v10    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v12    # "message":Ljava/lang/String;
    .restart local v14    # "requestUri":Landroid/net/Uri;
    .restart local v17    # "respData":Lorg/json/JSONObject;
    .restart local v24    # "respJSON":Lorg/json/JSONObject;
    .restart local v25    # "respMeta":Lorg/json/JSONObject;
    .restart local v28    # "respOCS":Lorg/json/JSONObject;
    .restart local v33    # "response":Ljava/lang/String;
    .restart local v36    # "status":I
    .restart local v37    # "statusProp":Z
    .restart local v38    # "statuscode":I
    .restart local v39    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_18
    :try_start_6
    new-instance v35, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v37

    move/from16 v2, v38

    move-object/from16 v3, v40

    move-object/from16 v4, v41

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZILjava/lang/String;[Lorg/apache/commons/httpclient/Header;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 335
    .end local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_7
    sget-object v40, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    const-string v41, "Failed response while getting capabilities from the server "

    invoke-static/range {v40 .. v41}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v40, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "*** status: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "; message: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v12    # "message":Ljava/lang/String;
    .end local v17    # "respData":Lorg/json/JSONObject;
    .end local v24    # "respJSON":Lorg/json/JSONObject;
    .end local v25    # "respMeta":Lorg/json/JSONObject;
    .end local v28    # "respOCS":Lorg/json/JSONObject;
    .end local v37    # "statusProp":Z
    .end local v38    # "statuscode":I
    :goto_5
    move-object/from16 v34, v35

    .end local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .line 340
    .end local v33    # "response":Ljava/lang/String;
    :cond_19
    :try_start_8
    new-instance v35, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v40

    invoke-direct {v0, v1, v10}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 341
    .end local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_9
    invoke-virtual {v10}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v33

    .line 342
    .restart local v33    # "response":Ljava/lang/String;
    sget-object v40, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    const-string v41, "Failed response while getting capabilities from the server "

    invoke-static/range {v40 .. v41}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    if-eqz v33, :cond_1a

    .line 344
    sget-object v40, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "*** status code: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "; response message: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v34, v35

    .end local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_2

    .line 346
    .end local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_1a
    sget-object v40, Lcom/owncloud/android/lib/resources/status/GetRemoteCapabilitiesOperation;->TAG:Ljava/lang/String;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "*** status code: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    .line 350
    .end local v33    # "response":Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v9, v10

    .end local v10    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v9    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto/16 :goto_4

    .line 355
    .end local v14    # "requestUri":Landroid/net/Uri;
    .end local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v36    # "status":I
    .end local v39    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_0
    move-exception v40

    :goto_6
    if-eqz v9, :cond_1b

    .line 356
    invoke-virtual {v9}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    :cond_1b
    throw v40

    .line 355
    .end local v9    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v10    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v14    # "requestUri":Landroid/net/Uri;
    .restart local v39    # "uriBuilder":Landroid/net/Uri$Builder;
    :catchall_1
    move-exception v40

    move-object v9, v10

    .end local v10    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v9    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto :goto_6

    .end local v9    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v10    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v36    # "status":I
    :catchall_2
    move-exception v40

    move-object v9, v10

    .end local v10    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v9    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    move-object/from16 v34, v35

    .end local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_6

    .end local v14    # "requestUri":Landroid/net/Uri;
    .end local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v36    # "status":I
    .end local v39    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v7    # "e":Ljava/lang/Exception;
    .restart local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v40

    move-object/from16 v34, v35

    .end local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_6

    .line 350
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    move-object/from16 v35, v34

    .end local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_4

    .end local v9    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .end local v35    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v10    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v14    # "requestUri":Landroid/net/Uri;
    .restart local v33    # "response":Ljava/lang/String;
    .restart local v34    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v36    # "status":I
    .restart local v39    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_1c
    move-object v9, v10

    .end local v10    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    .restart local v9    # "get":Lorg/apache/commons/httpclient/methods/GetMethod;
    goto/16 :goto_3
.end method
