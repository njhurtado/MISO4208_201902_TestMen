.class public Lorg/apache/jackrabbit/webdav/version/OptionsResponse;
.super Ljava/lang/Object;
.source "OptionsResponse.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/version/OptionsResponse$1;,
        Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse;->entries:Ljava/util/Map;

    .line 132
    return-void
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/version/OptionsResponse;
    .locals 8
    .param p0, "orElem"    # Lorg/w3c/dom/Element;

    .prologue
    .line 115
    const-string v5, "options-response"

    sget-object v6, Lorg/apache/jackrabbit/webdav/version/OptionsResponse;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v5, v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "DAV:options-response element expected"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 118
    :cond_0
    new-instance v4, Lorg/apache/jackrabbit/webdav/version/OptionsResponse;

    invoke-direct {v4}, Lorg/apache/jackrabbit/webdav/version/OptionsResponse;-><init>()V

    .line 119
    .local v4, "oResponse":Lorg/apache/jackrabbit/webdav/version/OptionsResponse;
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v3

    .line 120
    .local v3, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 121
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 122
    .local v0, "el":Lorg/w3c/dom/Element;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, "hrefs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "href"

    sget-object v6, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v5, v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v1

    .line 124
    .local v1, "hrefIt":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_1
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getTextTrim(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getNamespace(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lorg/apache/jackrabbit/webdav/version/OptionsResponse;->addEntry(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;[Ljava/lang/String;)V

    goto :goto_0

    .line 129
    .end local v0    # "el":Lorg/w3c/dom/Element;
    .end local v1    # "hrefIt":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    .end local v2    # "hrefs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v4
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;[Ljava/lang/String;)V
    .locals 3
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p3, "hrefs"    # [Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;[Ljava/lang/String;Lorg/apache/jackrabbit/webdav/version/OptionsResponse$1;)V

    .line 70
    .local v0, "entry":Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse;->entries:Ljava/util/Map;

    invoke-static {p1, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getExpandedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public getHrefs(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)[Ljava/lang/String;
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 80
    invoke-static {p1, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getExpandedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse;->entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse;->entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;

    invoke-static {v1}, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;->access$100(Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 10
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 96
    const-string v8, "options-response"

    sget-object v9, Lorg/apache/jackrabbit/webdav/version/OptionsResponse;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 97
    .local v7, "optionsResponse":Lorg/w3c/dom/Element;
    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/version/OptionsResponse;->entries:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;

    .line 98
    .local v2, "entry":Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;->access$200(Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;->access$300(Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 99
    .local v1, "elem":Lorg/w3c/dom/Element;
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;->access$100(Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v0, v5

    .line 100
    .local v3, "href":Ljava/lang/String;
    invoke-static {v3, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "elem":Lorg/w3c/dom/Element;
    .end local v2    # "entry":Lorg/apache/jackrabbit/webdav/version/OptionsResponse$Entry;
    .end local v3    # "href":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    return-object v7
.end method
