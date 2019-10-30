.class public Lorg/apache/jackrabbit/webdav/property/HrefProperty;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "HrefProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final value:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/jackrabbit/webdav/property/HrefProperty;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavProperty;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->isInvisibleInAllprop()Z

    move-result v6

    invoke-direct {p0, v5, v6}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 81
    instance-of v5, p1, Lorg/apache/jackrabbit/webdav/property/HrefProperty;

    if-eqz v5, :cond_0

    .line 83
    check-cast p1, Lorg/apache/jackrabbit/webdav/property/HrefProperty;

    .end local p1    # "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    iget-object v5, p1, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->value:[Ljava/lang/String;

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->value:[Ljava/lang/String;

    .line 111
    :goto_0
    return-void

    .line 86
    .restart local p1    # "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v2, "hrefList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 88
    .local v4, "val":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_3

    .line 89
    check-cast v4, Ljava/util/List;

    .end local v4    # "val":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "entry":Ljava/lang/Object;
    instance-of v5, v0, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_2

    const-string v6, "href"

    move-object v5, v0

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    .line 91
    check-cast v5, Lorg/w3c/dom/Element;

    invoke-static {v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "href":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_1
    sget-object v5, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Valid DAV:href element expected instead of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    .end local v1    # "href":Ljava/lang/String;
    :cond_2
    sget-object v5, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DAV: href element expected in the content of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    .end local v0    # "entry":Ljava/lang/Object;
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "val":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_4

    const-string v6, "href"

    move-object v5, v4

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v4

    .line 102
    check-cast v5, Lorg/w3c/dom/Element;

    invoke-static {v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getTextTrim(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1    # "href":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 104
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v1    # "href":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/Object;
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->value:[Ljava/lang/String;

    goto/16 :goto_0

    .line 106
    .restart local v1    # "href":Ljava/lang/String;
    .restart local v4    # "val":Ljava/lang/Object;
    :cond_5
    sget-object v5, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Valid DAV:href element expected instead of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isInvisibleInAllprop"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p3}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->value:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;[Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .param p2, "value"    # [Ljava/lang/String;
    .param p3, "isInvisibleInAllprop"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p3}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 69
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->value:[Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public getHrefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->value:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->value:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->getValue()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->value:[Ljava/lang/String;

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 7
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 130
    .local v1, "elem":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/HrefProperty;->getValue()[Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "value":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 132
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 133
    .local v2, "href":Ljava/lang/String;
    invoke-static {v2, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "href":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-object v1
.end method
