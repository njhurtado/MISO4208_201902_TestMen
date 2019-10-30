.class public Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;
.super Ljava/lang/Object;
.source "ShareToRemoteOperationResultParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOneOrMoreSharesRequired:Z

.field private mOwnCloudVersion:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

.field private mServerBaseUri:Landroid/net/Uri;

.field private mShareXmlParser:Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;)V
    .locals 2
    .param p1, "shareXmlParser"    # Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mShareXmlParser:Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mOneOrMoreSharesRequired:Z

    .line 48
    iput-object v1, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mOwnCloudVersion:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .line 49
    iput-object v1, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mServerBaseUri:Landroid/net/Uri;

    .line 53
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mShareXmlParser:Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    .line 54
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 11
    .param p1, "serverResponse"    # Ljava/lang/String;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 70
    :cond_0
    new-instance v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->WRONG_SERVER_RESPONSE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v2, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    .line 142
    :goto_0
    return-object v2

    .line 73
    :cond_1
    const/4 v2, 0x0

    .line 74
    .local v2, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v4, "resultData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 79
    .local v1, "is":Ljava/io/InputStream;
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mShareXmlParser:Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    if-nez v8, :cond_2

    .line 80
    sget-object v8, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->TAG:Ljava/lang/String;

    const-string v9, "No ShareXmlParser provided, creating new instance "

    invoke-static {v8, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v8, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-direct {v8}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;-><init>()V

    iput-object v8, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mShareXmlParser:Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    .line 83
    :cond_2
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mShareXmlParser:Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-virtual {v8, v1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->parseXMLResponse(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v6

    .line 85
    .local v6, "shares":Ljava/util/List;, "Ljava/util/List<Lcom/owncloud/android/lib/resources/shares/OCShare;>;"
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mShareXmlParser:Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-virtual {v8}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 86
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_4

    :cond_3
    iget-boolean v8, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mOneOrMoreSharesRequired:Z

    if-nez v8, :cond_9

    .line 87
    :cond_4
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->OK:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v3, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 88
    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v3, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    if-eqz v6, :cond_8

    .line 89
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/owncloud/android/lib/resources/shares/OCShare;

    .line 90
    .local v5, "share":Lcom/owncloud/android/lib/resources/shares/OCShare;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v5}, Lcom/owncloud/android/lib/resources/shares/OCShare;->getShareType()Lcom/owncloud/android/lib/resources/shares/ShareType;

    move-result-object v9

    sget-object v10, Lcom/owncloud/android/lib/resources/shares/ShareType;->PUBLIC_LINK:Lcom/owncloud/android/lib/resources/shares/ShareType;

    if-ne v9, v10, :cond_5

    .line 93
    invoke-virtual {v5}, Lcom/owncloud/android/lib/resources/shares/OCShare;->getShareLink()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 94
    invoke-virtual {v5}, Lcom/owncloud/android/lib/resources/shares/OCShare;->getShareLink()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_5

    .line 95
    :cond_6
    invoke-virtual {v5}, Lcom/owncloud/android/lib/resources/shares/OCShare;->getToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 97
    iget-object v9, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mServerBaseUri:Landroid/net/Uri;

    if-eqz v9, :cond_7

    .line 98
    iget-object v9, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mOwnCloudVersion:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    invoke-static {v9}, Lcom/owncloud/android/lib/resources/shares/ShareUtils;->getSharingLinkPath(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "sharingLinkPath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mServerBaseUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/owncloud/android/lib/resources/shares/OCShare;->getToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setShareLink(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 133
    .end local v5    # "share":Lcom/owncloud/android/lib/resources/shares/OCShare;
    .end local v7    # "sharingLinkPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 134
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v6    # "shares":Ljava/util/List;, "Ljava/util/List<Lcom/owncloud/android/lib/resources/shares/OCShare;>;"
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_2
    sget-object v8, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->TAG:Ljava/lang/String;

    const-string v9, "Error parsing response from server "

    invoke-static {v8, v9, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    new-instance v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->WRONG_SERVER_RESPONSE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v2, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    .line 140
    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_0

    .line 101
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v5    # "share":Lcom/owncloud/android/lib/resources/shares/OCShare;
    .restart local v6    # "shares":Ljava/util/List;, "Ljava/util/List<Lcom/owncloud/android/lib/resources/shares/OCShare;>;"
    :cond_7
    :try_start_2
    sget-object v9, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->TAG:Ljava/lang/String;

    const-string v10, "Couldn\'t build link for public share"

    invoke-static {v9, v10}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 137
    .end local v5    # "share":Lcom/owncloud/android/lib/resources/shares/OCShare;
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 138
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v6    # "shares":Ljava/util/List;, "Ljava/util/List<Lcom/owncloud/android/lib/resources/shares/OCShare;>;"
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_3
    sget-object v8, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->TAG:Ljava/lang/String;

    const-string v9, "Error reading response from server "

    invoke-static {v8, v9, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    new-instance v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->WRONG_SERVER_RESPONSE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v2, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V

    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_0

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v6    # "shares":Ljava/util/List;, "Ljava/util/List<Lcom/owncloud/android/lib/resources/shares/OCShare;>;"
    :cond_8
    :try_start_3
    invoke-virtual {v3, v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_0

    .line 109
    :cond_9
    :try_start_4
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->WRONG_SERVER_RESPONSE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v3, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 110
    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_5
    sget-object v8, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->TAG:Ljava/lang/String;

    const-string v9, "Successful status with no share in the response"

    invoke-static {v8, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_0

    .line 113
    :cond_a
    :try_start_6
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mShareXmlParser:Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-virtual {v8}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->isWrongParameter()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 114
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->SHARE_WRONG_PARAMETER:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v3, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 115
    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_7
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mShareXmlParser:Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-virtual {v8}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v3, v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v2, v3

    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_0

    .line 118
    :cond_b
    :try_start_8
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mShareXmlParser:Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-virtual {v8}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->isNotFound()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 119
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->SHARE_NOT_FOUND:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v3, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 120
    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_9
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mShareXmlParser:Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-virtual {v8}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v3, v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    move-object v2, v3

    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_0

    .line 123
    :cond_c
    :try_start_a
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mShareXmlParser:Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-virtual {v8}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->isForbidden()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 124
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->SHARE_FORBIDDEN:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v3, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 125
    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_b
    iget-object v8, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mShareXmlParser:Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;

    invoke-virtual {v8}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v3, v4}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    move-object v2, v3

    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_0

    .line 129
    :cond_d
    :try_start_c
    new-instance v3, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    sget-object v8, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->WRONG_SERVER_RESPONSE:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    invoke-direct {v3, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;)V
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .end local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object v2, v3

    .end local v3    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v2    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_0

    .line 137
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v6    # "shares":Ljava/util/List;, "Ljava/util/List<Lcom/owncloud/android/lib/resources/shares/OCShare;>;"
    :catch_2
    move-exception v0

    goto/16 :goto_3

    .line 133
    :catch_3
    move-exception v0

    goto/16 :goto_2
.end method

.method public setOneOrMoreSharesRequired(Z)V
    .locals 0
    .param p1, "oneOrMoreSharesRequired"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mOneOrMoreSharesRequired:Z

    .line 58
    return-void
.end method

.method public setOwnCloudVersion(Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;)V
    .locals 0
    .param p1, "ownCloudVersion"    # Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mOwnCloudVersion:Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    .line 62
    return-void
.end method

.method public setServerBaseUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "serverBaseURi"    # Landroid/net/Uri;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/ShareToRemoteOperationResultParser;->mServerBaseUri:Landroid/net/Uri;

    .line 66
    return-void
.end method
