.class public Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;
.super Ljava/lang/Object;
.source "UnbindInfo.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private segment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;->segment:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;
    .locals 7
    .param p0, "root"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x190

    .line 54
    const-string v3, "unbind"

    sget-object v4, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    sget-object v3, Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;->log:Lorg/slf4j/Logger;

    const-string v4, "DAV:unbind element expected"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 56
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v3, v6}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v3

    .line 58
    :cond_0
    const/4 v2, 0x0

    .line 59
    .local v2, "segment":Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v1

    .line 60
    .local v1, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 62
    .local v0, "elt":Lorg/w3c/dom/Element;
    const-string v3, "segment"

    sget-object v4, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    if-nez v2, :cond_1

    .line 64
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 66
    :cond_1
    sget-object v3, Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;->log:Lorg/slf4j/Logger;

    const-string v4, "unexpected multiple occurrence of DAV:segment element"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 67
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v3, v6}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v3

    .line 70
    :cond_2
    sget-object v3, Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected element "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 71
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v3, v6}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v3

    .line 74
    .end local v0    # "elt":Lorg/w3c/dom/Element;
    :cond_3
    if-nez v2, :cond_4

    .line 75
    sget-object v3, Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;->log:Lorg/slf4j/Logger;

    const-string v4, "DAV:segment element expected"

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 76
    new-instance v3, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v3, v6}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v3

    .line 78
    :cond_4
    new-instance v3, Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;

    invoke-direct {v3, v2}, Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;-><init>(Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public getSegment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;->segment:Ljava/lang/String;

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 85
    const-string v2, "unbind"

    sget-object v3, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 86
    .local v1, "unbindElt":Lorg/w3c/dom/Element;
    const-string v2, "segment"

    sget-object v3, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;->segment:Ljava/lang/String;

    invoke-static {p1, v2, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 87
    .local v0, "segElt":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 88
    return-object v1
.end method
