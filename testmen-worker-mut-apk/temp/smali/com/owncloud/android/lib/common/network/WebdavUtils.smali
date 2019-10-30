.class public Lcom/owncloud/android/lib/common/network/WebdavUtils;
.super Ljava/lang/Object;
.source "WebdavUtils.java"


# static fields
.field private static final DATETIME_FORMATS:[Ljava/text/SimpleDateFormat;

.field public static final DISPLAY_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/owncloud/android/lib/common/network/WebdavUtils;->DISPLAY_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.sss\'Z\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE MMM dd HH:mm:ss zzz yyyy"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEEEEE, dd-MMM-yy HH:mm:ss zzz"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE MMMM d HH:mm:ss yyyy"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd hh:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/owncloud/android/lib/common/network/WebdavUtils;->DATETIME_FORMATS:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "remoteFilePath"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v1, "/"

    invoke-static {p0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "encodedPath":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    return-object v0
.end method

.method public static getAllPropSet()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    .line 95
    .local v0, "propSet":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->DISPLAYNAME:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 96
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETCONTENTTYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 97
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->RESOURCETYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 98
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETCONTENTLENGTH:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 99
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETLASTMODIFIED:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 100
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->CREATIONDATE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 101
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETETAG:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 102
    const-string v1, "quota-used-bytes"

    invoke-static {v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 103
    const-string v1, "quota-available-bytes"

    invoke-static {v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 104
    const-string v1, "permissions"

    const-string v2, "http://owncloud.org/ns"

    .line 105
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    .line 106
    const-string v1, "id"

    const-string v2, "http://owncloud.org/ns"

    .line 107
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    .line 108
    const-string v1, "size"

    const-string v2, "http://owncloud.org/ns"

    .line 109
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    .line 110
    const-string v1, "favorite"

    const-string v2, "http://owncloud.org/ns"

    .line 111
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    .line 113
    return-object v0
.end method

.method public static getEtagFromResponse(Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;
    .locals 3
    .param p0, "method"    # Lorg/apache/commons/httpclient/HttpMethod;

    .prologue
    .line 166
    const-string v2, "OC-ETag"

    invoke-interface {p0, v2}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 167
    .local v0, "eTag":Lorg/apache/commons/httpclient/Header;
    if-nez v0, :cond_0

    .line 168
    const-string v2, "oc-etag"

    invoke-interface {p0, v2}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 170
    :cond_0
    if-nez v0, :cond_1

    .line 171
    const-string v2, "ETag"

    invoke-interface {p0, v2}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 173
    :cond_1
    if-nez v0, :cond_2

    .line 174
    const-string v2, "etag"

    invoke-interface {p0, v2}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 176
    :cond_2
    const-string v1, ""

    .line 177
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/owncloud/android/lib/common/network/WebdavUtils;->parseEtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    :cond_3
    return-object v1
.end method

.method public static getFilePropSet()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    .line 122
    .local v0, "propSet":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->DISPLAYNAME:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 123
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETCONTENTTYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 124
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->RESOURCETYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 125
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETCONTENTLENGTH:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 126
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETLASTMODIFIED:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 127
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->CREATIONDATE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 128
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETETAG:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 129
    const-string v1, "permissions"

    const-string v2, "http://owncloud.org/ns"

    .line 130
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v2

    .line 129
    invoke-virtual {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    .line 131
    const-string v1, "id"

    const-string v2, "http://owncloud.org/ns"

    .line 132
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    .line 133
    const-string v1, "size"

    const-string v2, "http://owncloud.org/ns"

    .line 134
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v2

    .line 133
    invoke-virtual {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    .line 135
    const-string v1, "favorite"

    const-string v2, "http://owncloud.org/ns"

    .line 136
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    .line 138
    return-object v0
.end method

.method public static parseEtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "rawEtag"    # Ljava/lang/String;

    .prologue
    .line 147
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 148
    :cond_0
    const-string p0, ""

    .line 156
    :cond_1
    :goto_0
    return-object p0

    .line 150
    :cond_2
    const-string v0, "-gzip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 153
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parseResponseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "returnDate":Ljava/util/Date;
    const/4 v0, 0x0

    .line 59
    .local v0, "format":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/owncloud/android/lib/common/network/WebdavUtils;->DATETIME_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 61
    :try_start_0
    sget-object v3, Lcom/owncloud/android/lib/common/network/WebdavUtils;->DATETIME_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v0, v3, v1

    .line 62
    monitor-enter v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 64
    monitor-exit v0

    move-object v3, v2

    .line 70
    :goto_1
    return-object v3

    .line 64
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    :catch_0
    move-exception v3

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method
