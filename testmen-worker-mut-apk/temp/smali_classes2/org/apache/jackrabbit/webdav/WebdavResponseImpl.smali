.class public Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;
.super Ljava/lang/Object;
.source "WebdavResponseImpl.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/WebdavResponse;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private httpResponse:Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .param p1, "httpResponse"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;-><init>(Ljavax/servlet/http/HttpServletResponse;Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpServletResponse;Z)V
    .locals 2
    .param p1, "httpResponse"    # Ljavax/servlet/http/HttpServletResponse;
    .param p2, "noCache"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    .line 73
    if-eqz p2, :cond_0

    .line 75
    const-string v0, "Pragma"

    const-string v1, "No-cache"

    invoke-virtual {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "Cache-Control"

    const-string v1, "no-cache"

    invoke-virtual {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 1
    .param p1, "cookie"    # Ljavax/servlet/http/Cookie;

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->addCookie(Ljavax/servlet/http/Cookie;)V

    .line 196
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "l"    # J

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->addDateHeader(Ljava/lang/String;J)V

    .line 236
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addIntHeader(Ljava/lang/String;I)V

    .line 252
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 292
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getBufferSize()I

    move-result v0

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->reset()V

    .line 304
    return-void
.end method

.method public resetBuffer()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->resetBuffer()V

    .line 296
    return-void
.end method

.method public sendError(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 224
    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 220
    return-void
.end method

.method public sendError(Lorg/apache/jackrabbit/webdav/DavException;)V
    .locals 3
    .param p1, "exception"    # Lorg/apache/jackrabbit/webdav/DavException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/DavException;->hasErrorCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/DavException;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/DavException;->getStatusPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/DavException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->sendXmlResponse(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;I)V

    goto :goto_0
.end method

.method public sendMultiStatus(Lorg/apache/jackrabbit/webdav/MultiStatus;)V
    .locals 1
    .param p1, "multistatus"    # Lorg/apache/jackrabbit/webdav/MultiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/16 v0, 0xcf

    invoke-virtual {p0, p1, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->sendXmlResponse(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;I)V

    .line 108
    return-void
.end method

.method public sendPollResponse(Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;)V
    .locals 1
    .param p1, "eventDiscovery"    # Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->sendXmlResponse(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;I)V

    .line 191
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public sendRefreshLockResponse([Lorg/apache/jackrabbit/webdav/lock/ActiveLock;)V
    .locals 2
    .param p1, "locks"    # [Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;-><init>()V

    .line 120
    .local v0, "propSet":Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
    new-instance v1, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;

    invoke-direct {v1, p1}, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;-><init>([Lorg/apache/jackrabbit/webdav/lock/ActiveLock;)V

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->add(Lorg/apache/jackrabbit/webdav/property/DavProperty;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    .line 121
    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->sendXmlResponse(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;I)V

    .line 122
    return-void
.end method

.method public sendSubscriptionResponse(Lorg/apache/jackrabbit/webdav/observation/Subscription;)V
    .locals 6
    .param p1, "subscription"    # Lorg/apache/jackrabbit/webdav/observation/Subscription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/observation/Subscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 175
    new-instance v0, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;

    const-string v3, "SubscriptionId"

    invoke-direct {v0, v3, v1}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v0, "h":Lorg/apache/jackrabbit/webdav/header/Header;
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/header/Header;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/header/Header;->getHeaderValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v0    # "h":Lorg/apache/jackrabbit/webdav/header/Header;
    :cond_0
    new-instance v2, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    invoke-direct {v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;-><init>()V

    .line 179
    .local v2, "propSet":Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
    new-instance v3, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;

    invoke-direct {v3, p1}, Lorg/apache/jackrabbit/webdav/observation/SubscriptionDiscovery;-><init>(Lorg/apache/jackrabbit/webdav/observation/Subscription;)V

    invoke-virtual {v2, v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->add(Lorg/apache/jackrabbit/webdav/property/DavProperty;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    .line 180
    const/16 v3, 0xc8

    invoke-virtual {p0, v2, v3}, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->sendXmlResponse(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;I)V

    .line 181
    return-void
.end method

.method public sendXmlResponse(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;I)V
    .locals 6
    .param p1, "serializable"    # Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v4, p2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 139
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {p1, v0}, Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 144
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 145
    .local v3, "writer":Ljava/io/Writer;
    invoke-static {v0, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->transformDocument(Lorg/w3c/dom/Document;Ljava/io/Writer;)V

    .line 146
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 149
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    const-string v5, "text/xml; charset=UTF-8"

    invoke-interface {v4, v5}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 150
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-interface {v4, v5}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 151
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v4}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 163
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "writer":Ljava/io/Writer;
    :cond_0
    return-void

    .line 152
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v4, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->log:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 154
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 155
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 156
    .local v1, "e":Ljavax/xml/transform/TransformerException;
    sget-object v4, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->log:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 157
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 158
    .end local v1    # "e":Ljavax/xml/transform/TransformerException;
    :catch_2
    move-exception v1

    .line 159
    .local v1, "e":Lorg/xml/sax/SAXException;
    sget-object v4, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->log:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 160
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setBufferSize(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setBufferSize(I)V

    .line 284
    return-void
.end method

.method public setContentLength(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 276
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "l"    # J

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 232
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setIntHeader(Ljava/lang/String;I)V

    .line 248
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setLocale(Ljava/util/Locale;)V

    .line 308
    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 256
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;->httpResponse:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(ILjava/lang/String;)V

    .line 260
    return-void
.end method
