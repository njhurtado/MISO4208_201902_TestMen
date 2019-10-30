.class public Lorg/apache/jackrabbit/webdav/xml/DomUtil;
.super Ljava/lang/Object;
.source "DomUtil.java"


# static fields
.field private static final BUILDER_FACTORY:Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;

.field private static TRANSFORMER_FACTORY:Ljavax/xml/transform/TransformerFactory;

.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/apache/jackrabbit/webdav/xml/DomUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->log:Lorg/slf4j/Logger;

    .line 60
    new-instance v0, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;

    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;-><init>()V

    sput-object v0, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->BUILDER_FACTORY:Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;

    .line 79
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->TRANSFORMER_FACTORY:Ljavax/xml/transform/TransformerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;
    .locals 2
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 562
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 563
    .local v0, "elem":Lorg/w3c/dom/Element;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 564
    return-object v0
.end method

.method public static addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 602
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 603
    .local v0, "elem":Lorg/w3c/dom/Element;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 604
    return-object v0
.end method

.method public static addChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;
    .locals 3
    .param p0, "parent"    # Lorg/w3c/dom/Node;
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 577
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 578
    .local v0, "doc":Lorg/w3c/dom/Document;
    instance-of v2, p0, Lorg/w3c/dom/Document;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 579
    check-cast v0, Lorg/w3c/dom/Document;

    .line 581
    :cond_0
    invoke-static {v0, p1, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 582
    .local v1, "elem":Lorg/w3c/dom/Element;
    invoke-interface {p0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 583
    return-object v1
.end method

.method public static createDocument()Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->BUILDER_FACTORY:Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;
    .locals 2
    .param p0, "factory"    # Lorg/w3c/dom/Document;
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 525
    if-eqz p2, :cond_0

    .line 526
    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getPrefixedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 528
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public static createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .param p0, "factory"    # Lorg/w3c/dom/Document;
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 547
    invoke-static {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 548
    .local v0, "elem":Lorg/w3c/dom/Element;
    invoke-static {v0, p3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->setText(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 549
    return-object v0
.end method

.method public static depthToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2
    .param p0, "depth"    # Ljava/lang/String;
    .param p1, "factory"    # Lorg/w3c/dom/Document;

    .prologue
    .line 695
    const-string v0, "depth"

    sget-object v1, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v0, v1, p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public static depthToXml(ZLorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 1
    .param p0, "isDeep"    # Z
    .param p1, "factory"    # Lorg/w3c/dom/Document;

    .prologue
    .line 684
    if-eqz p0, :cond_0

    const-string v0, "infinity"

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->depthToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;
    .locals 3
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    const/4 v1, 0x0

    .line 117
    if-nez p0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-object v1

    .line 121
    :cond_1
    if-nez p2, :cond_2

    .line 122
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 126
    .local v0, "attribute":Lorg/w3c/dom/Attr;
    :goto_1
    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 124
    .end local v0    # "attribute":Lorg/w3c/dom/Attr;
    :cond_2
    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, p1}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .restart local v0    # "attribute":Lorg/w3c/dom/Attr;
    goto :goto_1
.end method

.method public static getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;
    .locals 4
    .param p0, "parent"    # Lorg/w3c/dom/Node;
    .param p1, "childLocalName"    # Ljava/lang/String;
    .param p2, "childNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 273
    if-eqz p0, :cond_1

    .line 274
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 275
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 276
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 277
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->isElement(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, p1, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    check-cast v0, Lorg/w3c/dom/Element;

    .line 282
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    :goto_1
    return-object v0

    .line 275
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    .restart local v1    # "children":Lorg/w3c/dom/NodeList;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getChildElement(Lorg/w3c/dom/Node;Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;
    .locals 4
    .param p0, "parent"    # Lorg/w3c/dom/Node;
    .param p1, "childName"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 295
    if-eqz p0, :cond_1

    .line 296
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 297
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 298
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 299
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->isElement(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljavax/xml/namespace/QName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    check-cast v0, Lorg/w3c/dom/Element;

    .line 304
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    :goto_1
    return-object v0

    .line 297
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    .restart local v1    # "children":Lorg/w3c/dom/NodeList;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;
    .locals 2
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "childLocalName"    # Ljava/lang/String;
    .param p2, "childNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 211
    invoke-static {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 212
    .local v0, "child":Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getChildTextTrim(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;
    .locals 2
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "childLocalName"    # Ljava/lang/String;
    .param p2, "childNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 228
    invoke-static {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 229
    .local v0, "child":Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getTextTrim(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getChildTextTrim(Lorg/w3c/dom/Element;Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "childName"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 244
    invoke-static {p0, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 245
    .local v0, "child":Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getTextTrim(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    .locals 1
    .param p0, "parent"    # Lorg/w3c/dom/Element;

    .prologue
    .line 345
    new-instance v0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    invoke-direct {v0, p0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public static getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    .locals 1
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "childLocalName"    # Ljava/lang/String;
    .param p2, "childNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 319
    new-instance v0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V

    return-object v0
.end method

.method public static getChildren(Lorg/w3c/dom/Element;Ljavax/xml/namespace/QName;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    .locals 1
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "childName"    # Ljavax/xml/namespace/QName;

    .prologue
    .line 333
    new-instance v0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;-><init>(Lorg/w3c/dom/Element;Ljavax/xml/namespace/QName;)V

    return-object v0
.end method

.method public static getContent(Lorg/w3c/dom/Node;)Ljava/util/List;
    .locals 5
    .param p0, "parent"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v2, "content":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-eqz p0, :cond_1

    .line 397
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 398
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 399
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 400
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->isAcceptedNode(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static getExpandedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;
    .locals 3
    .param p0, "localName"    # Ljava/lang/String;
    .param p1, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 745
    if-eqz p1, :cond_0

    sget-object v1, Lorg/apache/jackrabbit/webdav/xml/Namespace;->EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {p1, v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    .end local p0    # "localName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 748
    .restart local p0    # "localName":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 749
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 751
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 4
    .param p0, "parent"    # Lorg/w3c/dom/Node;

    .prologue
    .line 355
    if-eqz p0, :cond_1

    .line 356
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 357
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 358
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 359
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->isElement(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    check-cast v0, Lorg/w3c/dom/Element;

    .line 364
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    :goto_1
    return-object v0

    .line 357
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    .restart local v1    # "children":Lorg/w3c/dom/NodeList;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getNamespace(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .locals 3
    .param p0, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 414
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "uri":Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "prefix":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 417
    sget-object v2, Lorg/apache/jackrabbit/webdav/xml/Namespace;->EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 419
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v2

    goto :goto_0
.end method

.method public static getNamespaceAttributes(Lorg/w3c/dom/Element;)[Lorg/w3c/dom/Attr;
    .locals 6
    .param p0, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 140
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 141
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v3, "nsAttr":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Attr;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 143
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 144
    .local v0, "attr":Lorg/w3c/dom/Attr;
    sget-object v4, Lorg/apache/jackrabbit/webdav/xml/Namespace;->XMLNS_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "attr":Lorg/w3c/dom/Attr;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/w3c/dom/Attr;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/w3c/dom/Attr;

    return-object v4
.end method

.method public static getPrefixedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;
    .locals 3
    .param p0, "localName"    # Ljava/lang/String;
    .param p1, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 768
    if-eqz p1, :cond_0

    sget-object v1, Lorg/apache/jackrabbit/webdav/xml/Namespace;->EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1, p1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/jackrabbit/webdav/xml/Namespace;->EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 776
    .end local p0    # "localName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 773
    .restart local p0    # "localName":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 774
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 775
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 776
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getQualifiedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;
    .locals 1
    .param p0, "localName"    # Ljava/lang/String;
    .param p1, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 728
    invoke-static {p0, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getExpandedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 5
    .param p0, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 160
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v1, "content":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_1

    .line 162
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 163
    .local v3, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 164
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 165
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->isText(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    check-cast v0, Lorg/w3c/dom/CharacterData;

    .end local v0    # "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "i":I
    .end local v3    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static getText(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "txt":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public static getTextTrim(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 1
    .param p0, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 195
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "txt":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local v0    # "txt":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "txt":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z
    .locals 1
    .param p0, "parent"    # Lorg/w3c/dom/Node;
    .param p1, "childLocalName"    # Ljava/lang/String;
    .param p2, "childNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 259
    invoke-static {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasContent(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p0, "parent"    # Lorg/w3c/dom/Node;

    .prologue
    .line 376
    if-eqz p0, :cond_1

    .line 377
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 378
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 379
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 380
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->isAcceptedNode(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    const/4 v3, 0x1

    .line 385
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    :goto_1
    return v3

    .line 378
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    .restart local v1    # "children":Lorg/w3c/dom/NodeList;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2
    .param p0, "href"    # Ljava/lang/String;
    .param p1, "factory"    # Lorg/w3c/dom/Document;

    .prologue
    .line 709
    const-string v0, "href"

    sget-object v1, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v0, v1, p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method private static isAcceptedNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 493
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->isElement(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->isText(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isElement(Lorg/w3c/dom/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v0, 0x1

    .line 501
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isText(Lorg/w3c/dom/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 509
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 510
    .local v0, "ntype":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z
    .locals 3
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "requiredLocalName"    # Ljava/lang/String;
    .param p2, "requiredNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    const/4 v1, 0x0

    .line 434
    if-nez p0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v1

    .line 437
    :cond_1
    invoke-static {p0, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matchingNamespace(Lorg/w3c/dom/Node;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v0

    .line 438
    .local v0, "matchingNamespace":Z
    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matchingLocalName(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static matches(Lorg/w3c/dom/Node;Ljavax/xml/namespace/QName;)Z
    .locals 4
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "requiredName"    # Ljavax/xml/namespace/QName;

    .prologue
    const/4 v1, 0x0

    .line 450
    if-nez p0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v1

    .line 453
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "nodens":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "nodens":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private static matchingLocalName(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 2
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "requiredLocalName"    # Ljava/lang/String;

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 481
    const/4 v1, 0x1

    .line 484
    :goto_0
    return v1

    .line 483
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "localName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static matchingNamespace(Lorg/w3c/dom/Node;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z
    .locals 1
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "requiredNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 466
    if-nez p1, :cond_0

    .line 467
    const/4 v0, 0x1

    .line 469
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->isSame(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static parseDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    sget-object v1, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->BUILDER_FACTORY:Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 104
    .local v0, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    return-object v1
.end method

.method public static setAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)V
    .locals 4
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "attrLocalName"    # Ljava/lang/String;
    .param p2, "attrNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 631
    if-nez p2, :cond_0

    .line 632
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 633
    .local v0, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v0, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 634
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 640
    :goto_0
    return-void

    .line 636
    .end local v0    # "attr":Lorg/w3c/dom/Attr;
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getPrefixedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 637
    .restart local v0    # "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v0, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 638
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    goto :goto_0
.end method

.method public static setBuilderFactory(Ljavax/xml/parsers/DocumentBuilderFactory;)V
    .locals 1
    .param p0, "documentBuilderFactory"    # Ljavax/xml/parsers/DocumentBuilderFactory;

    .prologue
    .line 73
    sget-object v0, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->BUILDER_FACTORY:Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;

    invoke-virtual {v0, p0}, Lorg/apache/jackrabbit/webdav/xml/DavDocumentBuilderFactory;->setFactory(Ljavax/xml/parsers/DocumentBuilderFactory;)V

    .line 74
    return-void
.end method

.method public static setNamespaceAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 650
    sget-object v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, p2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    sget-object v0, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->log:Lorg/slf4j/Logger;

    const-string v1, "Empty namespace -> omit attribute setting."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 660
    :goto_0
    return-void

    .line 659
    :cond_0
    sget-object v0, Lorg/apache/jackrabbit/webdav/xml/Namespace;->XMLNS_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, p1, v0, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->setAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setText(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 2
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 614
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    .line 619
    .local v0, "txt":Lorg/w3c/dom/Text;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public static timeoutToXml(JLorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 8
    .param p0, "timeout"    # J
    .param p2, "factory"    # Lorg/w3c/dom/Document;

    .prologue
    const-wide/32 v6, 0x7fffffff

    const-wide/16 v4, 0x3e8

    .line 671
    div-long v2, p0, v4

    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    cmp-long v2, p0, v6

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 672
    .local v1, "infinite":Z
    :goto_0
    if-eqz v1, :cond_2

    const-string v0, "Infinite"

    .line 673
    .local v0, "expString":Ljava/lang/String;
    :goto_1
    const-string v2, "timeout"

    sget-object v3, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p2, v2, v3, v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    return-object v2

    .line 671
    .end local v0    # "expString":Ljava/lang/String;
    .end local v1    # "infinite":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 672
    .restart local v1    # "infinite":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Second-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v4, p0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static transformDocument(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "xmlDoc"    # Lorg/w3c/dom/Document;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 805
    sget-object v1, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->TRANSFORMER_FACTORY:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 806
    .local v0, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/ResultHelper;->getResult(Ljavax/xml/transform/Result;)Ljavax/xml/transform/Result;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 807
    return-void
.end method

.method public static transformDocument(Lorg/w3c/dom/Document;Ljava/io/Writer;)V
    .locals 3
    .param p0, "xmlDoc"    # Lorg/w3c/dom/Document;
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 790
    sget-object v1, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->TRANSFORMER_FACTORY:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 791
    .local v0, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/ResultHelper;->getResult(Ljavax/xml/transform/Result;)Ljavax/xml/transform/Result;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 792
    return-void
.end method
