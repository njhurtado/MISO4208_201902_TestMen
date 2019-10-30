.class public Lorg/apache/jackrabbit/webdav/version/OptionsInfo;
.super Ljava/lang/Object;
.source "OptionsInfo.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final entriesLocalNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;->entriesLocalNames:Ljava/util/Set;

    .line 76
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "entriesLocalNames"    # [Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;->entriesLocalNames:Ljava/util/Set;

    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;->entriesLocalNames:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 71
    :cond_0
    return-void
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/version/OptionsInfo;
    .locals 4
    .param p0, "optionsElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 114
    const-string v2, "options"

    sget-object v3, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    sget-object v2, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;->log:Lorg/slf4j/Logger;

    const-string v3, "DAV:options element expected"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 116
    new-instance v2, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v3, 0x190

    invoke-direct {v2, v3}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v2

    .line 118
    :cond_0
    new-instance v1, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;

    invoke-direct {v1}, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;-><init>()V

    .line 119
    .local v1, "oInfo":Lorg/apache/jackrabbit/webdav/version/OptionsInfo;
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v0

    .line 120
    .local v0, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, v1, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;->entriesLocalNames:Ljava/util/Set;

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    return-object v1
.end method


# virtual methods
.method public containsElement(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 86
    sget-object v0, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v0, p2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;->entriesLocalNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 97
    const-string v3, "options"

    sget-object v4, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 98
    .local v2, "optionsElem":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;->entriesLocalNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "localName":Ljava/lang/String;
    sget-object v3, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v2, v1, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    goto :goto_0

    .line 101
    .end local v1    # "localName":Ljava/lang/String;
    :cond_0
    return-object v2
.end method
