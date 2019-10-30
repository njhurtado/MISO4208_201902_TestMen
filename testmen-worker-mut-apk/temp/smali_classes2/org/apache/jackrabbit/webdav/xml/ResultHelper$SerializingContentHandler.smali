.class final Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ResultHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/xml/ResultHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializingContentHandler"
.end annotation


# instance fields
.field private final addedPrefixMappings:Ljava/util/List;

.field private final handler:Lorg/xml/sax/ContentHandler;

.field private hasMappings:Z

.field private prefixList:Ljava/util/List;

.field private prefixToUriMap:Ljava/util/Map;

.field private uriList:Ljava/util/List;

.field private uriToPrefixMap:Ljava/util/Map;


# direct methods
.method private constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 193
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixList:Ljava/util/List;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriList:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriToPrefixMap:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixToUriMap:Ljava/util/Map;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->hasMappings:Z

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->addedPrefixMappings:Ljava/util/List;

    .line 194
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->handler:Lorg/xml/sax/ContentHandler;

    .line 195
    return-void
.end method

.method synthetic constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/jackrabbit/webdav/xml/ResultHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/xml/sax/ContentHandler;
    .param p2, "x1"    # Lorg/apache/jackrabbit/webdav/xml/ResultHelper$1;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method private checkPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "qname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 255
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, "xml"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriToPrefixMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 258
    const-string v4, "ns"

    .line 259
    .local v4, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 260
    const/16 v6, 0x3a

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 261
    .local v1, "colon":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 262
    const/4 v6, 0x0

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 267
    .end local v1    # "colon":I
    :cond_0
    move-object v0, v4

    .line 268
    .local v0, "base":Ljava/lang/String;
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixToUriMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_1
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->addedPrefixMappings:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 273
    .local v3, "last":I
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->addedPrefixMappings:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 274
    .local v5, "prefixes":Ljava/util/List;
    if-nez v5, :cond_2

    .line 275
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "prefixes":Ljava/util/List;
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .restart local v5    # "prefixes":Ljava/util/List;
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->addedPrefixMappings:Ljava/util/List;

    invoke-interface {v6, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p0, v4, p1}, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .end local v0    # "base":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "last":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "prefixes":Ljava/util/List;
    :cond_3
    return-void
.end method

.method private clearMappings()V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->hasMappings:Z

    .line 454
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 455
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 456
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 200
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriToPrefixMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 446
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixToUriMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 447
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->clearMappings()V

    .line 449
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 450
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eltUri"    # Ljava/lang/String;
    .param p2, "eltLocalName"    # Ljava/lang/String;
    .param p3, "eltQName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 374
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriToPrefixMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriToPrefixMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 378
    :cond_0
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->addedPrefixMappings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 382
    .local v1, "last":I
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->addedPrefixMappings:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 383
    .local v2, "prefixes":Ljava/util/List;
    if-eqz v2, :cond_1

    .line 384
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 385
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    .end local v0    # "iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixToUriMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriToPrefixMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixToUriMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixToUriMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_0
    iget-boolean v1, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->hasMappings:Z

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 413
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 414
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 415
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 419
    .end local v0    # "pos":I
    :cond_1
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 425
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 434
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 435
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriToPrefixMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 206
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixToUriMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 207
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->clearMappings()V

    .line 209
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 210
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 22
    .param p1, "eltUri"    # Ljava/lang/String;
    .param p2, "eltLocalName"    # Ljava/lang/String;
    .param p3, "eltQName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->addedPrefixMappings:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->checkPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_0

    .line 299
    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->checkPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 303
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriToPrefixMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriToPrefixMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 306
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->hasMappings:Z

    if-eqz v5, :cond_c

    .line 310
    const/4 v4, 0x0

    .line 312
    .local v4, "newAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v21

    .line 313
    .local v21, "mappingCount":I
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v17

    .line 315
    .local v17, "attrCount":I
    const/16 v20, 0x0

    .local v20, "mapping":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 318
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriList:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 319
    .local v9, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixList:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 320
    .local v12, "prefix":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v6, "xmlns"

    .line 323
    .local v6, "qName":Ljava/lang/String;
    :goto_2
    const/16 v18, 0x0

    .line 324
    .local v18, "found":Z
    const/16 v16, 0x0

    .local v16, "attr":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 325
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 327
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 328
    new-instance v5, Lorg/xml/sax/SAXException;

    const-string v7, "URI in prefix mapping and attribute do not match"

    invoke-direct {v5, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 320
    .end local v6    # "qName":Ljava/lang/String;
    .end local v16    # "attr":I
    .end local v18    # "found":Z
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xmlns:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 330
    .restart local v6    # "qName":Ljava/lang/String;
    .restart local v16    # "attr":I
    .restart local v18    # "found":Z
    :cond_3
    const/16 v18, 0x1

    .line 335
    :cond_4
    if-nez v18, :cond_6

    .line 337
    if-nez v4, :cond_5

    .line 340
    if-nez v17, :cond_8

    .line 341
    new-instance v4, Lorg/xml/sax/helpers/AttributesImpl;

    .end local v4    # "newAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    invoke-direct {v4}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 347
    .restart local v4    # "newAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    :cond_5
    :goto_4
    const-string v5, ""

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 348
    const-string v5, "http://www.w3.org/XML/1998/namespace"

    const-string v8, "CDATA"

    move-object v7, v6

    invoke-virtual/range {v4 .. v9}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_6
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 324
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 343
    :cond_8
    new-instance v4, Lorg/xml/sax/helpers/AttributesImpl;

    .end local v4    # "newAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    .restart local v4    # "newAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    goto :goto_4

    .line 350
    :cond_9
    const-string v11, "http://www.w3.org/XML/1998/namespace"

    const-string v14, "CDATA"

    move-object v10, v4

    move-object v13, v6

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 356
    .end local v6    # "qName":Ljava/lang/String;
    .end local v9    # "uri":Ljava/lang/String;
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v16    # "attr":I
    .end local v18    # "found":Z
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->clearMappings()V

    .line 359
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->handler:Lorg/xml/sax/ContentHandler;

    if-nez v4, :cond_b

    .end local p4    # "attrs":Lorg/xml/sax/Attributes;
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v5, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 364
    .end local v4    # "newAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v17    # "attrCount":I
    .end local v20    # "mapping":I
    .end local v21    # "mappingCount":I
    :goto_7
    return-void

    .restart local v4    # "newAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    .restart local v17    # "attrCount":I
    .restart local v20    # "mapping":I
    .restart local v21    # "mappingCount":I
    .restart local p4    # "attrs":Lorg/xml/sax/Attributes;
    :cond_b
    move-object/from16 p4, v4

    .line 359
    goto :goto_6

    .line 362
    .end local v4    # "newAttrs":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v17    # "attrCount":I
    .end local v20    # "mapping":I
    .end local v21    # "mappingCount":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->handler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v5, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_7
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 221
    if-eqz p2, :cond_0

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->hasMappings:Z

    .line 223
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 229
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriToPrefixMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :goto_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->prefixToUriMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/xml/ResultHelper$SerializingContentHandler;->uriToPrefixMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
