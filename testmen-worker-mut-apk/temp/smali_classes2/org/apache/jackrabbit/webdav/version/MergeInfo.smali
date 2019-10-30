.class public Lorg/apache/jackrabbit/webdav/version/MergeInfo;
.super Ljava/lang/Object;
.source "MergeInfo.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final mergeElement:Lorg/w3c/dom/Element;

.field private final propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "mergeElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v1, "merge"

    sget-object v2, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    sget-object v1, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->log:Lorg/slf4j/Logger;

    const-string v2, "\'DAV:merge\' element expected"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 67
    new-instance v1, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v2, 0x190

    invoke-direct {v1, v2}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v1

    .line 71
    :cond_0
    const-string v1, "prop"

    sget-object v2, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 72
    .local v0, "propElem":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_1

    .line 73
    new-instance v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v1, v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .line 74
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 78
    :goto_0
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->mergeElement:Lorg/w3c/dom/Element;

    .line 79
    return-void

    .line 76
    :cond_1
    new-instance v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    iput-object v1, p0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    goto :goto_0
.end method

.method public static createMergeElement([Ljava/lang/String;ZZLorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 8
    .param p0, "mergeSource"    # [Ljava/lang/String;
    .param p1, "isNoAutoMerge"    # Z
    .param p2, "isNoCheckout"    # Z
    .param p3, "factory"    # Lorg/w3c/dom/Document;

    .prologue
    .line 169
    const-string v6, "merge"

    sget-object v7, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p3, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 170
    .local v3, "mergeElem":Lorg/w3c/dom/Element;
    const-string v6, "source"

    sget-object v7, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v3, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 171
    .local v5, "source":Lorg/w3c/dom/Element;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 172
    .local v4, "ms":Ljava/lang/String;
    invoke-static {v4, p3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v4    # "ms":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 175
    const-string v6, "no-auto-merge"

    sget-object v7, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v3, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    .line 177
    :cond_1
    if-eqz p2, :cond_2

    .line 178
    const-string v6, "no-checkout"

    sget-object v7, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v3, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    .line 180
    :cond_2
    return-object v3
.end method


# virtual methods
.method public getMergeElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->mergeElement:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getPropertyNameSet()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    return-object v0
.end method

.method public getSourceHrefs()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v2, "sourceHrefs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->mergeElement:Lorg/w3c/dom/Element;

    const-string v5, "source"

    sget-object v6, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v4, v5, v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 90
    .local v3, "srcElem":Lorg/w3c/dom/Element;
    if-eqz v3, :cond_1

    .line 91
    const-string v4, "href"

    sget-object v5, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v3, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v1

    .line 92
    .local v1, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getTextTrim(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "href":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v0    # "href":Ljava/lang/String;
    .end local v1    # "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public isNoAutoMerge()Z
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->mergeElement:Lorg/w3c/dom/Element;

    const-string v1, "no-auto-merge"

    sget-object v2, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v0

    return v0
.end method

.method public isNoCheckout()Z
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->mergeElement:Lorg/w3c/dom/Element;

    const-string v1, "no-checkout"

    sget-object v2, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v0

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 150
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->mergeElement:Lorg/w3c/dom/Element;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 151
    .local v0, "elem":Lorg/w3c/dom/Element;
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;->propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-virtual {v1, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 154
    :cond_0
    return-object v0
.end method
