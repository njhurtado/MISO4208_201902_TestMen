.class public abstract Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.super Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;
.source "DavMethodBase.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/client/methods/DavMethod;
.implements Lorg/apache/jackrabbit/webdav/DavConstants;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private multiStatus:Lorg/apache/jackrabbit/webdav/MultiStatus;

.field private responseDocument:Lorg/w3c/dom/Document;

.field private success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public addRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V
    .locals 2
    .param p1, "header"    # Lorg/apache/jackrabbit/webdav/header/Header;

    .prologue
    .line 73
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/header/Header;->getHeaderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/header/Header;->getHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public checkSuccess()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->succeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getResponseException()Lorg/apache/jackrabbit/webdav/DavException;

    move-result-object v0

    throw v0

    .line 176
    :cond_0
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getResponseBodyAsDocument()Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->responseDocument:Lorg/w3c/dom/Document;

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->responseDocument:Lorg/w3c/dom/Document;

    .line 128
    :goto_0
    return-object v3

    .line 109
    :cond_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v2

    .line 110
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 113
    :try_start_0
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->parseDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 124
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v3, "XML parser configuration error"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 118
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v1    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v3

    .line 119
    :catch_1
    move-exception v0

    .line 120
    .local v0, "e":Lorg/xml/sax/SAXException;
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v3, "XML parsing error"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v1    # "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 122
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .end local v1    # "exception":Ljava/io/IOException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getResponseBodyAsMultiStatus()Lorg/apache/jackrabbit/webdav/MultiStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->checkUsed()V

    .line 88
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->multiStatus:Lorg/apache/jackrabbit/webdav/MultiStatus;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->multiStatus:Lorg/apache/jackrabbit/webdav/MultiStatus;

    return-object v1

    .line 91
    :cond_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getResponseException()Lorg/apache/jackrabbit/webdav/DavException;

    move-result-object v0

    .line 92
    .local v0, "dx":Lorg/apache/jackrabbit/webdav/DavException;
    if-eqz v0, :cond_1

    .line 93
    throw v0

    .line 95
    :cond_1
    new-instance v1, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getStatusCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resulted with unexpected status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getStatusLine()Lorg/apache/commons/httpclient/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getResponseException()Lorg/apache/jackrabbit/webdav/DavException;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->checkUsed()V

    .line 149
    iget-boolean v2, p0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->success:Z

    if-eqz v2, :cond_0

    .line 150
    const-string v0, "Cannot retrieve exception from successful response."

    .line 151
    .local v0, "msg":Ljava/lang/String;
    sget-object v2, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 152
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 157
    .local v1, "responseRoot":Lorg/w3c/dom/Element;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getRootElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 161
    :goto_0
    if-eqz v1, :cond_1

    .line 162
    new-instance v2, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getStatusCode()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getStatusText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v1}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lorg/w3c/dom/Element;)V

    .line 165
    :goto_1
    return-object v2

    :cond_1
    new-instance v2, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getStatusCode()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getStatusText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 158
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method getRootElement()Lorg/w3c/dom/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getResponseBodyAsDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 138
    .local v0, "document":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 141
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getSuccess()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->success:Z

    return v0
.end method

.method protected abstract isSuccess(I)Z
.end method

.method protected processMultiStatusBody(Lorg/apache/jackrabbit/webdav/MultiStatus;Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 0
    .param p1, "multiStatus"    # Lorg/apache/jackrabbit/webdav/MultiStatus;
    .param p2, "httpState"    # Lorg/apache/commons/httpclient/HttpState;
    .param p3, "httpConnection"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 252
    return-void
.end method

.method protected processResponseBody(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 4
    .param p1, "httpState"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "httpConnection"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getStatusCode()I

    move-result v1

    const/16 v2, 0xcf

    if-ne v1, v2, :cond_0

    .line 282
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getRootElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/MultiStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->multiStatus:Lorg/apache/jackrabbit/webdav/MultiStatus;

    .line 284
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->multiStatus:Lorg/apache/jackrabbit/webdav/MultiStatus;

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->processMultiStatusBody(Lorg/apache/jackrabbit/webdav/MultiStatus;Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while parsing multistatus response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 287
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->success:Z

    goto :goto_0
.end method

.method protected processStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2
    .param p1, "httpState"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "httpConnection"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 262
    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->processStatusLine(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 263
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->getStatusCode()I

    move-result v0

    .line 265
    .local v0, "code":I
    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->isSuccess(I)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->success:Z

    .line 266
    return-void
.end method

.method public setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V
    .locals 4
    .param p1, "requestBody"    # Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    :try_start_0
    invoke-static {}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 204
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {p1, v0}, Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 205
    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->setRequestBody(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-void

    .line 206
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "XML parser configuration error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 209
    .local v2, "exception":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 210
    throw v2
.end method

.method public setRequestBody(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "requestBody"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lorg/apache/jackrabbit/webdav/client/methods/XmlRequestEntity;

    invoke-direct {v0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/XmlRequestEntity;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 194
    return-void
.end method

.method public setRequestHeader(Lorg/apache/jackrabbit/webdav/header/Header;)V
    .locals 2
    .param p1, "header"    # Lorg/apache/jackrabbit/webdav/header/Header;

    .prologue
    .line 80
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/header/Header;->getHeaderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/header/Header;->getHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method protected setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->success:Z

    .line 228
    return-void
.end method

.method public succeeded()Z
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->checkUsed()V

    .line 183
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;->success:Z

    return v0
.end method
