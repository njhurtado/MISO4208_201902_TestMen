.class public Lorg/apache/jackrabbit/webdav/client/methods/XmlRequestEntity;
.super Ljava/lang/Object;
.source "XmlRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final xml:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/XmlRequestEntity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/XmlRequestEntity;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 3
    .param p1, "xmlDocument"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/XmlRequestEntity;->xml:Ljava/io/ByteArrayOutputStream;

    .line 43
    :try_start_0
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/XmlRequestEntity;->xml:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1, v1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->transformDocument(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    sget-object v1, Lorg/apache/jackrabbit/webdav/client/methods/XmlRequestEntity;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 46
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    .end local v0    # "e":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v0

    .line 48
    .local v0, "e":Lorg/xml/sax/SAXException;
    sget-object v1, Lorg/apache/jackrabbit/webdav/client/methods/XmlRequestEntity;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 49
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/XmlRequestEntity;->xml:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "text/xml; charset=UTF-8"

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/XmlRequestEntity;->xml:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 64
    return-void
.end method
