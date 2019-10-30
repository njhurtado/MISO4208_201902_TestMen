.class public Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;
.super Ljava/lang/Object;
.source "OutputContextImpl.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/io/OutputContext;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final out:Ljava/io/OutputStream;

.field private final response:Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpServletResponse;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;->response:Ljavax/servlet/http/HttpServletResponse;

    .line 42
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;->out:Ljava/io/OutputStream;

    .line 43
    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public hasStream()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentLanguage"    # Ljava/lang/String;

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;->response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "Content-Language"

    invoke-interface {v0, v1, p1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public setContentLength(J)V
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 61
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 62
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;->response:Ljavax/servlet/http/HttpServletResponse;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;->response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;->response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 2
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;->response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "ETag"

    invoke-interface {v0, v1, p1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setModificationTime(J)V
    .locals 3
    .param p1, "modificationTime"    # J

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;->response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "Last-Modified"

    invoke-interface {v0, v1, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addDateHeader(Ljava/lang/String;J)V

    .line 79
    :cond_0
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/String;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 89
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;->response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method
