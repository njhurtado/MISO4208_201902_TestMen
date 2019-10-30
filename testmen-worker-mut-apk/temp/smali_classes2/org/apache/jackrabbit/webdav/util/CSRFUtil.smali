.class public Lorg/apache/jackrabbit/webdav/util/CSRFUtil;
.super Ljava/lang/Object;
.source "CSRFUtil.java"


# static fields
.field public static final CONTENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED:Ljava/lang/String; = "disabled"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final allowedReferrerHosts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final disabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "application/x-www-form-urlencoded"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "multipart/form-data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "text/plain"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->CONTENT_TYPES:Ljava/util/Set;

    .line 59
    const-class v0, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 95
    :cond_0
    iput-boolean v7, p0, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->disabled:Z

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->allowedReferrerHosts:Ljava/util/Set;

    .line 97
    sget-object v5, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->log:Lorg/slf4j/Logger;

    const-string v6, "CSRF protection disabled"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v5, "disabled"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->disabled:Z

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->allowedReferrerHosts:Ljava/util/Set;

    .line 110
    :cond_2
    sget-object v5, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CSRF protection enabled, allowed referrers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->allowedReferrerHosts:Ljava/util/Set;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_3
    iput-boolean v7, p0, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->disabled:Z

    .line 104
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "allowed":[Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    array-length v6, v0

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->allowedReferrerHosts:Ljava/util/Set;

    .line 106
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v1, v3

    .line 107
    .local v2, "entry":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->allowedReferrerHosts:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public isValidRequest(Ljavax/servlet/http/HttpServletRequest;)Z
    .locals 12
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 116
    iget-boolean v9, p0, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->disabled:Z

    if-eqz v9, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v4

    .line 118
    :cond_1
    const-string v9, "POST"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 122
    const-string v9, "Content-Type"

    invoke-interface {p1, v9}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 123
    .local v1, "cts":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 124
    .local v0, "ct":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 125
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 127
    .local v7, "t":Ljava/lang/String;
    const/16 v9, 0x3b

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 128
    .local v6, "semicolon":I
    if-ltz v6, :cond_2

    .line 129
    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 131
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .end local v6    # "semicolon":I
    .end local v7    # "t":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 135
    sget-object v9, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->log:Lorg/slf4j/Logger;

    const-string v10, "request blocked because there were multiple content-type header fields"

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    move v4, v8

    .line 136
    goto :goto_0

    .line 138
    :cond_4
    if-eqz v0, :cond_5

    sget-object v9, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->CONTENT_TYPES:Ljava/util/Set;

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 143
    :cond_5
    const-string v9, "Referer"

    invoke-interface {p1, v9}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "refHeader":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 147
    sget-object v9, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->log:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "POST with content type"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " blocked due to missing referer header field"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    move v4, v8

    .line 148
    goto :goto_0

    .line 152
    :cond_6
    :try_start_0
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "host":Ljava/lang/String;
    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->allowedReferrerHosts:Ljava/util/Set;

    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 157
    .local v4, "ok":Z
    :cond_7
    :goto_1
    if-nez v4, :cond_0

    .line 158
    sget-object v9, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->log:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "POST with content type"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " blocked due to referer header field being: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 161
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "ok":Z
    :catch_0
    move-exception v2

    .line 163
    .local v2, "ex":Ljava/net/URISyntaxException;
    sget-object v9, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->log:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "POST with content type"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " blocked due to malformed referer header field: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    move v4, v8

    .line 164
    goto/16 :goto_0

    .end local v2    # "ex":Ljava/net/URISyntaxException;
    .restart local v3    # "host":Ljava/lang/String;
    :cond_8
    move v4, v8

    .line 156
    goto :goto_1
.end method
