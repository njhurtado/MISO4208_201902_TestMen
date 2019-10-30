.class public Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
.super Ljava/lang/Object;
.source "ElementIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/w3c/dom/Element;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final localName:Ljava/lang/String;

.field private final namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field private next:Lorg/w3c/dom/Element;

.field private final qName:Ljavax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "parent"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V
    .locals 1
    .param p1, "parent"    # Lorg/w3c/dom/Element;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->localName:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->qName:Ljavax/xml/namespace/QName;

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->seek(Lorg/w3c/dom/Element;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljavax/xml/namespace/QName;)V
    .locals 1
    .param p1, "parent"    # Lorg/w3c/dom/Element;
    .param p2, "qname"    # Ljavax/xml/namespace/QName;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->localName:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 70
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->qName:Ljavax/xml/namespace/QName;

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->seek(Lorg/w3c/dom/Element;)V

    .line 72
    return-void
.end method

.method private matchesName(Lorg/w3c/dom/Node;)Z
    .locals 2
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    .line 162
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->isElement(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->qName:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->qName:Ljavax/xml/namespace/QName;

    invoke-static {p1, v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljavax/xml/namespace/QName;)Z

    move-result v0

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->localName:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v0, v1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v0

    goto :goto_0
.end method

.method private seek()V
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->next:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 145
    .local v0, "n":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0, v0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->matchesName(Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "n":Lorg/w3c/dom/Node;
    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->next:Lorg/w3c/dom/Element;

    .line 155
    :goto_1
    return-void

    .line 150
    .restart local v0    # "n":Lorg/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->next:Lorg/w3c/dom/Element;

    goto :goto_1
.end method

.method private seek(Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "parent"    # Lorg/w3c/dom/Element;

    .prologue
    .line 130
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 131
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 132
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 133
    .local v1, "n":Lorg/w3c/dom/Node;
    invoke-direct {p0, v1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->matchesName(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    check-cast v1, Lorg/w3c/dom/Element;

    .end local v1    # "n":Lorg/w3c/dom/Node;
    iput-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->next:Lorg/w3c/dom/Element;

    .line 138
    :cond_0
    return-void

    .line 131
    .restart local v1    # "n":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->next:Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->next()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lorg/w3c/dom/Element;
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->next:Lorg/w3c/dom/Element;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->next:Lorg/w3c/dom/Element;

    .line 122
    .local v0, "ret":Lorg/w3c/dom/Element;
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->seek()V

    .line 123
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
