.class public Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "UpdateRemoteShareOperation.java"


# static fields
.field private static final ENTITY_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final ENTITY_CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final FORMAT_EXPIRATION_DATE:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final PARAM_EXPIRATION_DATE:Ljava/lang/String; = "expireDate"

.field private static final PARAM_PASSWORD:Ljava/lang/String; = "password"

.field private static final PARAM_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final PARAM_PUBLIC_UPLOAD:Ljava/lang/String; = "publicUpload"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExpirationDateInMillis:J

.field private mPassword:Ljava/lang/String;

.field private mPermissions:I

.field private mPublicUpload:Ljava/lang/Boolean;

.field private mRemoteId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/owncloud/android/lib/resources/shares/GetRemoteShareOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "remoteId"    # J

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 97
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mRemoteId:J

    .line 98
    iput-object v2, p0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mPassword:Ljava/lang/String;

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mExpirationDateInMillis:J

    .line 100
    iput-object v2, p0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mPublicUpload:Ljava/lang/Boolean;

    .line 101
    return-void
.end method


# virtual methods
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 25
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 151
    const/4 v15, 0x0

    .line 152
    .local v15, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/16 v17, -0x1

    .line 155
    .local v17, "status":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v9, "parametersToUpdate":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mPassword:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 157
    new-instance v20, Landroid/util/Pair;

    const-string v21, "password"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mExpirationDateInMillis:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gez v20, :cond_7

    .line 161
    new-instance v20, Landroid/util/Pair;

    const-string v21, "expireDate"

    const-string v22, ""

    invoke-direct/range {v20 .. v22}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mPermissions:I

    move/from16 v20, v0

    if-lez v20, :cond_2

    .line 174
    new-instance v20, Landroid/util/Pair;

    const-string v21, "permissions"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mPermissions:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mPublicUpload:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 178
    new-instance v20, Landroid/util/Pair;

    const-string v21, "publicUpload"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mPublicUpload:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_3
    const/4 v11, 0x0

    .line 183
    .local v11, "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    const/16 v19, 0x0

    .line 186
    .local v19, "uriString":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v13

    .line 187
    .local v13, "requestUri":Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    .line 188
    .local v18, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v20, "/ocs/v2.php/apps/files_sharing/api/v1/shares"

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 189
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mRemoteId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 190
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    .line 192
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    move-object v12, v11

    .end local v11    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .local v12, "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    move-object/from16 v16, v15

    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v16, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_1
    :try_start_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 193
    .local v8, "parameter":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v12, :cond_4

    .line 194
    invoke-virtual {v12}, Lorg/apache/commons/httpclient/methods/PutMethod;->releaseConnection()V

    .line 196
    :cond_4
    new-instance v11, Lorg/apache/commons/httpclient/methods/PutMethod;

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lorg/apache/commons/httpclient/methods/PutMethod;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    .end local v12    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .restart local v11    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    :try_start_2
    const-string v20, "OCS-APIREQUEST"

    const-string v22, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/apache/commons/httpclient/methods/PutMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v22, Lorg/apache/commons/httpclient/methods/StringRequestEntity;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v23, "="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v23, "application/x-www-form-urlencoded"

    const-string v24, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/methods/StringRequestEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/apache/commons/httpclient/methods/PutMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 204
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v17

    .line 206
    const/16 v20, 0xc8

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    const/16 v20, 0x190

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 207
    :cond_5
    invoke-virtual {v11}, Lorg/apache/commons/httpclient/methods/PutMethod;->getResponseBodyAsString()Ljava/lang/String;

    move-result-object v14

    .line 210
    .local v14, "response":Ljava/lang/String;
    new-instance v10, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;

    new-instance v20, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-direct/range {v20 .. v20}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;-><init>()V

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;-><init>(Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;)V

    .line 213
    .local v10, "parser":Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;
    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getOwnCloudVersion()Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->setOwnCloudVersion(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)V

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->setServerBaseUri(Landroid/net/Uri;)V

    .line 215
    invoke-virtual {v10, v14}, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->parse(Ljava/lang/String;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v15

    .line 220
    .end local v10    # "parser":Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;
    .end local v14    # "response":Ljava/lang/String;
    .end local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    :try_start_3
    invoke-virtual {v15}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v20

    if-nez v20, :cond_9

    .line 233
    .end local v8    # "parameter":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    if-eqz v11, :cond_6

    .line 234
    invoke-virtual {v11}, Lorg/apache/commons/httpclient/methods/PutMethod;->releaseConnection()V

    .line 237
    .end local v13    # "requestUri":Landroid/net/Uri;
    .end local v18    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_6
    :goto_4
    return-object v15

    .line 163
    .end local v11    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .end local v19    # "uriString":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mExpirationDateInMillis:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_1

    .line 165
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 166
    .local v4, "dateFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 167
    .local v6, "expirationDate":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mExpirationDateInMillis:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 168
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "formattedExpirationDate":Ljava/lang/String;
    new-instance v20, Landroid/util/Pair;

    const-string v21, "expireDate"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 218
    .end local v4    # "dateFormat":Ljava/text/DateFormat;
    .end local v6    # "expirationDate":Ljava/util/Calendar;
    .end local v7    # "formattedExpirationDate":Ljava/lang/String;
    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v8    # "parameter":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .restart local v13    # "requestUri":Landroid/net/Uri;
    .restart local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v18    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v19    # "uriString":Ljava/lang/String;
    :cond_8
    :try_start_4
    new-instance v15, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v15, v0, v11}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZLorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    :cond_9
    move-object v12, v11

    .end local v11    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .restart local v12    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    move-object/from16 v16, v15

    .line 223
    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_1

    .line 225
    .end local v8    # "parameter":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .end local v13    # "requestUri":Landroid/net/Uri;
    .end local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v18    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v11    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .restart local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catch_0
    move-exception v5

    move-object/from16 v16, v15

    .line 226
    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_5
    :try_start_5
    new-instance v15, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v15, v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 227
    .end local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_6
    sget-object v20, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->TAG:Ljava/lang/String;

    const-string v21, "Exception while updating remote share "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    if-eqz v11, :cond_a

    .line 229
    invoke-virtual {v11}, Lorg/apache/commons/httpclient/methods/PutMethod;->releaseConnection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 233
    :cond_a
    if-eqz v11, :cond_6

    .line 234
    invoke-virtual {v11}, Lorg/apache/commons/httpclient/methods/PutMethod;->releaseConnection()V

    goto :goto_4

    .line 233
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    :goto_6
    if-eqz v11, :cond_b

    .line 234
    invoke-virtual {v11}, Lorg/apache/commons/httpclient/methods/PutMethod;->releaseConnection()V

    :cond_b
    throw v20

    .line 233
    .end local v11    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v12    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .restart local v13    # "requestUri":Landroid/net/Uri;
    .restart local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v18    # "uriBuilder":Landroid/net/Uri$Builder;
    :catchall_1
    move-exception v20

    move-object v11, v12

    .end local v12    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .restart local v11    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    move-object/from16 v15, v16

    .end local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_6

    .end local v13    # "requestUri":Landroid/net/Uri;
    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v18    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_2
    move-exception v20

    move-object/from16 v15, v16

    .end local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_6

    .line 225
    .end local v11    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v12    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .restart local v13    # "requestUri":Landroid/net/Uri;
    .restart local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v18    # "uriBuilder":Landroid/net/Uri$Builder;
    :catch_1
    move-exception v5

    move-object v11, v12

    .end local v12    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .restart local v11    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    goto :goto_5

    .restart local v8    # "parameter":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v5

    goto :goto_5

    .end local v8    # "parameter":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .restart local v12    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    :cond_c
    move-object v11, v12

    .end local v12    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    .restart local v11    # "put":Lorg/apache/commons/httpclient/methods/PutMethod;
    move-object/from16 v15, v16

    .end local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_3
.end method

.method public setExpirationDate(J)V
    .locals 1
    .param p1, "expirationDateInMillis"    # J

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mExpirationDateInMillis:J

    .line 126
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mPassword:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPermissions(I)V
    .locals 0
    .param p1, "permissions"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mPermissions:I

    .line 137
    return-void
.end method

.method public setPublicUpload(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "publicUpload"    # Ljava/lang/Boolean;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/UpdateRemoteShareOperation;->mPublicUpload:Ljava/lang/Boolean;

    .line 147
    return-void
.end method
