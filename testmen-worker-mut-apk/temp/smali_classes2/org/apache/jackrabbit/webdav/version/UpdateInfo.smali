.class public Lorg/apache/jackrabbit/webdav/version/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field public static final UPDATE_BY_LABEL:I = 0x1

.field public static final UPDATE_BY_VERSION:I = 0x0

.field public static final UPDATE_BY_WORKSPACE:I = 0x2

.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

.field private source:[Ljava/lang/String;

.field private type:I

.field private updateElement:Lorg/w3c/dom/Element;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 12
    .param p1, "updateElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x190

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v6, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v6}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    iput-object v6, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .line 96
    const-string v6, "update"

    sget-object v7, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 97
    sget-object v6, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->log:Lorg/slf4j/Logger;

    const-string v7, "DAV:update element expected"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 98
    new-instance v6, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v6, v11}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v6

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 102
    .local v0, "done":Z
    const-string v6, "version"

    sget-object v7, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 103
    const-string v6, "version"

    sget-object v7, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 104
    .local v4, "vEl":Lorg/w3c/dom/Element;
    const-string v6, "href"

    sget-object v7, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v4, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v2

    .line 105
    .local v2, "hrefs":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "hrefList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->source:[Ljava/lang/String;

    .line 110
    iput v9, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->type:I

    .line 111
    const/4 v0, 0x1

    .line 115
    .end local v1    # "hrefList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "hrefs":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    .end local v4    # "vEl":Lorg/w3c/dom/Element;
    :cond_2
    if-nez v0, :cond_3

    const-string v6, "label-name"

    sget-object v7, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 116
    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "label-name"

    sget-object v8, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v7, v8}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iput-object v6, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->source:[Ljava/lang/String;

    .line 117
    iput v10, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->type:I

    .line 118
    const/4 v0, 0x1

    .line 122
    :cond_3
    if-nez v0, :cond_4

    .line 123
    const-string v6, "workspace"

    sget-object v7, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 124
    .local v5, "wspElem":Lorg/w3c/dom/Element;
    if-eqz v5, :cond_5

    .line 125
    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "href"

    sget-object v8, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v5, v7, v8}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildTextTrim(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iput-object v6, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->source:[Ljava/lang/String;

    .line 126
    const/4 v6, 0x2

    iput v6, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->type:I

    .line 134
    .end local v5    # "wspElem":Lorg/w3c/dom/Element;
    :cond_4
    const-string v6, "prop"

    sget-object v7, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 135
    const-string v6, "prop"

    sget-object v7, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 136
    .local v3, "propEl":Lorg/w3c/dom/Element;
    new-instance v6, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v6, v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v6, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .line 137
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 141
    .end local v3    # "propEl":Lorg/w3c/dom/Element;
    :goto_1
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->updateElement:Lorg/w3c/dom/Element;

    .line 142
    return-void

    .line 128
    .restart local v5    # "wspElem":Lorg/w3c/dom/Element;
    :cond_5
    sget-object v6, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->log:Lorg/slf4j/Logger;

    const-string v7, "DAV:update element must contain either DAV:version, DAV:label-name or DAV:workspace child element."

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 129
    new-instance v6, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v6, v11}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v6

    .line 139
    .end local v5    # "wspElem":Lorg/w3c/dom/Element;
    :cond_6
    new-instance v6, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v6}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    iput-object v6, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    goto :goto_1
.end method

.method public constructor <init>([Ljava/lang/String;ILorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V
    .locals 3
    .param p1, "updateSource"    # [Ljava/lang/String;
    .param p2, "updateType"    # I
    .param p3, "propertyNameSet"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .line 74
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version href array must not be null and have a minimal length of 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    if-ltz p2, :cond_2

    const/4 v0, 0x2

    if-le p2, v0, :cond_3

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal type of UpdateInfo."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_3
    iput p2, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->type:I

    .line 81
    if-nez p2, :cond_5

    .end local p1    # "updateSource":[Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->source:[Ljava/lang/String;

    .line 82
    if-eqz p3, :cond_4

    .line 83
    iput-object p3, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .line 85
    :cond_4
    return-void

    .line 81
    .restart local p1    # "updateSource":[Ljava/lang/String;
    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aget-object v1, p1, v2

    aput-object v1, v0, v2

    move-object p1, v0

    goto :goto_0
.end method

.method public static createUpdateElement([Ljava/lang/String;ILorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 11
    .param p0, "updateSource"    # [Ljava/lang/String;
    .param p1, "updateType"    # I
    .param p2, "factory"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v10, 0x0

    .line 218
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_1

    .line 219
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Update source must specific at least a single resource used to run the update."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 222
    :cond_1
    const-string v7, "update"

    sget-object v8, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p2, v7, v8}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 223
    .local v1, "elem":Lorg/w3c/dom/Element;
    packed-switch p1, :pswitch_data_0

    .line 239
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid update type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 225
    :pswitch_0
    const-string v7, "version"

    sget-object v8, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v7, v8}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 226
    .local v5, "vE":Lorg/w3c/dom/Element;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 227
    .local v4, "source":Ljava/lang/String;
    invoke-static {v4, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "source":Ljava/lang/String;
    .end local v5    # "vE":Lorg/w3c/dom/Element;
    :pswitch_1
    const-string v7, "label-name"

    sget-object v8, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    aget-object v9, p0, v10

    invoke-static {v1, v7, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 241
    :cond_2
    :goto_1
    return-object v1

    .line 234
    :pswitch_2
    const-string v7, "workspace"

    sget-object v8, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    aget-object v9, p0, v10

    invoke-static {v1, v7, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 235
    .local v6, "wspEl":Lorg/w3c/dom/Element;
    aget-object v7, p0, v10

    invoke-static {v7, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getLabelName()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->source:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPropertyNameSet()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    return-object v0
.end method

.method public getUpdateElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->updateElement:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getVersionHref()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->type:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->source:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWorkspaceHref()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->source:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 197
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->updateElement:Lorg/w3c/dom/Element;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->updateElement:Lorg/w3c/dom/Element;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 202
    .local v0, "elem":Lorg/w3c/dom/Element;
    :goto_0
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->propertyNameSet:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-virtual {v1, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 205
    :cond_0
    return-object v0

    .line 200
    .end local v0    # "elem":Lorg/w3c/dom/Element;
    :cond_1
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->source:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->type:I

    invoke-static {v1, v2, p1}, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;->createUpdateElement([Ljava/lang/String;ILorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .restart local v0    # "elem":Lorg/w3c/dom/Element;
    goto :goto_0
.end method
