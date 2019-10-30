.class public Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;
.super Ljava/lang/Object;
.source "ShareXMLParser.java"


# static fields
.field private static final ERROR_FORBIDDEN:I = 0x193

.field private static final ERROR_NOT_FOUND:I = 0x194

.field private static final ERROR_WRONG_PARAMETER:I = 0x190

.field private static final NODE_DATA:Ljava/lang/String; = "data"

.field private static final NODE_ELEMENT:Ljava/lang/String; = "element"

.field private static final NODE_EXPIRATION:Ljava/lang/String; = "expiration"

.field private static final NODE_FILE_SOURCE:Ljava/lang/String; = "file_source"

.field private static final NODE_ID:Ljava/lang/String; = "id"

.field private static final NODE_ITEM_SOURCE:Ljava/lang/String; = "item_source"

.field private static final NODE_ITEM_TYPE:Ljava/lang/String; = "item_type"

.field private static final NODE_MAIL_SEND:Ljava/lang/String; = "mail_send"

.field private static final NODE_MESSAGE:Ljava/lang/String; = "message"

.field private static final NODE_META:Ljava/lang/String; = "meta"

.field private static final NODE_OCS:Ljava/lang/String; = "ocs"

.field private static final NODE_PARENT:Ljava/lang/String; = "parent"

.field private static final NODE_PATH:Ljava/lang/String; = "path"

.field private static final NODE_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final NODE_SHARE_TYPE:Ljava/lang/String; = "share_type"

.field private static final NODE_SHARE_WITH:Ljava/lang/String; = "share_with"

.field private static final NODE_SHARE_WITH_DISPLAY_NAME:Ljava/lang/String; = "share_with_displayname"

.field private static final NODE_STATUS:Ljava/lang/String; = "status"

.field private static final NODE_STATUS_CODE:Ljava/lang/String; = "statuscode"

.field private static final NODE_STIME:Ljava/lang/String; = "stime"

.field private static final NODE_STORAGE:Ljava/lang/String; = "storage"

.field private static final NODE_TOKEN:Ljava/lang/String; = "token"

.field private static final NODE_URL:Ljava/lang/String; = "url"

.field private static final OK:I = 0xc8

.field private static final SUCCESS:I = 0x64

.field private static final TYPE_FOLDER:Ljava/lang/String; = "folder"

.field private static final ns:Ljava/lang/String;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->ns:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->mStatusCode:I

    .line 123
    return-void
.end method

.method private fixPathForFolder(Lcom/owncloud/android/lib/resources/shares/OCShare;)V
    .locals 2
    .param p1, "share"    # Lcom/owncloud/android/lib/resources/shares/OCShare;

    .prologue
    .line 377
    invoke-virtual {p1}, Lcom/owncloud/android/lib/resources/shares/OCShare;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/owncloud/android/lib/resources/shares/OCShare;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/owncloud/android/lib/resources/shares/OCShare;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 378
    invoke-virtual {p1}, Lcom/owncloud/android/lib/resources/shares/OCShare;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/owncloud/android/lib/resources/shares/OCShare;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setPath(Ljava/lang/String;)V

    .line 381
    :cond_0
    return-void
.end method

