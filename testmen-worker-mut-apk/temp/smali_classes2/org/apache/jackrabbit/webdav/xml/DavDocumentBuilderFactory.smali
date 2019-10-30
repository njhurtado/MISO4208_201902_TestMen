.class public Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;
.super Ljava/lang/Object;
.source "DavDocumentBuilderFactory.java"


# static fields
.field private static final DEFAULT_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private final DEFAULT_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/jackrabbit/webdav/xml/DomUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->LOG:Lorg/slf4j/Logger;

    .line 68
    new-instance v0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory$1;

    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory$1;-><init>()V

    sput-object v0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->DEFAULT_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->createFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->DEFAULT_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 41
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->DEFAULT_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private createFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 45
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 46
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 47
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 48
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 50
    :try_start_0
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :goto_0
    return-object v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v2, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Secure XML processing is not supported"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/AbstractMethodError;
    sget-object v2, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Secure XML processing is not supported"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 80
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->DEFAULT_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-ne v1, v2, :cond_0

    .line 82
    sget-object v1, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->DEFAULT_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 84
    :cond_0
    new-instance v1, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 85
    return-object v0
.end method

.method public setFactory(Ljavax/xml/parsers/DocumentBuilderFactory;)V
    .locals 3
    .param p1, "documentBuilderFactory"    # Ljavax/xml/parsers/DocumentBuilderFactory;

    .prologue
    .line 60
    sget-object v0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocumentBuilderFactory changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 61
    if-eqz p1, :cond_0

    .end local p1    # "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_0
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 62
    return-void

    .line 61
    .restart local p1    # "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_0
    iget-object p1, p0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->DEFAULT_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    goto :goto_0
.end method
