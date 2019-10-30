.class public Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
.super Ljava/lang/Object;
.source "MultiStatusResponse.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;
.implements Lorg/apache/jackrabbit/webdav/DavConstants;


# static fields
.field private static final TYPE_HREFSTATUS:I = 0x1

.field private static final TYPE_PROPSTAT:I


# instance fields
.field private final href:Ljava/lang/String;

.field private final responseDescription:Ljava/lang/String;

.field private status:Lorg/apache/jackrabbit/webdav/Status;

.field private statusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/jackrabbit/webdav/property/PropContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "responseDescription"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Lorg/apache/jackrabbit/webdav/Status;

    invoke-direct {v0, p2}, Lorg/apache/jackrabbit/webdav/Status;-><init>(I)V

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/Status;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "responseDescription"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "responseDescription"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->statusMap:Ljava/util/HashMap;

    .line 78
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->isValidHref(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid href (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->href:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->responseDescription:Ljava/lang/String;

    .line 83
    iput p3, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->type:I

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/Status;Ljava/lang/String;)V
    .locals 2
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "status"    # Lorg/apache/jackrabbit/webdav/Status;
    .param p3, "responseDescription"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    if-nez p2, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status must not be null in case of a multistatus reponse that consists of href + status only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->status:Lorg/apache/jackrabbit/webdav/Status;

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V
    .locals 1
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "propNameSet"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;-><init>(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;I)V
    .locals 15
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "propNameSet"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .param p3, "propFindType"    # I

    .prologue
    .line 166
    invoke-interface/range {p1 .. p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getHref()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {p0, v12, v13, v14}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_0

    .line 170
    const/16 v12, 0xc8

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getPropContainer(IZ)Lorg/apache/jackrabbit/webdav/property/PropContainer;

    move-result-object v9

    .line 171
    .local v9, "status200":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    invoke-interface/range {p1 .. p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getPropertyNames()[Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_b

    aget-object v7, v2, v3

    .line 172
    .local v7, "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    invoke-virtual {v9, v7}, Lorg/apache/jackrabbit/webdav/property/PropContainer;->addContent(Lorg/apache/jackrabbit/webdav/property/PropEntry;)Z

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "arr$":[Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .end local v9    # "status200":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    :cond_0
    const/16 v12, 0xc8

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getPropContainer(IZ)Lorg/apache/jackrabbit/webdav/property/PropContainer;

    move-result-object v9

    .line 179
    .restart local v9    # "status200":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->getContent()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 183
    .local v5, "missing":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/jackrabbit/webdav/property/DavPropertyName;>;"
    if-nez p3, :cond_2

    .line 185
    invoke-virtual/range {p2 .. p2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 186
    .restart local v7    # "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lorg/apache/jackrabbit/webdav/DavResource;->getProperty(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 187
    .local v6, "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    if-eqz v6, :cond_1

    .line 188
    invoke-virtual {v9, v6}, Lorg/apache/jackrabbit/webdav/property/PropContainer;->addContent(Lorg/apache/jackrabbit/webdav/property/PropEntry;)Z

    .line 189
    invoke-interface {v5, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    .end local v7    # "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getProperties()Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/jackrabbit/webdav/property/DavProperty;

    .line 195
    .local v8, "property":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    const/4 v12, 0x1

    move/from16 v0, p3

    if-eq v0, v12, :cond_4

    const/4 v12, 0x3

    move/from16 v0, p3

    if-ne v0, v12, :cond_7

    :cond_4
    const/4 v1, 0x1

    .line 198
    .local v1, "allDeadPlusRfc4918LiveProperties":Z
    :goto_3
    invoke-interface {v8}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v11

    .line 200
    .local v11, "wasRequested":Z
    if-eqz v1, :cond_5

    invoke-interface {v8}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->isInvisibleInAllprop()Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    if-eqz v11, :cond_3

    .line 203
    :cond_6
    invoke-virtual {v9, v8}, Lorg/apache/jackrabbit/webdav/property/PropContainer;->addContent(Lorg/apache/jackrabbit/webdav/property/PropEntry;)Z

    goto :goto_2

    .line 195
    .end local v1    # "allDeadPlusRfc4918LiveProperties":Z
    .end local v11    # "wasRequested":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 209
    .end local v8    # "property":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    :cond_8
    const/4 v12, 0x3

    move/from16 v0, p3

    if-ne v0, v12, :cond_a

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 210
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 211
    .restart local v7    # "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lorg/apache/jackrabbit/webdav/DavResource;->getProperty(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v6

    .line 212
    .restart local v6    # "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    if-eqz v6, :cond_9

    .line 213
    invoke-virtual {v9, v6}, Lorg/apache/jackrabbit/webdav/property/PropContainer;->addContent(Lorg/apache/jackrabbit/webdav/property/PropEntry;)Z

    .line 214
    invoke-interface {v5, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 220
    .end local v6    # "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    .end local v7    # "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    :cond_a
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    const/4 v12, 0x1

    move/from16 v0, p3

    if-eq v0, v12, :cond_b

    .line 221
    const/16 v12, 0x194

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getPropContainer(IZ)Lorg/apache/jackrabbit/webdav/property/PropContainer;

    move-result-object v10

    .line 222
    .local v10, "status404":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 223
    .restart local v7    # "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    invoke-virtual {v10, v7}, Lorg/apache/jackrabbit/webdav/property/PropContainer;->addContent(Lorg/apache/jackrabbit/webdav/property/PropEntry;)Z

    goto :goto_5

    .line 227
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "missing":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/jackrabbit/webdav/property/DavPropertyName;>;"
    .end local v7    # "propName":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .end local v10    # "status404":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    :cond_b
    return-void
.end method

.method private checkType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 369
    iget v0, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->type:I

    if-eq v0, p1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The given MultiStatusResponse is not of the required type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    return-void
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    .locals 15
    .param p0, "responseElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 429
    const-string v13, "response"

    sget-object v14, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v13, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 430
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "DAV:response element required."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 432
    :cond_0
    const-string v13, "href"

    sget-object v14, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v13, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildTextTrim(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "href":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 434
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "DAV:response element must contain a DAV:href element expected."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 436
    :cond_1
    const-string v13, "status"

    sget-object v14, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v13, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v12

    .line 437
    .local v12, "statusLine":Ljava/lang/String;
    const-string v13, "responsedescription"

    sget-object v14, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v13, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v9

    .line 440
    .local v9, "responseDescription":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 441
    invoke-static {v12}, Lorg/apache/jackrabbit/webdav/Status;->parse(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/Status;

    move-result-object v10

    .line 442
    .local v10, "status":Lorg/apache/jackrabbit/webdav/Status;
    new-instance v8, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    invoke-direct {v8, v1, v10, v9}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/Status;Ljava/lang/String;)V

    .line 469
    .end local v10    # "status":Lorg/apache/jackrabbit/webdav/Status;
    .local v8, "response":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    :cond_2
    return-object v8

    .line 444
    .end local v8    # "response":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    :cond_3
    new-instance v8, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    const/4 v13, 0x0

    invoke-direct {v8, v1, v9, v13}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 446
    .restart local v8    # "response":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    const-string v13, "propstat"

    sget-object v14, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v13, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v2

    .line 447
    .local v2, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_4
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 448
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 449
    .local v6, "propstat":Lorg/w3c/dom/Element;
    const-string v13, "status"

    sget-object v14, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v6, v13, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, "propstatus":Ljava/lang/String;
    const-string v13, "prop"

    sget-object v14, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v6, v13, v14}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 451
    .local v3, "prop":Lorg/w3c/dom/Element;
    if-eqz v7, :cond_4

    if-eqz v3, :cond_4

    .line 452
    invoke-static {v7}, Lorg/apache/jackrabbit/webdav/Status;->parse(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/Status;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/jackrabbit/webdav/Status;->getStatusCode()I

    move-result v11

    .line 453
    .local v11, "statusCode":I
    invoke-static {v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v4

    .line 454
    .local v4, "propIt":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 455
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 463
    .local v0, "el":Lorg/w3c/dom/Element;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;

    move-result-object v5

    .line 464
    .local v5, "property":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    invoke-virtual {v8, v5, v11}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->add(Lorg/apache/jackrabbit/webdav/property/DavProperty;I)V

    goto :goto_0
.end method

.method private getPropContainer(IZ)Lorg/apache/jackrabbit/webdav/property/PropContainer;
    .locals 3
    .param p1, "status"    # I
    .param p2, "forNames"    # Z

    .prologue
    .line 356
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->statusMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/property/PropContainer;

    .line 357
    .local v0, "propContainer":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    if-nez v0, :cond_0

    .line 358
    if-eqz p2, :cond_1

    .line 359
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .end local v0    # "propContainer":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    .line 363
    .restart local v0    # "propContainer":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    :goto_0
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->statusMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_0
    return-object v0

    .line 361
    :cond_1
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    .end local v0    # "propContainer":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;-><init>()V

    .restart local v0    # "propContainer":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    goto :goto_0
.end method

.method private static isValidHref(Ljava/lang/String;)Z
    .locals 1
    .param p0, "href"    # Ljava/lang/String;

    .prologue
    .line 477
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/apache/jackrabbit/webdav/property/DavProperty;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "property":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    const/4 v2, 0x0

    .line 311
    invoke-direct {p0, v2}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->checkType(I)V

    .line 312
    const/16 v1, 0xc8

    invoke-direct {p0, v1, v2}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getPropContainer(IZ)Lorg/apache/jackrabbit/webdav/property/PropContainer;

    move-result-object v0

    .line 313
    .local v0, "status200":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    invoke-virtual {v0, p1}, Lorg/apache/jackrabbit/webdav/property/PropContainer;->addContent(Lorg/apache/jackrabbit/webdav/property/PropEntry;)Z

    .line 314
    return-void
.end method

.method public add(Lorg/apache/jackrabbit/webdav/property/DavProperty;I)V
    .locals 2
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p1, "property":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    const/4 v1, 0x0

    .line 334
    invoke-direct {p0, v1}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->checkType(I)V

    .line 335
    invoke-direct {p0, p2, v1}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getPropContainer(IZ)Lorg/apache/jackrabbit/webdav/property/PropContainer;

    move-result-object v0

    .line 336
    .local v0, "propCont":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    invoke-virtual {v0, p1}, Lorg/apache/jackrabbit/webdav/property/PropContainer;->addContent(Lorg/apache/jackrabbit/webdav/property/PropEntry;)Z

    .line 337
    return-void
.end method

.method public add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)V
    .locals 3
    .param p1, "propertyName"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .prologue
    .line 322
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->checkType(I)V

    .line 323
    const/16 v1, 0xc8

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getPropContainer(IZ)Lorg/apache/jackrabbit/webdav/property/PropContainer;

    move-result-object v0

    .line 324
    .local v0, "status200":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    invoke-virtual {v0, p1}, Lorg/apache/jackrabbit/webdav/property/PropContainer;->addContent(Lorg/apache/jackrabbit/webdav/property/PropEntry;)Z

    .line 325
    return-void
.end method

.method public add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;I)V
    .locals 2
    .param p1, "propertyName"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .param p2, "status"    # I

    .prologue
    .line 346
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->checkType(I)V

    .line 347
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getPropContainer(IZ)Lorg/apache/jackrabbit/webdav/property/PropContainer;

    move-result-object v0

    .line 348
    .local v0, "propCont":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    invoke-virtual {v0, p1}, Lorg/apache/jackrabbit/webdav/property/PropContainer;->addContent(Lorg/apache/jackrabbit/webdav/property/PropEntry;)Z

    .line 349
    return-void
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties(I)Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 383
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->statusMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->statusMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/property/PropContainer;

    .line 385
    .local v0, "mapEntry":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    if-eqz v1, :cond_0

    .line 386
    check-cast v0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    .line 389
    .end local v0    # "mapEntry":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    invoke-direct {v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;-><init>()V

    goto :goto_0
.end method

.method public getPropertyNames(I)Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .locals 8
    .param p1, "status"    # I

    .prologue
    .line 401
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->statusMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 402
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->statusMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/jackrabbit/webdav/property/PropContainer;

    .line 403
    .local v3, "mapEntry":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    if-eqz v3, :cond_2

    .line 404
    instance-of v6, v3, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    if-eqz v6, :cond_0

    .line 405
    new-instance v5, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v5}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    .line 406
    .local v5, "set":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    check-cast v3, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    .end local v3    # "mapEntry":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->getPropertyNames()[Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 407
    .local v4, "name":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    invoke-virtual {v5, v4}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v0    # "arr$":[Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "name":Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .end local v5    # "set":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .restart local v3    # "mapEntry":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    :cond_0
    check-cast v3, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .end local v3    # "mapEntry":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    move-object v5, v3

    .line 416
    :cond_1
    :goto_1
    return-object v5

    :cond_2
    new-instance v5, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v5}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    goto :goto_1
.end method

.method public getResponseDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->responseDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()[Lorg/apache/jackrabbit/webdav/Status;
    .locals 6

    .prologue
    .line 257
    iget v4, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->type:I

    if-nez v4, :cond_0

    .line 258
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->statusMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v3, v4, [Lorg/apache/jackrabbit/webdav/Status;

    .line 259
    .local v3, "sts":[Lorg/apache/jackrabbit/webdav/Status;
    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->statusMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 260
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 262
    .local v2, "statusKey":Ljava/lang/Integer;
    new-instance v4, Lorg/apache/jackrabbit/webdav/Status;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/apache/jackrabbit/webdav/Status;-><init>(I)V

    aput-object v4, v3, v0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "i":I
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "statusKey":Ljava/lang/Integer;
    .end local v3    # "sts":[Lorg/apache/jackrabbit/webdav/Status;
    :cond_0
    const/4 v4, 0x1

    new-array v3, v4, [Lorg/apache/jackrabbit/webdav/Status;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->status:Lorg/apache/jackrabbit/webdav/Status;

    aput-object v5, v3, v4

    .line 267
    .restart local v3    # "sts":[Lorg/apache/jackrabbit/webdav/Status;
    :cond_1
    return-object v3
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 10
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 275
    const-string v8, "response"

    sget-object v9, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 277
    .local v5, "response":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getHref()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hrefToXml(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 278
    iget v8, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->type:I

    if-nez v8, :cond_1

    .line 280
    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->statusMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 281
    .local v7, "statusKey":Ljava/lang/Integer;
    new-instance v6, Lorg/apache/jackrabbit/webdav/Status;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v6, v8}, Lorg/apache/jackrabbit/webdav/Status;-><init>(I)V

    .line 282
    .local v6, "st":Lorg/apache/jackrabbit/webdav/Status;
    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->statusMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/jackrabbit/webdav/property/PropContainer;

    .line 283
    .local v3, "propCont":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/property/PropContainer;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 284
    const-string v8, "propstat"

    sget-object v9, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 285
    .local v4, "propstat":Lorg/w3c/dom/Element;
    invoke-virtual {v3, p1}, Lorg/apache/jackrabbit/webdav/property/PropContainer;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 286
    invoke-virtual {v6, p1}, Lorg/apache/jackrabbit/webdav/Status;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 287
    invoke-interface {v5, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 293
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "propCont":Lorg/apache/jackrabbit/webdav/property/PropContainer;
    .end local v4    # "propstat":Lorg/w3c/dom/Element;
    .end local v6    # "st":Lorg/apache/jackrabbit/webdav/Status;
    .end local v7    # "statusKey":Ljava/lang/Integer;
    :cond_1
    iget-object v8, p0, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->status:Lorg/apache/jackrabbit/webdav/Status;

    invoke-virtual {v8, p1}, Lorg/apache/jackrabbit/webdav/Status;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 296
    :cond_2
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->getResponseDescription()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "description":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 298
    const-string v8, "responsedescription"

    sget-object v9, Lorg/apache/jackrabbit/webdav/MultiStatusResponse;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v8, v9}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 299
    .local v0, "desc":Lorg/w3c/dom/Element;
    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->setText(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 300
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 302
    .end local v0    # "desc":Lorg/w3c/dom/Element;
    :cond_3
    return-object v5
.end method