.method private isValidShare(Lcom/owncloud/android/lib/resources/shares/OCShare;)Z
    .locals 4
    .param p1, "share"    # Lcom/owncloud/android/lib/resources/shares/OCShare;

    .prologue
    .line 373
    invoke-virtual {p1}, Lcom/owncloud/android/lib/resources/shares/OCShare;->getRemoteId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readData(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/owncloud/android/lib/resources/shares/OCShare;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v2, "shares":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/owncloud/android/lib/resources/shares/OCShare;>;"
    const/4 v1, 0x0

    .line 241
    .local v1, "share":Lcom/owncloud/android/lib/resources/shares/OCShare;
    sget-object v4, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->ns:Ljava/lang/String;

    const-string v5, "data"

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    .line 244
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 247
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "name":Ljava/lang/String;
    const-string v4, "element"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    invoke-direct {p0, p1, v2}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 251
    :cond_1
    const-string v4, "id"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 252
    new-instance v1, Lcom/owncloud/android/lib/resources/shares/OCShare;

    .end local v1    # "share":Lcom/owncloud/android/lib/resources/shares/OCShare;
    invoke-direct {v1}, Lcom/owncloud/android/lib/resources/shares/OCShare;-><init>()V

    .line 253
    .restart local v1    # "share":Lcom/owncloud/android/lib/resources/shares/OCShare;
    const-string v4, "id"

    invoke-direct {p0, p1, v4}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setIdRemoteShared(J)V

    goto :goto_0

    .line 256
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    const-string v4, "url"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 257
    sget-object v4, Lcom/owncloud/android/lib/resources/shares/ShareType;->PUBLIC_LINK:Lcom/owncloud/android/lib/resources/shares/ShareType;

    invoke-virtual {v1, v4}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setShareType(Lcom/owncloud/android/lib/resources/shares/ShareType;)V

    .line 258
    const-string v4, "url"

    invoke-direct {p0, p1, v4}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setShareLink(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const-string v4, "token"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 262
    const-string v4, "token"

    invoke-direct {p0, p1, v4}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setToken(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_4
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 270
    .end local v0    # "name":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    .line 272
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_6
    return-object v2
.end method

.method private readElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/owncloud/android/lib/resources/shares/OCShare;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "shares":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/owncloud/android/lib/resources/shares/OCShare;>;"
    const/4 v6, 0x2

    .line 289
    sget-object v3, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->ns:Ljava/lang/String;

    const-string v4, "element"

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v1, Lcom/owncloud/android/lib/resources/shares/OCShare;

    invoke-direct {v1}, Lcom/owncloud/android/lib/resources/shares/OCShare;-><init>()V

    .line 294
    .local v1, "share":Lcom/owncloud/android/lib/resources/shares/OCShare;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_12

    .line 295
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 299
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "name":Ljava/lang/String;
    const-string v3, "element"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 307
    :cond_1
    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    const-string v3, "id"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setIdRemoteShared(J)V

    goto :goto_0

    .line 310
    :cond_2
    const-string v3, "item_type"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 311
    const-string v3, "item_type"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "folder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setIsFolder(Z)V

    .line 312
    invoke-direct {p0, v1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->fixPathForFolder(Lcom/owncloud/android/lib/resources/shares/OCShare;)V

    goto :goto_0

    .line 314
    :cond_3
    const-string v3, "item_source"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 315
    const-string v3, "item_source"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setItemSource(J)V

    goto :goto_0

    .line 317
    :cond_4
    const-string v3, "parent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 318
    const-string v3, "parent"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_5
    const-string v3, "share_type"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 321
    const-string v3, "share_type"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 322
    .local v2, "value":I
    invoke-static {v2}, Lcom/owncloud/android/lib/resources/shares/ShareType;->fromValue(I)Lcom/owncloud/android/lib/resources/shares/ShareType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setShareType(Lcom/owncloud/android/lib/resources/shares/ShareType;)V

    goto/16 :goto_0

    .line 324
    .end local v2    # "value":I
    :cond_6
    const-string v3, "share_with"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 325
    const-string v3, "share_with"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setShareWith(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 327
    :cond_7
    const-string v3, "file_source"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 328
    const-string v3, "file_source"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setFileSource(J)V

    goto/16 :goto_0

    .line 330
    :cond_8
    const-string v3, "path"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 331
    const-string v3, "path"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setPath(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0, v1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->fixPathForFolder(Lcom/owncloud/android/lib/resources/shares/OCShare;)V

    goto/16 :goto_0

    .line 334
    :cond_9
    const-string v3, "permissions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 335
    const-string v3, "permissions"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setPermissions(I)V

    goto/16 :goto_0

    .line 337
    :cond_a
    const-string v3, "stime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 338
    const-string v3, "stime"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setSharedDate(J)V

    goto/16 :goto_0

    .line 340
    :cond_b
    const-string v3, "expiration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 341
    const-string v3, "expiration"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    invoke-static {v2}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->parseResponseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setExpirationDate(J)V

    goto/16 :goto_0

    .line 346
    .end local v2    # "value":Ljava/lang/String;
    :cond_c
    const-string v3, "token"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 347
    const-string v3, "token"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setToken(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 349
    :cond_d
    const-string v3, "storage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 350
    const-string v3, "storage"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 351
    :cond_e
    const-string v3, "mail_send"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 352
    const-string v3, "mail_send"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 354
    :cond_f
    const-string v3, "share_with_displayname"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 355
    const-string v3, "share_with_displayname"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setSharedWithDisplayName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :cond_10
    const-string v3, "url"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 358
    sget-object v3, Lcom/owncloud/android/lib/resources/shares/ShareType;->PUBLIC_LINK:Lcom/owncloud/android/lib/resources/shares/ShareType;

    invoke-virtual {v1, v3}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setShareType(Lcom/owncloud/android/lib/resources/shares/ShareType;)V

    .line 359
    const-string v3, "url"

    invoke-direct {p0, p1, v3}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .restart local v2    # "value":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/owncloud/android/lib/resources/shares/OCShare;->setShareLink(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    .end local v2    # "value":Ljava/lang/String;
    :cond_11
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 367
    .end local v0    # "name":Ljava/lang/String;
    :cond_12
    invoke-direct {p0, v1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->isValidShare(Lcom/owncloud/android/lib/resources/shares/OCShare;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 368
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_13
    return-void
.end method

.method private readMeta(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 205
    sget-object v1, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->ns:Ljava/lang/String;

    const-string v2, "meta"

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 208
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 211
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "name":Ljava/lang/String;
    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    const-string v1, "status"

    invoke-direct {p0, p1, v1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    const-string v1, "statuscode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    const-string v1, "statuscode"

    invoke-direct {p0, p1, v1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->setStatusCode(I)V

    goto :goto_0

    .line 219
    :cond_2
    const-string v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    const-string v1, "message"

    invoke-direct {p0, p1, v1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_3
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 227
    .end local v0    # "name":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    const/4 v1, 0x2

    sget-object v2, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->ns:Ljava/lang/String;

    invoke-interface {p1, v1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x3

    sget-object v2, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->ns:Ljava/lang/String;

    invoke-interface {p1, v1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 397
    return-object v0
.end method

.method private readOCS(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/owncloud/android/lib/resources/shares/OCShare;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, "shares":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/owncloud/android/lib/resources/shares/OCShare;>;"
    sget-object v2, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->ns:Ljava/lang/String;

    const-string v3, "ocs"

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 179
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 182
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "name":Ljava/lang/String;
    const-string v2, "meta"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readMeta(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 186
    :cond_1
    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readData(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 189
    :cond_2
    invoke-direct {p0, p1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 193
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 408
    const-string v0, ""

    .line 409
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 410
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 413
    :cond_0
    return-object v0
.end method

.method private skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 424
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 426
    :cond_0
    const/4 v0, 0x1

    .line 427
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    .line 428
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 433
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 431
    goto :goto_0

    .line 437
    :cond_1
    return-void

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->mStatusCode:I

    return v0
.end method

.method public isForbidden()Z
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->mStatusCode:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFound()Z
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->mStatusCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->mStatusCode:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->mStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWrongParameter()Z
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->mStatusCode:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseXMLResponse(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/owncloud/android/lib/resources/shares/OCShare;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 154
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 156
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 157
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 158
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 159
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 160
    invoke-direct {p0, v1}, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->readOCS(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 163
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 160
    return-object v2

    .line 163
    .end local v0    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->mMessage:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->mStatus:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/owncloud/android/lib/resources/shares/ShareXMLParser;->mStatusCode:I

    .line 110
    return-void
.end method
