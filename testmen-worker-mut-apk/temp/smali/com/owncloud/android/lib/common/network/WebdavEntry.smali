.class public Lcom/owncloud/android/lib/common/network/WebdavEntry;
.super Ljava/lang/Object;
.source "WebdavEntry.java"


# static fields
.field private static final CODE_PROP_NOT_FOUND:I = 0x194

.field public static final EXTENDED_PROPERTY_FAVORITE:Ljava/lang/String; = "favorite"

.field public static final EXTENDED_PROPERTY_NAME_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final EXTENDED_PROPERTY_NAME_REMOTE_ID:Ljava/lang/String; = "id"

.field public static final EXTENDED_PROPERTY_NAME_SIZE:Ljava/lang/String; = "size"

.field public static final NAMESPACE_OC:Ljava/lang/String; = "http://owncloud.org/ns"

.field public static final PROPERTY_QUOTA_AVAILABLE_BYTES:Ljava/lang/String; = "quota-available-bytes"

.field public static final PROPERTY_QUOTA_USED_BYTES:Ljava/lang/String; = "quota-used-bytes"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentLength:J

.field private mContentType:Ljava/lang/String;

.field private mCreateTimestamp:J

.field private mEtag:Ljava/lang/String;

.field private mIsFavorite:Z

.field private mModifiedTimestamp:J

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPermissions:Ljava/lang/String;

.field private mQuotaAvailableBytes:Ljava/math/BigDecimal;

.field private mQuotaUsedBytes:Ljava/math/BigDecimal;

.field private mRemoteId:Ljava/lang/String;

