.class public final Lorg/apache/jackrabbit/webdav/xml/ResultHelper;
.super Ljava/lang/Object;
.source "ResultHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/xml/ResultHelper$1;,
        Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;
    }
.end annotation


# static fields
.field private static final FACTORY:Ljavax/xml/transform/sax/SAXTransformerFactory;

.field private static final NEEDS_XMLNS_ATTRIBUTES:Z

.field private static final XML:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper;->log:Lorg/slf4j/Logger;

    .line 65
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/sax/SAXTransformerFactory;

    sput-object v0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper;->FACTORY:Ljavax/xml/transform/sax/SAXTransformerFactory;

    .line 79
    invoke-static {}, Lorg/apache/jackrabbit/webdav/xml/ResultHelper;->needsXmlnsAttributes()Z

    move-result v0

    sput-boolean v0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper;->NEEDS_XMLNS_ATTRIBUTES:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method public static getResult(Ljavax/xml/transform/Result;)Ljavax/xml/transform/Result;
    .locals 5
    .param p0, "result"    # Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    sget-object v3, Lorg/apache/jackrabbit/webdav/xml/ResultHelper;->FACTORY:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v3}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v1

    .line 118
    .local v1, "handler":Ljavax/xml/transform/sax/TransformerHandler;
    invoke-interface {v1, p0}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V

    .line 123
    invoke-interface {v1}, Ljavax/xml/transform/sax/TransformerHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 124
    .local v2, "transformer":Ljavax/xml/transform/Transformer;
    const-string v3, "method"

    const-string v4, "xml"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v3, "encoding"

    const-string v4, "UTF-8"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v3, "indent"

    const-string v4, "no"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-boolean v3, Lorg/apache/jackrabbit/webdav/xml/ResultHelper;->NEEDS_XMLNS_ATTRIBUTES:Z

    if-eqz v3, :cond_0

    .line 131
    new-instance p0, Ljavax/xml/transform/sax/SAXResult;

    .end local p0    # "result":Ljavax/xml/transform/Result;
    new-instance v3, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/jackrabbit/webdav/xml/ResultHelper$1;)V

    invoke-direct {p0, v3}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    return-object p0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v4, "Failed to initialize XML serializer"

    invoke-direct {v3, v4, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private static needsXmlnsAttributes()Z
    .locals 7

    .prologue
    .line 90
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 91
    .local v2, "writer":Ljava/io/StringWriter;
    sget-object v3, Lorg/apache/jackrabbit/webdav/xml/ResultHelper;->FACTORY:Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v3}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v1

    .line 92
    .local v1, "probe":Ljavax/xml/transform/sax/TransformerHandler;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-interface {v1, v3}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V

    .line 93
    invoke-interface {v1}, Ljavax/xml/transform/sax/TransformerHandler;->startDocument()V

    .line 94
    const-string v3, "p"

    const-string v4, "uri"

    invoke-interface {v1, v3, v4}, Ljavax/xml/transform/sax/TransformerHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "uri"

    const-string v4, "e"

    const-string v5, "p:e"

    new-instance v6, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v6}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-interface {v1, v3, v4, v5, v6}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 96
    const-string v3, "uri"

    const-string v4, "e"

    const-string v5, "p:e"

    invoke-interface {v1, v3, v4, v5}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "p"

    invoke-interface {v1, v3}, Ljavax/xml/transform/sax/TransformerHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 98
    invoke-interface {v1}, Ljavax/xml/transform/sax/TransformerHandler;->endDocument()V

    .line 99
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xmlns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 100
    .end local v1    # "probe":Ljavax/xml/transform/sax/TransformerHandler;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "XML serialization fails"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
