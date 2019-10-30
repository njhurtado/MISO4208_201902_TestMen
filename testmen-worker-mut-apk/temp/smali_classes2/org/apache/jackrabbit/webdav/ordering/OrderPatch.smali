.class public Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;
.super Ljava/lang/Object;
.source "OrderPatch.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/ordering/OrderingConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private instructions:[Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;

.field private orderingType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;)V
    .locals 2
    .param p1, "orderingType"    # Ljava/lang/String;
    .param p2, "instruction"    # Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;-><init>(Ljava/lang/String;[Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;)V
    .locals 2
    .param p1, "orderingType"    # Ljava/lang/String;
    .param p2, "instructions"    # [Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ordering type and instructions cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->orderingType:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->instructions:[Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;

    .line 76
    return-void
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;
    .locals 14
    .param p0, "orderPatchElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x190

    .line 123
    const-string v10, "orderpatch"

    sget-object v11, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v10, v11}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 124
    sget-object v10, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->log:Lorg/slf4j/Logger;

    const-string v11, "ORDERPATH request body must start with an \'orderpatch\' element."

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 125
    new-instance v10, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v10, v13}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v10

    .line 130
    :cond_0
    const-string v10, "ordering-type"

    sget-object v11, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v10, v11}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 131
    .local v6, "otype":Lorg/w3c/dom/Element;
    if-eqz v6, :cond_1

    .line 132
    const-string v10, "href"

    sget-object v11, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v6, v10, v11}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "orderingType":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v9, "tmpList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;>;"
    const-string v10, "order-member"

    sget-object v11, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v10, v11}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v3

    .line 141
    .local v3, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 142
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 145
    .local v1, "el":Lorg/w3c/dom/Element;
    :try_start_0
    const-string v10, "segment"

    sget-object v11, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v10, v11}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "segment":Ljava/lang/String;
    const-string v10, "position"

    sget-object v11, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v10, v11}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/jackrabbit/webdav/ordering/Position;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/ordering/Position;

    move-result-object v7

    .line 148
    .local v7, "pos":Lorg/apache/jackrabbit/webdav/ordering/Position;
    new-instance v4, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;

    invoke-direct {v4, v8, v7}, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/ordering/Position;)V

    .line 149
    .local v4, "om":Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v4    # "om":Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;
    .end local v7    # "pos":Lorg/apache/jackrabbit/webdav/ordering/Position;
    .end local v8    # "segment":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v10, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->log:Lorg/slf4j/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid element in \'orderpatch\' request body: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 152
    new-instance v10, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v10, v13}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v10

    .line 134
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "el":Lorg/w3c/dom/Element;
    .end local v3    # "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    .end local v5    # "orderingType":Ljava/lang/String;
    .end local v9    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;>;"
    :cond_1
    sget-object v10, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->log:Lorg/slf4j/Logger;

    const-string v11, "ORDERPATH request body must contain an \'ordering-type\' child element."

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 135
    new-instance v10, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v10, v13}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v10

    .line 155
    .restart local v3    # "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    .restart local v5    # "orderingType":Ljava/lang/String;
    .restart local v9    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;

    .line 156
    .local v2, "instructions":[Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;
    new-instance v10, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;

    invoke-direct {v10, v5, v2}, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;-><init>(Ljava/lang/String;[Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;)V

    return-object v10
.end method


# virtual methods
.method public getOrderInstructions()[Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->instructions:[Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;

    return-object v0
.end method

.method public getOrderingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->orderingType:Ljava/lang/String;

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 8
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 104
    const-string v6, "orderpatch"

    sget-object v7, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 106
    .local v4, "orderPatch":Lorg/w3c/dom/Element;
    const-string v6, "ordering-type"

    sget-object v7, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v4, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 107
    .local v5, "otype":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->orderingType:Ljava/lang/String;

    invoke-static {v6, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 109
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->instructions:[Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 110
    .local v2, "instruction":Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;
    invoke-virtual {v2, p1}, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v2    # "instruction":Lorg/apache/jackrabbit/webdav/ordering/OrderPatch$Member;
    :cond_0
    return-object v4
.end method
