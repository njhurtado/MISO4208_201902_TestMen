.class public Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "PropFindMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x1

    new-instance v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;-><init>(Ljava/lang/String;ILorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "propfindType"    # I
    .param p3, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;-><init>(Ljava/lang/String;ILorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;I)V
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "propfindType"    # I
    .param p3, "propNameSet"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .param p4, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lorg/apache/jackrabbit/webdav/header/DepthHeader;

    invoke-direct {v1, p4}, Lorg/apache/jackrabbit/webdav/header/DepthHeader;-><init>(I)V

    .line 77
    .local v1, "dh":Lorg/apache/jackrabbit/webdav/header/DepthHeader;
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/header/DepthHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/header/DepthHeader;->getHeaderValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :try_start_0
    invoke-static {}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 83
    .local v2, "document":Lorg/w3c/dom/Document;
    const-string v8, "propfind"

    sget-object v9, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v2, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 84
    .local v6, "propfind":Lorg/w3c/dom/Element;
    invoke-interface {v2, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 87
    packed-switch p2, :pswitch_data_0

    .line 122
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "unknown propfind type"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v2    # "document":Lorg/w3c/dom/Document;
    .end local v6    # "propfind":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v3

    .line 128
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 89
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v2    # "document":Lorg/w3c/dom/Document;
    .restart local v6    # "propfind":Lorg/w3c/dom/Element;
    :pswitch_0
    :try_start_1
    const-string v8, "allprop"

    sget-object v9, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v2, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->setRequestBody(Lorg/w3c/dom/Document;)V

    .line 130
    return-void

    .line 93
    :pswitch_1
    const-string v8, "propname"

    sget-object v9, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v2, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 97
    :pswitch_2
    if-nez p3, :cond_1

    .line 99
    const-string v8, "prop"

    sget-object v9, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v2, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 100
    .local v5, "prop":Lorg/w3c/dom/Element;
    const-string v8, "resourcetype"

    sget-object v9, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v2, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 101
    .local v7, "resourcetype":Lorg/w3c/dom/Element;
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 102
    invoke-interface {v6, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 104
    .end local v5    # "prop":Lorg/w3c/dom/Element;
    .end local v7    # "resourcetype":Lorg/w3c/dom/Element;
    :cond_1
    invoke-virtual {p3, v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 109
    :pswitch_3
    const-string v8, "allprop"

    sget-object v9, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v2, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 110
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 111
    const-string v8, "include"

    sget-object v9, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v2, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 112
    .local v4, "include":Lorg/w3c/dom/Element;
    invoke-virtual {p3, v2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 113
    .restart local v5    # "prop":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "c":Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v0, :cond_2

    .line 115
    const/4 v8, 0x1

    invoke-interface {v0, v8}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 113
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    .line 117
    :cond_2
    invoke-interface {v6, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;I)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "propNameSet"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .param p3, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/jackrabbit/webdav/client/methods/PropFindMethod;-><init>(Ljava/lang/String;ILorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;I)V

    .line 65
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "PROPFIND"

    return-object v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 148
    const/16 v0, 0xcf

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
