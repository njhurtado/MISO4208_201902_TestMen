.class public Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "QueryGrammerSet.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/search/SearchConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<",
        "Ljava/util/Set",
        "<+",
        "Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;",
        ">;>;",
        "Lorg/apache/jackrabbit/webdav/search/SearchConstants;"
    }
.end annotation


# instance fields
.field private final queryGrammers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;->QUERY_GRAMMER_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;->queryGrammers:Ljava/util/Set;

    .line 45
    return-void
.end method


# virtual methods
.method public addQueryLanguage(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V
    .locals 2
    .param p1, "grammerName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;->queryGrammers:Ljava/util/Set;

    new-instance v1, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;-><init>(Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public getQueryLanguages()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 64
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;->queryGrammers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    .line 65
    .local v3, "size":I
    if-lez v3, :cond_0

    .line 66
    new-array v2, v3, [Ljava/lang/String;

    .line 67
    .local v2, "qLangStr":[Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;->queryGrammers:Ljava/util/Set;

    new-array v5, v3, [Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;

    .line 68
    .local v0, "grammers":[Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v1

    invoke-static {v5}, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;->access$000(Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-static {v5}, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;->access$100(Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "grammers":[Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;
    .end local v1    # "i":I
    .end local v2    # "qLangStr":[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    :cond_1
    return-object v2
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;->getValue()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;->queryGrammers:Ljava/util/Set;

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 4
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 89
    .local v0, "elem":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;->queryGrammers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;

    .line 90
    .local v2, "qGrammer":Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;
    invoke-virtual {v2, p1}, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 92
    .end local v2    # "qGrammer":Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;
    :cond_0
    return-object v0
.end method