.field private mSize:J

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/MultiStatusResponse;Ljava/lang/String;)V
    .locals 16
    .param p1, "ms"    # Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    .param p2, "splitElement"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/owncloud/android/lib/common/network/WebdavEntry;->resetData()V

    .line 68
    invoke-virtual/range {p1 .. p1}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getStatus()[Lorg/apache/jackrabbit/webdav/Status;

    move-result-object v13

    array-length v13, v13

    if-eqz v13, :cond_13

    .line 69
    invoke-virtual/range {p1 .. p1}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getHref()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mUri:Ljava/lang/String;

    .line 71
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mUri:Ljava/lang/String;

    const/4 v14, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mPath:Ljava/lang/String;

    .line 73
    invoke-virtual/range {p1 .. p1}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getStatus()[Lorg/apache/jackrabbit/webdav/Status;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lorg/apache/jackrabbit/webdav/Status;->getStatusCode()I

    move-result v10

    .line 74
    .local v10, "status":I
    const/16 v13, 0x194

    if-ne v10, v13, :cond_0

    .line 75
    invoke-virtual/range {p1 .. p1}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getStatus()[Lorg/apache/jackrabbit/webdav/Status;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lorg/apache/jackrabbit/webdav/Status;->getStatusCode()I

    move-result v10

    .line 77
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getProperties(I)Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    move-result-object v7

    .line 79
    .local v7, "propSet":Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
    sget-object v13, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->DISPLAYNAME:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v7, v13}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 80
    .local v6, "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;
    if-eqz v6, :cond_d

    .line 81
    invoke-interface {v6}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mName:Ljava/lang/String;

    .line 82
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mName:Ljava/lang/String;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mName:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mName:Ljava/lang/String;

    .line 92
    :cond_1
    :goto_0
    const-string v13, "application/octet-stream"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mContentType:Ljava/lang/String;

    .line 93
    sget-object v13, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETCONTENTTYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v7, v13}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 94
    if-eqz v6, :cond_2

    .line 95
    invoke-interface {v6}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    .local v2, "contentType":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 99
    const-string v13, ";"

    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 100
    const/4 v13, 0x0

    const-string v14, ";"

    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mContentType:Ljava/lang/String;

    .line 109
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_2
    :goto_1
    sget-object v13, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->RESOURCETYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v7, v13}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 110
    if-eqz v6, :cond_3

    .line 111
    invoke-interface {v6}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 112
    .local v12, "value":Ljava/lang/Object;
    if-eqz v12, :cond_3

    .line 113
    const-string v13, "DIR"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mContentType:Ljava/lang/String;

    .line 121
    .end local v12    # "value":Ljava/lang/Object;
    :cond_3
    sget-object v13, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETCONTENTLENGTH:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v7, v13}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 122
    if-eqz v6, :cond_4

    .line 123
    invoke-interface {v6}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mContentLength:J

    .line 126
    :cond_4
    sget-object v13, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETLASTMODIFIED:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v7, v13}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 127
    if-eqz v6, :cond_5

    .line 129
    invoke-interface {v6}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->parseResponseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 130
    .local v3, "d":Ljava/util/Date;
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    :goto_2
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mModifiedTimestamp:J

    .line 133
    .end local v3    # "d":Ljava/util/Date;
    :cond_5
    sget-object v13, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->CREATIONDATE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v7, v13}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 134
    if-eqz v6, :cond_6

    .line 136
    invoke-interface {v6}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->parseResponseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 137
    .restart local v3    # "d":Ljava/util/Date;
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    :goto_3
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mCreateTimestamp:J

    .line 141
    .end local v3    # "d":Ljava/util/Date;
    :cond_6
    sget-object v13, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETETAG:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v7, v13}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 142
    if-eqz v6, :cond_7

    .line 143
    invoke-interface {v6}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mEtag:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mEtag:Ljava/lang/String;

    invoke-static {v13}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->parseEtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mEtag:Ljava/lang/String;

    .line 148
    :cond_7
    const-string v13, "quota-used-bytes"

    invoke-static {v13}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 149
    if-eqz v6, :cond_8

    .line 150
    invoke-interface {v6}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 152
    .local v9, "quotaUsedBytesSt":Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/math/BigDecimal;

    invoke-direct {v13, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mQuotaUsedBytes:Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :goto_4
    sget-object v13, Lcom/owncloud/android/lib/common/network/WebdavEntry;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "QUOTA_USED_BYTES "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local v9    # "quotaUsedBytesSt":Ljava/lang/String;
    :cond_8
    const-string v13, "quota-available-bytes"

    invoke-static {v13}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 163
    if-eqz v6, :cond_9

    .line 164
    invoke-interface {v6}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 166
    .local v8, "quotaAvailableBytesSt":Ljava/lang/String;
    :try_start_1
    new-instance v13, Ljava/math/BigDecimal;

    invoke-direct {v13, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mQuotaAvailableBytes:Ljava/math/BigDecimal;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 172
    :goto_5
    sget-object v13, Lcom/owncloud/android/lib/common/network/WebdavEntry;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "QUOTA_AVAILABLE_BYTES "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v8    # "quotaAvailableBytesSt":Ljava/lang/String;
    :cond_9
    const-string v13, "permissions"

    const-string v14, "http://owncloud.org/ns"

    .line 177
    invoke-static {v14}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v14

    .line 176
    invoke-virtual {v7, v13, v14}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 179
    if-eqz v6, :cond_a

    .line 180
    invoke-interface {v6}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mPermissions:Ljava/lang/String;

    .line 184
    :cond_a
    const-string v13, "id"

    const-string v14, "http://owncloud.org/ns"

    .line 185
    invoke-static {v14}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v14

    .line 184
    invoke-virtual {v7, v13, v14}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 187
    if-eqz v6, :cond_b

    .line 188
    invoke-interface {v6}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mRemoteId:Ljava/lang/String;

    .line 193
    :cond_b
    const-string v13, "size"

    const-string v14, "http://owncloud.org/ns"

    .line 194
    invoke-static {v14}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v14

    .line 193
    invoke-virtual {v7, v13, v14}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 196
    if-eqz v6, :cond_c

    .line 197
    invoke-interface {v6}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mSize:J

    .line 201
    :cond_c
    const-string v13, "favorite"

    const-string v14, "http://owncloud.org/ns"

    invoke-static {v14}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 202
    if-eqz v6, :cond_12

    .line 203
    invoke-interface {v6}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 204
    .local v5, "favoriteValue":Ljava/lang/String;
    const-string v13, "1"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 205
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mIsFavorite:Z

    .line 216
    .end local v5    # "favoriteValue":Ljava/lang/String;
    .end local v6    # "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .end local v7    # "propSet":Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
    .end local v10    # "status":I
    :goto_6
    return-void

    .line 85
    .restart local v6    # "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .restart local v7    # "propSet":Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
    .restart local v10    # "status":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mPath:Ljava/lang/String;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 86
    .local v11, "tmp":[Ljava/lang/String;
    array-length v13, v11

    if-lez v13, :cond_1

    .line 87
    array-length v13, v11

    add-int/lit8 v13, v13, -0x1

    aget-object v13, v11, v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mName:Ljava/lang/String;

    goto/16 :goto_0

    .line 102
    .end local v11    # "tmp":[Ljava/lang/String;
    .restart local v2    # "contentType":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mContentType:Ljava/lang/String;

    goto/16 :goto_1

    .line 130
    .end local v2    # "contentType":Ljava/lang/String;
    .restart local v3    # "d":Ljava/util/Date;
    :cond_f
    const-wide/16 v14, 0x0

    goto/16 :goto_2

    .line 137
    :cond_10
    const-wide/16 v14, 0x0

    goto/16 :goto_3

    .line 153
    .end local v3    # "d":Ljava/util/Date;
    .restart local v9    # "quotaUsedBytesSt":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 154
    .local v4, "e":Ljava/lang/NumberFormatException;
    sget-object v13, Lcom/owncloud/android/lib/common/network/WebdavEntry;->TAG:Ljava/lang/String;

    const-string v14, "No value for QuotaUsedBytes - NumberFormatException"

    invoke-static {v13, v14}, Lcom/owncloud/android/lib/common/utils/Log_OC;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 155
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    .line 156
    .local v4, "e":Ljava/lang/NullPointerException;
    sget-object v13, Lcom/owncloud/android/lib/common/network/WebdavEntry;->TAG:Ljava/lang/String;

    const-string v14, "No value for QuotaUsedBytes - NullPointerException"

    invoke-static {v13, v14}, Lcom/owncloud/android/lib/common/utils/Log_OC;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 167
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "quotaUsedBytesSt":Ljava/lang/String;
    .restart local v8    # "quotaAvailableBytesSt":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 168
    .local v4, "e":Ljava/lang/NumberFormatException;
    sget-object v13, Lcom/owncloud/android/lib/common/network/WebdavEntry;->TAG:Ljava/lang/String;

    const-string v14, "No value for QuotaAvailableBytes - NumberFormatException"

    invoke-static {v13, v14}, Lcom/owncloud/android/lib/common/utils/Log_OC;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 169
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v4

    .line 170
    .local v4, "e":Ljava/lang/NullPointerException;
    sget-object v13, Lcom/owncloud/android/lib/common/network/WebdavEntry;->TAG:Ljava/lang/String;

    const-string v14, "No value for QuotaAvailableBytes"

    invoke-static {v13, v14}, Lcom/owncloud/android/lib/common/utils/Log_OC;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 207
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "quotaAvailableBytesSt":Ljava/lang/String;
    .restart local v5    # "favoriteValue":Ljava/lang/String;
    :cond_11
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mIsFavorite:Z

    goto :goto_6

    .line 210
    .end local v5    # "favoriteValue":Ljava/lang/String;
    :cond_12
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mIsFavorite:Z

    goto :goto_6

    .line 214
    .end local v6    # "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .end local v7    # "propSet":Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
    .end local v10    # "status":I
    :cond_13
    const-string v13, "WebdavEntry"

    const-string v14, "General fuckup, no status for webdav response"

    invoke-static {v13, v14}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private resetData()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mPermissions:Ljava/lang/String;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mContentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mRemoteId:Ljava/lang/String;

    .line 288
    iput-wide v2, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mModifiedTimestamp:J

    iput-wide v2, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mCreateTimestamp:J

    iput-wide v2, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mContentLength:J

    .line 289
    iput-wide v2, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mSize:J

    .line 290
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mQuotaUsedBytes:Ljava/math/BigDecimal;

    .line 291
    iput-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mQuotaAvailableBytes:Ljava/math/BigDecimal;

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mIsFavorite:Z

    .line 293
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mContentLength:J

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public createTimestamp()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mCreateTimestamp:J

    return-wide v0
.end method

.method public decodedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public etag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mEtag:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mContentType:Ljava/lang/String;

    const-string v1, "DIR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mIsFavorite:Z

    return v0
.end method

.method public modifiedTimestamp()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mModifiedTimestamp:J

    return-wide v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public permissions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mPermissions:Ljava/lang/String;

    return-object v0
.end method

.method public quotaAvailableBytes()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mQuotaAvailableBytes:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public quotaUsedBytes()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mQuotaUsedBytes:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public remoteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mRemoteId:Ljava/lang/String;

    return-object v0
.end method

.method public setIsFavorite(Z)V
    .locals 0
    .param p1, "mIsFavorite"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mIsFavorite:Z

    .line 224
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mSize:J

    return-wide v0
.end method

.method public uri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/owncloud/android/lib/common/network/WebdavEntry;->mUri:Ljava/lang/String;

    return-object v0
.end method
