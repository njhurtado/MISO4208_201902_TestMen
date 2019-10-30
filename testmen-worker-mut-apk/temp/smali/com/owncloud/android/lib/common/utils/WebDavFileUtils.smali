.class public Lcom/owncloud/android/lib/common/utils/WebDavFileUtils;
.super Ljava/lang/Object;
.source "WebDavFileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fillOCFile(Lcom/owncloud/android/lib/common/network/WebdavEntry;)Lcom/owncloud/android/lib/resources/files/RemoteFile;
    .locals 4
    .param p1, "we"    # Lcom/owncloud/android/lib/common/network/WebdavEntry;

    .prologue
    .line 88
    new-instance v0, Lcom/owncloud/android/lib/resources/files/RemoteFile;

    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->decodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "file":Lcom/owncloud/android/lib/resources/files/RemoteFile;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->createTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setCreationTimestamp(J)V

    .line 90
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->contentLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setLength(J)V

    .line 91
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->contentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setMimeType(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->modifiedTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setModifiedTimestamp(J)V

    .line 93
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->etag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setEtag(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->permissions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setPermissions(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->remoteId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setRemoteId(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setSize(J)V

    .line 97
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->quotaUsedBytes()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setQuotaUsedBytes(Ljava/math/BigDecimal;)V

    .line 98
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->quotaAvailableBytes()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setQuotaAvailableBytes(Ljava/math/BigDecimal;)V

    .line 99
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->isFavorite()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/resources/files/RemoteFile;->setFavorite(Z)V

    .line 100
    return-object v0
.end method


# virtual methods
.method public readData(Lorg/apache/jackrabbit/webdav/MultiStatus;Lcom/owncloud/android/lib/common/OwnCloudClient;ZZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "remoteData"    # Lorg/apache/jackrabbit/webdav/MultiStatus;
    .param p2, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;
    .param p3, "isReadFolderOperation"    # Z
    .param p4, "isSearchOperation"    # Z
    .param p5, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/MultiStatus;",
            "Lcom/owncloud/android/lib/common/OwnCloudClient;",
            "ZZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v1, "mFolderAndFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x1

    .line 55
    .local v4, "start":I
    if-eqz p3, :cond_1

    .line 56
    new-instance v6, Lcom/owncloud/android/lib/common/network/WebdavEntry;

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->getResponses()[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v7

    aget-object v7, v7, v9

    .line 57
    invoke-virtual {p2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/owncloud/android/lib/common/network/WebdavEntry;-><init>(Lorg/apache/jackrabbit/webdav/MultiStatusResponse;Ljava/lang/String;)V

    .line 58
    .local v6, "we":Lcom/owncloud/android/lib/common/network/WebdavEntry;
    invoke-direct {p0, v6}, Lcom/owncloud/android/lib/common/utils/WebDavFileUtils;->fillOCFile(Lcom/owncloud/android/lib/common/network/WebdavEntry;)Lcom/owncloud/android/lib/resources/files/RemoteFile;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v6    # "we":Lcom/owncloud/android/lib/common/network/WebdavEntry;
    :goto_0
    invoke-virtual {p2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getWebdavUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "stripString":Ljava/lang/String;
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/dav/files/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 69
    :cond_0
    const/4 v2, 0x0

    .line 70
    .local v2, "remoteFile":Lcom/owncloud/android/lib/resources/files/RemoteFile;
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->getResponses()[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v3

    .line 71
    .local v3, "responses":[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    move v0, v4

    .local v0, "i":I
    :goto_1
    array-length v7, v3

    if-ge v0, v7, :cond_2

    .line 73
    new-instance v6, Lcom/owncloud/android/lib/common/network/WebdavEntry;

    aget-object v7, v3, v0

    invoke-direct {v6, v7, v5}, Lcom/owncloud/android/lib/common/network/WebdavEntry;-><init>(Lorg/apache/jackrabbit/webdav/MultiStatusResponse;Ljava/lang/String;)V

    .line 74
    .restart local v6    # "we":Lcom/owncloud/android/lib/common/network/WebdavEntry;
    invoke-direct {p0, v6}, Lcom/owncloud/android/lib/common/utils/WebDavFileUtils;->fillOCFile(Lcom/owncloud/android/lib/common/network/WebdavEntry;)Lcom/owncloud/android/lib/resources/files/RemoteFile;

    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    .end local v0    # "i":I
    .end local v2    # "remoteFile":Lcom/owncloud/android/lib/resources/files/RemoteFile;
    .end local v3    # "responses":[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    .end local v5    # "stripString":Ljava/lang/String;
    .end local v6    # "we":Lcom/owncloud/android/lib/common/network/WebdavEntry;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 78
    .restart local v0    # "i":I
    .restart local v2    # "remoteFile":Lcom/owncloud/android/lib/resources/files/RemoteFile;
    .restart local v3    # "responses":[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    .restart local v5    # "stripString":Ljava/lang/String;
    :cond_2
    return-object v1
.end method
