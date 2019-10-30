.class public Lorg/apache/jackrabbit/webdav/io/InputContextImpl;
.super Ljava/lang/Object;
.source "InputContextImpl.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/io/InputContext;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final request:Ljavax/servlet/http/HttpServletRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/jackrabbit/webdav/io/InputContextImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/io/InputContextImpl;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DavResource and Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/io/InputContextImpl;->request:Ljavax/servlet/http/HttpServletRequest;

    .line 44
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/io/InputContextImpl;->in:Ljava/io/InputStream;

    .line 45
    return-void
.end method


# virtual methods
.method public getContentLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/InputContextImpl;->request:Ljavax/servlet/http/HttpServletRequest;

    const-string v1, "Content-Language"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 7

    .prologue
    const-wide/16 v2, -0x1

    .line 77
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/io/InputContextImpl;->request:Ljavax/servlet/http/HttpServletRequest;

    const-string v5, "Content-Length"

    invoke-interface {v4, v5}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "length":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 86
    :goto_0
    return-wide v2

    .line 83
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ex":Ljava/lang/NumberFormatException;
    sget-object v4, Lorg/apache/jackrabbit/webdav/io/InputContextImpl;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "broken Content-Length header: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/InputContextImpl;->request:Ljavax/servlet/http/HttpServletRequest;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/InputContextImpl;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getModificationTime()J
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/InputContextImpl;->request:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasStream()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/InputContextImpl;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
