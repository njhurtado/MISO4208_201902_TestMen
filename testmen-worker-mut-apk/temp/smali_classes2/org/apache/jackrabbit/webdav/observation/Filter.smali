.class public Lorg/apache/jackrabbit/webdav/observation/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final filterName:Ljava/lang/String;

.field private final filterNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field private final filterValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/jackrabbit/webdav/observation/Filter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/Filter;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)V
    .locals 2
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "filterNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p3, "filterValue"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filterName must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 44
    iput-object p3, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterValue:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "filterElem"    # Lorg/w3c/dom/Element;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterName:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getNamespace(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 50
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getTextTrim(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterValue:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterValue:Ljava/lang/String;

    return-object v0
.end method

.method public isMatchingFilter(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z
    .locals 4
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    if-nez v3, :cond_1

    if-nez p2, :cond_0

    move v0, v1

    .line 67
    .local v0, "matchingNsp":Z
    :goto_0
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v1

    .end local v0    # "matchingNsp":Z
    :cond_0
    move v0, v2

    .line 66
    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v3, p2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local v0    # "matchingNsp":Z
    :cond_2
    move v1, v2

    .line 67
    goto :goto_1
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterName:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/observation/Filter;->filterValue:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method
