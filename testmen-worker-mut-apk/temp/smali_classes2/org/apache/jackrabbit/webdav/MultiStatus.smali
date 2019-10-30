.class public Lorg/apache/jackrabbit/webdav/MultiStatus;
.super Ljava/lang/Object;
.source "MultiStatus.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# instance fields
.field private responseDescription:Ljava/lang/String;

.field private responses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/MultiStatusResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/MultiStatus;->responses:Ljava/util/Map;

    return-void
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/MultiStatus;
    .locals 6
    .param p0, "multistatusElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 176
    const-string v4, "multistatus"

    sget-object v5, Lorg/apache/jackrabbit/webdav/MultiStatus;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 177
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "DAV:multistatus element expected."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 180
    :cond_0
    new-instance v1, Lorg/apache/jackrabbit/webdav/MultiStatus;

    invoke-direct {v1}, Lorg/apache/jackrabbit/webdav/MultiStatus;-><init>()V

    .line 182
    .local v1, "multistatus":Lorg/apache/jackrabbit/webdav/MultiStatus;
    const-string v4, "response"

    sget-object v5, Lorg/apache/jackrabbit/webdav/MultiStatus;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v0

    .line 183
    .local v0, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 185
    .local v2, "respElem":Lorg/w3c/dom/Element;
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v3

    .line 186
    .local v3, "response":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    invoke-virtual {v1, v3}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResponse(Lorg/apache/jackrabbit/webdav/MultiStatusResponse;)V

    goto :goto_0

    .line 190
    .end local v2    # "respElem":Lorg/w3c/dom/Element;
    .end local v3    # "response":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    :cond_1
    const-string v4, "responsedescription"

    sget-object v5, Lorg/apache/jackrabbit/webdav/MultiStatus;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/jackrabbit/webdav/MultiStatus;->setResponseDescription(Ljava/lang/String;)V

    .line 191
    return-object v1
.end method


# virtual methods
.method public addResourceProperties(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;I)V
    .locals 1
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "propNameSet"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .param p3, "depth"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResourceProperties(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;II)V

    .line 85
    return-void
.end method

.method public addResourceProperties(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;II)V
    .locals 3
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "propNameSet"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .param p3, "propFindType"    # I
    .param p4, "depth"    # I

    .prologue
    .line 61
    new-instance v1, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;-><init>(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;I)V

    invoke-virtual {p0, v1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResponse(Lorg/apache/jackrabbit/webdav/MultiStatusResponse;)V

    .line 62
    if-lez p4, :cond_0

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->isCollection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getMembers()Lorg/apache/jackrabbit/webdav/DavResourceIterator;

    move-result-object v0

    .line 64
    .local v0, "iter":Lorg/apache/jackrabbit/webdav/DavResourceIterator;
    :goto_0
    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->nextResource()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v1

    add-int/lit8 v2, p4, -0x1

    invoke-virtual {p0, v1, p2, p3, v2}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResourceProperties(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;II)V

    goto :goto_0

    .line 68
    .end local v0    # "iter":Lorg/apache/jackrabbit/webdav/DavResourceIterator;
    :cond_0
    return-void
.end method

.method public addResourceStatus(Lorg/apache/jackrabbit/webdav/DavResource;II)V
    .locals 3
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "status"    # I
    .param p3, "depth"    # I

    .prologue
    .line 97
    new-instance v1, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResponse(Lorg/apache/jackrabbit/webdav/MultiStatusResponse;)V

    .line 98
    if-lez p3, :cond_0

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->isCollection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getMembers()Lorg/apache/jackrabbit/webdav/DavResourceIterator;

    move-result-object v0

    .line 100
    .local v0, "iter":Lorg/apache/jackrabbit/webdav/DavResourceIterator;
    :goto_0
    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->nextResource()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v1, p2, v2}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResourceStatus(Lorg/apache/jackrabbit/webdav/DavResource;II)V

    goto :goto_0

    .line 104
    .end local v0    # "iter":Lorg/apache/jackrabbit/webdav/DavResourceIterator;
    :cond_0
    return-void
.end method

.method public declared-synchronized addResponse(Lorg/apache/jackrabbit/webdav/MultiStatusResponse;)V
    .locals 2
    .param p1, "response"    # Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/MultiStatus;->responses:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResponseDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/MultiStatus;->responseDescription:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getResponses()[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    .locals 2

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/MultiStatus;->responses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/MultiStatus;->responses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setResponseDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseDescription"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/MultiStatus;->responseDescription:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 9
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 156
    const-string v6, "multistatus"

    sget-object v7, Lorg/apache/jackrabbit/webdav/MultiStatus;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 157
    .local v3, "multistatus":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/MultiStatus;->getResponses()[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 158
    .local v4, "resp":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    invoke-virtual {v4, p1}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v4    # "resp":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    :cond_0
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/MultiStatus;->responseDescription:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 161
    const-string v6, "responsedescription"

    sget-object v7, Lorg/apache/jackrabbit/webdav/MultiStatus;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/MultiStatus;->responseDescription:Ljava/lang/String;

    invoke-static {p1, v6, v7, v8}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 162
    .local v5, "respDesc":Lorg/w3c/dom/Element;
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 164
    .end local v5    # "respDesc":Lorg/w3c/dom/Element;
    :cond_1
    return-object v3
.end method
