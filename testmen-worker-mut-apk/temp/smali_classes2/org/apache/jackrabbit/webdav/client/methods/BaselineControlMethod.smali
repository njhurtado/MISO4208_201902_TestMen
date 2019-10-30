.class public Lorg/apache/jackrabbit/webdav/client/methods/BaselineControlMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "BaselineControlMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/BaselineControlMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/BaselineControlMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "baselineHref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 44
    if-eqz p2, :cond_0

    .line 48
    :try_start_0
    invoke-static {}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 49
    .local v0, "document":Lorg/w3c/dom/Document;
    const-string v3, "baseline-control"

    sget-object v4, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 50
    .local v2, "el":Lorg/w3c/dom/Element;
    invoke-static {p2, v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 52
    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/client/methods/BaselineControlMethod;->setRequestBody(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v2    # "el":Lorg/w3c/dom/Element;
    :cond_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "BASELINE-CONTROL"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 75
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
