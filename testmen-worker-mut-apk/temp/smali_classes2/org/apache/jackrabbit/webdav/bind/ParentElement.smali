.class public Lorg/apache/jackrabbit/webdav/bind/ParentElement;
.super Ljava/lang/Object;
.source "ParentElement.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final href:Ljava/lang/String;

.field private final segment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/jackrabbit/webdav/bind/ParentElement;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/bind/ParentElement;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "segment"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/bind/ParentElement;->href:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/bind/ParentElement;->segment:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/bind/ParentElement;
    .locals 8
    .param p0, "root"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x190

    .line 61
    const-string v4, "parent"

    sget-object v5, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    sget-object v4, Lorg/apache/jackrabbit/webdav/bind/ParentElement;->log:Lorg/slf4j/Logger;

    const-string v5, "DAV:paret element expected"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 63
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v4, v7}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v4

    .line 65
    :cond_0
    const/4 v1, 0x0

    .line 66
    .local v1, "href":Ljava/lang/String;
    const/4 v3, 0x0

    .line 67
    .local v3, "segment":Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v2

    .line 68
    .local v2, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 69
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 70
    .local v0, "elt":Lorg/w3c/dom/Element;
    const-string v4, "segment"

    sget-object v5, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    if-nez v3, :cond_1

    .line 72
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 74
    :cond_1
    sget-object v4, Lorg/apache/jackrabbit/webdav/bind/ParentElement;->log:Lorg/slf4j/Logger;

    const-string v5, "unexpected multiple occurrence of DAV:segment element"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 75
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v4, v7}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v4

    .line 77
    :cond_2
    const-string v4, "href"

    sget-object v5, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 78
    if-nez v1, :cond_3

    .line 79
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 81
    :cond_3
    sget-object v4, Lorg/apache/jackrabbit/webdav/bind/ParentElement;->log:Lorg/slf4j/Logger;

    const-string v5, "unexpected multiple occurrence of DAV:href element"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 82
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v4, v7}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v4

    .line 85
    :cond_4
    sget-object v4, Lorg/apache/jackrabbit/webdav/bind/ParentElement;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 86
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v4, v7}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v4

    .line 89
    .end local v0    # "elt":Lorg/w3c/dom/Element;
    :cond_5
    if-nez v1, :cond_6

    .line 90
    sget-object v4, Lorg/apache/jackrabbit/webdav/bind/ParentElement;->log:Lorg/slf4j/Logger;

    const-string v5, "DAV:href element expected"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 91
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v4, v7}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v4

    .line 93
    :cond_6
    if-nez v3, :cond_7

    .line 94
    sget-object v4, Lorg/apache/jackrabbit/webdav/bind/ParentElement;->log:Lorg/slf4j/Logger;

    const-string v5, "DAV:segment element expected"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 95
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v4, v7}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v4

    .line 97
    :cond_7
    new-instance v4, Lorg/apache/jackrabbit/webdav/bind/ParentElement;

    invoke-direct {v4, v1, v3}, Lorg/apache/jackrabbit/webdav/bind/ParentElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/bind/ParentElement;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getSegment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/bind/ParentElement;->segment:Ljava/lang/String;

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 6
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 104
    const-string v3, "parent"

    sget-object v4, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 105
    .local v1, "parentElt":Lorg/w3c/dom/Element;
    const-string v3, "href"

    sget-object v4, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/bind/ParentElement;->href:Ljava/lang/String;

    invoke-static {p1, v3, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 106
    .local v0, "hrefElt":Lorg/w3c/dom/Element;
    const-string v3, "segment"

    sget-object v4, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/bind/ParentElement;->segment:Ljava/lang/String;

    invoke-static {p1, v3, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 107
    .local v2, "segElt":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 108
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 109
    return-object v1
.end method
