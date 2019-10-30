.class public Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;
.super Ljava/lang/Object;
.source "TimeoutHeader.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/header/Header;
.implements Lorg/apache/jackrabbit/webdav/DavConstants;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;->timeout:J

    .line 36
    return-void
.end method

.method public static parse(Ljava/lang/String;J)J
    .locals 11
    .param p0, "timeoutStr"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 83
    move-wide v4, p1

    .line 84
    .local v4, "timeout":J
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 85
    const-string v3, "Second-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 86
    .local v2, "secondsInd":I
    if-ltz v2, :cond_2

    .line 87
    add-int/lit8 v2, v2, 0x7

    .line 88
    move v0, v2

    .line 89
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    mul-long v4, v6, v8

    .line 102
    .end local v0    # "i":I
    .end local v2    # "secondsInd":I
    :cond_1
    :goto_1
    return-wide v4

    .line 94
    .restart local v0    # "i":I
    .restart local v2    # "secondsInd":I
    :catch_0
    move-exception v1

    .line 96
    .local v1, "ignore":Ljava/lang/NumberFormatException;
    sget-object v3, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid timeout format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    .end local v0    # "i":I
    .end local v1    # "ignore":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v3, "Infinite"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    const-wide/32 v4, 0x7fffffff

    goto :goto_1
.end method

.method public static parse(Ljavax/servlet/http/HttpServletRequest;J)Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;
    .locals 5
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p1, "defaultValue"    # J

    .prologue
    .line 64
    const-string v3, "Timeout"

    invoke-interface {p0, v3}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "timeoutStr":Ljava/lang/String;
    invoke-static {v2, p1, p2}, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;->parse(Ljava/lang/String;J)J

    move-result-wide v0

    .line 66
    .local v0, "timeout":J
    new-instance v3, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;

    invoke-direct {v3, v0, v1}, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;-><init>(J)V

    return-object v3
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "Timeout"

    return-object v0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;->timeout:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 44
    const-string v0, "Infinite"

    .line 46
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Second-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;->timeout:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;->timeout:J

    return-wide v0
.end method
