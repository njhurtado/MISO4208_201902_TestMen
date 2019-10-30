.class public Lorg/apache/jackrabbit/webdav/search/SearchInfo;
.super Ljava/lang/Object;
.source "SearchInfo.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/search/SearchConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static final IGNORED_NAMESPACES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIMIT:Ljava/lang/String; = "limit"

.field private static final NRESULTS:Ljava/lang/String; = "nresults"

.field public static final NRESULTS_UNDEFINED:J = -0x1L

.field private static final OFFSET:Ljava/lang/String; = "offset"

.field public static final OFFSET_UNDEFINED:J = -0x1L

.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final language:Ljava/lang/String;

.field private final languageNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field private final namespaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nresults:J

.field private offset:J

.field private final query:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-class v1, Lorg/apache/jackrabbit/webdav/search/SearchInfo;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->log:Lorg/slf4j/Logger;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 78
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lorg/apache/jackrabbit/webdav/xml/Namespace;->XMLNS_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v1, Lorg/apache/jackrabbit/webdav/xml/Namespace;->XML_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v1, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->IGNORED_NAMESPACES:Ljava/util/Set;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "languageNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/jackrabbit/webdav/search/SearchInfo;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "languageNamespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p3, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/xml/Namespace;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "namespaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, -0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-wide v0, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->nresults:J

    .line 90
    iput-wide v0, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->offset:J

    .line 102
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->language:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->languageNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 104
    iput-object p3, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->query:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->namespaces:Ljava/util/Map;

    .line 106
    return-void
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/search/SearchInfo;
    .locals 15
    .param p0, "searchRequest"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x190

    .line 227
    if-eqz p0, :cond_0

    const-string v12, "searchrequest"

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 228
    :cond_0
    sget-object v12, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->log:Lorg/slf4j/Logger;

    const-string v13, "The root element must be \'searchrequest\'."

    invoke-interface {v12, v13}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 229
    new-instance v12, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v12, v14}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v12

    .line 231
    :cond_1
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 232
    .local v2, "first":Lorg/w3c/dom/Element;
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getNamespaceAttributes(Lorg/w3c/dom/Element;)[Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 233
    .local v9, "nsAttributes":[Lorg/w3c/dom/Attr;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v6, "namespaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v9

    .local v0, "arr$":[Lorg/w3c/dom/Attr;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v8, v0, v3

    .line 236
    .local v8, "nsAttribute":Lorg/w3c/dom/Attr;
    sget-object v12, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->IGNORED_NAMESPACES:Ljava/util/Set;

    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 237
    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    .end local v8    # "nsAttribute":Lorg/w3c/dom/Attr;
    :cond_3
    if-eqz v2, :cond_6

    .line 242
    new-instance v11, Lorg/apache/jackrabbit/webdav/search/SearchInfo;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getNamespace(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v13

    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v12, v13, v14, v6}, Lorg/apache/jackrabbit/webdav/search/SearchInfo;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;Ljava/util/Map;)V

    .line 248
    .local v11, "sInfo":Lorg/apache/jackrabbit/webdav/search/SearchInfo;
    const-string v12, "limit"

    sget-object v13, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v12, v13}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 249
    .local v5, "limit":Lorg/w3c/dom/Element;
    if-eqz v5, :cond_5

    .line 251
    const-string v12, "nresults"

    sget-object v13, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v5, v12, v13}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildTextTrim(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, "nresults":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 254
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->setNumberResults(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_4
    :goto_1
    const-string v12, "offset"

    sget-object v13, Lorg/apache/jackrabbit/webdav/xml/Namespace;->EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v5, v12, v13}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildTextTrim(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v10

    .line 261
    .local v10, "offset":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 263
    :try_start_1
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->setOffset(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    .end local v7    # "nresults":Ljava/lang/String;
    .end local v10    # "offset":Ljava/lang/String;
    :cond_5
    :goto_2
    return-object v11

    .line 244
    .end local v5    # "limit":Lorg/w3c/dom/Element;
    .end local v11    # "sInfo":Lorg/apache/jackrabbit/webdav/search/SearchInfo;
    :cond_6
    sget-object v12, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->log:Lorg/slf4j/Logger;

    const-string v13, "A single child element is expected with the \'DAV:searchrequest\'."

    invoke-interface {v12, v13}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 245
    new-instance v12, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v12, v14}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v12

    .line 255
    .restart local v5    # "limit":Lorg/w3c/dom/Element;
    .restart local v7    # "nresults":Ljava/lang/String;
    .restart local v11    # "sInfo":Lorg/apache/jackrabbit/webdav/search/SearchInfo;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v12, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->log:Lorg/slf4j/Logger;

    const-string v13, "DAV:nresults cannot be parsed into a long -> ignore."

    invoke-interface {v12, v13}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 264
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v10    # "offset":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 265
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    sget-object v12, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->log:Lorg/slf4j/Logger;

    const-string v13, "\'offset\' cannot be parsed into a long -> ignore."

    invoke-interface {v12, v13}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageNameSpace()Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->languageNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    return-object v0
.end method

.method public getNamespaces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->namespaces:Ljava/util/Map;

    return-object v0
.end method

.method public getNumberResults()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->nresults:J

    return-wide v0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->offset:J

    return-wide v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->query:Ljava/lang/String;

    return-object v0
.end method

.method public setNumberResults(J)V
    .locals 1
    .param p1, "nresults"    # J

    .prologue
    .line 170
    iput-wide p1, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->nresults:J

    .line 171
    return-void
.end method

.method public setOffset(J)V
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 188
    iput-wide p1, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->offset:J

    .line 189
    return-void
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 12
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    const-wide/16 v10, -0x1

    .line 198
    const-string v5, "searchrequest"

    sget-object v6, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v5, v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 199
    .local v3, "sRequestElem":Lorg/w3c/dom/Element;
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->namespaces:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, "prefix":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->namespaces:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 201
    .local v4, "uri":Ljava/lang/String;
    invoke-static {v3, v2, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->setNamespaceAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->language:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->languageNamespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v7, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->query:Ljava/lang/String;

    invoke-static {v3, v5, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 204
    iget-wide v6, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->nresults:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_1

    iget-wide v6, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->offset:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_3

    .line 205
    :cond_1
    const-string v5, "limit"

    sget-object v6, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v3, v5, v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 206
    .local v1, "limitE":Lorg/w3c/dom/Element;
    iget-wide v6, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->nresults:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_2

    .line 207
    const-string v5, "nresults"

    sget-object v6, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->nresults:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v5, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 209
    :cond_2
    iget-wide v6, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->offset:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_3

    .line 211
    const-string v5, "offset"

    sget-object v6, Lorg/apache/jackrabbit/webdav/xml/Namespace;->EMPTY_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->offset:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v5, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 214
    .end local v1    # "limitE":Lorg/w3c/dom/Element;
    :cond_3
    return-object v3
.end method
