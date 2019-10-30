.class public Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;
.super Ljava/lang/Object;
.source "WebdavRequestImpl.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/WebdavRequest;
.implements Lorg/apache/jackrabbit/webdav/DavConstants;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final factory:Lorg/apache/jackrabbit/webdav/DavLocatorFactory;

.field private final hrefPrefix:Ljava/lang/String;

.field private final httpRequest:Ljavax/servlet/http/HttpServletRequest;

.field private final ifHeader:Lorg/apache/jackrabbit/webdav/header/IfHeader;

.field private propfindProps:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

.field private propfindType:I

.field private proppatchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/property/PropEntry;",
            ">;"
        }
    .end annotation
.end field

.field private proppatchSet:Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

.field private session:Lorg/apache/jackrabbit/webdav/DavSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Lorg/apache/jackrabbit/webdav/DavLocatorFactory;)V
    .locals 1
    .param p1, "httpRequest"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "factory"    # Lorg/apache/jackrabbit/webdav/DavLocatorFactory;

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;-><init>(Ljavax/servlet/http/HttpServletRequest;Lorg/apache/jackrabbit/webdav/DavLocatorFactory;Z)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Lorg/apache/jackrabbit/webdav/DavLocatorFactory;Z)V
    .locals 5
    .param p1, "httpRequest"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "factory"    # Lorg/apache/jackrabbit/webdav/DavLocatorFactory;
    .param p3, "createAbsoluteURI"    # Z

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v3, 0x1

    iput v3, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->propfindType:I

    .line 114
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    .line 115
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->factory:Lorg/apache/jackrabbit/webdav/DavLocatorFactory;

    .line 116
    new-instance v3, Lorg/apache/jackrabbit/webdav/header/IfHeader;

    invoke-direct {v3, p1}, Lorg/apache/jackrabbit/webdav/header/IfHeader;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    iput-object v3, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->ifHeader:Lorg/apache/jackrabbit/webdav/header/IfHeader;

    .line 118
    const-string v3, "Host"

    invoke-virtual {p0, v3}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "scheme":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "uriPrefix":Ljava/lang/String;
    if-eqz p3, :cond_0

    .end local v2    # "uriPrefix":Ljava/lang/String;
    :goto_0
    iput-object v2, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->hrefPrefix:Ljava/lang/String;

    .line 122
    return-void

    .line 121
    .restart local v2    # "uriPrefix":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getContextPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getStrongETag(Lorg/apache/jackrabbit/webdav/DavResource;)Ljava/lang/String;
    .locals 3
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;

    .prologue
    .line 584
    sget-object v2, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETETAG:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-interface {p1, v2}, Lorg/apache/jackrabbit/webdav/DavResource;->getProperty(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v1

    .line 585
    .local v1, "prop":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 586
    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "etag":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->isStrongETag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    .end local v0    # "etag":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static isStrongETag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "eTag"    # Ljava/lang/String;

    .prologue
    .line 602
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "W\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parsePropFindRequest()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x190

    const/4 v10, 0x1

    .line 368
    new-instance v8, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v8}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    iput-object v8, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->propfindProps:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .line 369
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    .line 371
    .local v6, "requestDocument":Lorg/w3c/dom/Document;
    if-nez v6, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    .line 377
    .local v7, "root":Lorg/w3c/dom/Element;
    const-string v8, "propfind"

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 378
    sget-object v8, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    const-string v9, "PropFind-Request has no <propfind> tag."

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 379
    new-instance v8, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v9, "PropFind-Request has no <propfind> tag."

    invoke-direct {v8, v11, v9}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 382
    :cond_2
    const/4 v1, 0x0

    .line 384
    .local v1, "include":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    invoke-static {v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v2

    .line 385
    .local v2, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    const/4 v5, 0x0

    .line 387
    .local v5, "propfindTypeFound":I
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 388
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 389
    .local v0, "child":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "nodeName":Ljava/lang/String;
    sget-object v8, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v8}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getURI()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 391
    const-string v8, "prop"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 392
    const/4 v8, 0x0

    iput v8, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->propfindType:I

    .line 393
    new-instance v8, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v8, v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v8, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->propfindProps:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .line 394
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 396
    :cond_4
    const-string v8, "propname"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 397
    const/4 v8, 0x2

    iput v8, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->propfindType:I

    .line 398
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 400
    :cond_5
    const-string v8, "allprop"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 401
    iput v10, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->propfindType:I

    .line 402
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 404
    :cond_6
    const-string v8, "include"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 405
    new-instance v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .end local v1    # "include":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    invoke-direct {v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    .line 406
    .restart local v1    # "include":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v4

    .line 407
    .local v4, "pit":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_2
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 408
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    goto :goto_2

    .line 414
    .end local v0    # "child":Lorg/w3c/dom/Element;
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "pit":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_7
    if-le v5, v10, :cond_8

    .line 415
    sget-object v8, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    const-string v9, "Multiple top-level propfind instructions"

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 416
    new-instance v8, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v9, "Multiple top-level propfind instructions"

    invoke-direct {v8, v11, v9}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 419
    :cond_8
    if-eqz v1, :cond_0

    .line 420
    iget v8, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->propfindType:I

    if-ne v8, v10, :cond_9

    .line 422
    const/4 v8, 0x3

    iput v8, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->propfindType:I

    .line 423
    iput-object v1, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->propfindProps:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    goto/16 :goto_0

    .line 426
    :cond_9
    new-instance v8, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v9, "<include> goes only with <allprop>"

    invoke-direct {v8, v11, v9}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v8
.end method

.method private parsePropPatchRequest()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x190

    .line 453
    new-instance v7, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    invoke-direct {v7}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;-><init>()V

    iput-object v7, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->proppatchSet:Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    .line 454
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->proppatchList:Ljava/util/List;

    .line 456
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    .line 458
    .local v5, "requestDocument":Lorg/w3c/dom/Document;
    if-nez v5, :cond_0

    .line 459
    new-instance v7, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v8, "Invalid request body."

    invoke-direct {v7, v9, v8}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 462
    :cond_0
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 463
    .local v6, "root":Lorg/w3c/dom/Element;
    const-string v7, "propertyupdate"

    sget-object v8, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v6, v7, v8}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 464
    sget-object v7, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    const-string v8, "PropPatch-Request has no <DAV:propertyupdate> tag."

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 465
    new-instance v7, Lorg/apache/jackrabbit/webdav/DavException;

    const-string v8, "PropPatch-Request has no <propertyupdate> tag."

    invoke-direct {v7, v9, v8}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 468
    :cond_1
    invoke-static {v6}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v2

    .line 469
    .local v2, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 470
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 471
    .local v1, "el":Lorg/w3c/dom/Element;
    const-string v7, "set"

    sget-object v8, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v7, v8}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 472
    const-string v7, "prop"

    sget-object v8, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v7, v8}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 473
    .local v3, "propEl":Lorg/w3c/dom/Element;
    if-eqz v3, :cond_2

    .line 474
    invoke-static {v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v4

    .line 475
    .local v4, "properties":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_1
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 476
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;

    move-result-object v0

    .line 477
    .local v0, "davProp":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    iget-object v7, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->proppatchSet:Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    invoke-virtual {v7, v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->add(Lorg/apache/jackrabbit/webdav/property/DavProperty;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    .line 478
    iget-object v7, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->proppatchList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 481
    .end local v0    # "davProp":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    .end local v3    # "propEl":Lorg/w3c/dom/Element;
    .end local v4    # "properties":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_3
    const-string v7, "remove"

    sget-object v8, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v7, v8}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 482
    const-string v7, "prop"

    sget-object v8, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v7, v8}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 483
    .restart local v3    # "propEl":Lorg/w3c/dom/Element;
    if-eqz v3, :cond_2

    .line 484
    invoke-static {v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v4

    .line 485
    .restart local v4    # "properties":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_2
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 486
    invoke-virtual {v4}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/property/DefaultDavProperty;

    move-result-object v0

    .line 487
    .restart local v0    # "davProp":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    iget-object v7, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->proppatchSet:Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    invoke-virtual {v7, v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->add(Lorg/apache/jackrabbit/webdav/property/DavProperty;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    .line 488
    iget-object v7, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->proppatchList:Ljava/util/List;

    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 492
    .end local v0    # "davProp":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    .end local v3    # "propEl":Lorg/w3c/dom/Element;
    .end local v4    # "properties":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :cond_4
    sget-object v7, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element in DAV:propertyupdate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    .end local v1    # "el":Lorg/w3c/dom/Element;
    :cond_5
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 910
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 914
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getAuthType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBindInfo()Lorg/apache/jackrabbit/webdav/bind/BindInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "info":Lorg/apache/jackrabbit/webdav/bind/BindInfo;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 802
    .local v1, "requestDocument":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_0

    .line 803
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/bind/BindInfo;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/bind/BindInfo;

    move-result-object v0

    .line 805
    :cond_0
    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 818
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDavSession()Lorg/apache/jackrabbit/webdav/DavSession;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->session:Lorg/apache/jackrabbit/webdav/DavSession;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 258
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getDepth(I)I

    move-result v0

    return v0
.end method

.method public getDepth(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-static {v0, p1}, Lorg/apache/jackrabbit/webdav/header/DepthHeader;->parse(Ljavax/servlet/http/HttpServletRequest;I)Lorg/apache/jackrabbit/webdav/header/DepthHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/header/DepthHeader;->getDepth()I

    move-result v0

    return v0
.end method

.method public getDestinationLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    const-string v1, "Destination"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getHrefLocator(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 822
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 826
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHrefLocator(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .locals 9
    .param p1, "href"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x193

    const/16 v8, 0x190

    .line 190
    move-object v3, p1

    .line 191
    .local v3, "ref":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 195
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v4

    .line 196
    .local v4, "uri":Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "auth":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    .line 198
    if-nez v0, :cond_1

    .line 200
    const-string v5, "//"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 201
    :cond_0
    sget-object v5, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected absolute path but found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 202
    new-instance v5, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v6, 0x190

    invoke-direct {v5, v6}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v5
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0    # "auth":Ljava/lang/String;
    .end local v4    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/net/URISyntaxException;
    sget-object v5, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "malformed uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    new-instance v5, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v5, v8}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v5

    .line 204
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .restart local v0    # "auth":Ljava/lang/String;
    .restart local v4    # "uri":Ljava/net/URI;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    const-string v6, "Host"

    invoke-interface {v5, v6}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 208
    new-instance v5, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v6, 0x193

    invoke-direct {v5, v6}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v5
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    :cond_2
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v5}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "contextPath":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 217
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    .end local v0    # "auth":Ljava/lang/String;
    .end local v1    # "contextPath":Ljava/lang/String;
    .end local v4    # "uri":Ljava/net/URI;
    :cond_3
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->factory:Lorg/apache/jackrabbit/webdav/DavLocatorFactory;

    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->hrefPrefix:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Lorg/apache/jackrabbit/webdav/DavLocatorFactory;->createResourceLocator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v5

    return-object v5

    .line 220
    .restart local v0    # "auth":Ljava/lang/String;
    .restart local v1    # "contextPath":Ljava/lang/String;
    .restart local v4    # "uri":Ljava/net/URI;
    :cond_4
    new-instance v5, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v5, v7}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v5
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 834
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getIntHeader(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 703
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/header/LabelHeader;->parse(Lorg/apache/jackrabbit/webdav/WebdavRequest;)Lorg/apache/jackrabbit/webdav/header/LabelHeader;

    move-result-object v0

    .line 704
    .local v0, "label":Lorg/apache/jackrabbit/webdav/header/LabelHeader;
    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/header/LabelHeader;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 707
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLabelInfo()Lorg/apache/jackrabbit/webdav/version/LabelInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 714
    const/4 v1, 0x0

    .line 715
    .local v1, "lInfo":Lorg/apache/jackrabbit/webdav/version/LabelInfo;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 716
    .local v2, "requestDocument":Lorg/w3c/dom/Document;
    if-eqz v2, :cond_0

    .line 717
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 718
    .local v3, "root":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getDepth(I)I

    move-result v0

    .line 719
    .local v0, "depth":I
    new-instance v1, Lorg/apache/jackrabbit/webdav/version/LabelInfo;

    .end local v1    # "lInfo":Lorg/apache/jackrabbit/webdav/version/LabelInfo;
    invoke-direct {v1, v3, v0}, Lorg/apache/jackrabbit/webdav/version/LabelInfo;-><init>(Lorg/w3c/dom/Element;I)V

    .line 721
    .end local v0    # "depth":I
    .end local v3    # "root":Lorg/w3c/dom/Element;
    .restart local v1    # "lInfo":Lorg/apache/jackrabbit/webdav/version/LabelInfo;
    :cond_0
    return-object v1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocales()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 994
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getLocales()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getLockInfo()Lorg/apache/jackrabbit/webdav/lock/LockInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const v5, 0x7fffffff

    .line 515
    invoke-virtual {p0, v5}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getDepth(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    .line 516
    .local v0, "isDeep":Z
    :goto_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 519
    .local v2, "requestDocument":Lorg/w3c/dom/Document;
    if-eqz v2, :cond_2

    .line 520
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 521
    .local v3, "root":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lockinfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 522
    new-instance v1, Lorg/apache/jackrabbit/webdav/lock/LockInfo;

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getTimeout()J

    move-result-wide v4

    invoke-direct {v1, v3, v4, v5, v0}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;-><init>(Lorg/w3c/dom/Element;JZ)V

    .line 530
    .end local v3    # "root":Lorg/w3c/dom/Element;
    .local v1, "lockInfo":Lorg/apache/jackrabbit/webdav/lock/LockInfo;
    :goto_1
    return-object v1

    .line 515
    .end local v0    # "isDeep":Z
    .end local v1    # "lockInfo":Lorg/apache/jackrabbit/webdav/lock/LockInfo;
    .end local v2    # "requestDocument":Lorg/w3c/dom/Document;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 524
    .restart local v0    # "isDeep":Z
    .restart local v2    # "requestDocument":Lorg/w3c/dom/Document;
    .restart local v3    # "root":Lorg/w3c/dom/Element;
    :cond_1
    sget-object v4, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    const-string v5, "Lock request body must start with a DAV:lockinfo element."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 525
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v5, 0x190

    invoke-direct {v4, v5}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v4

    .line 528
    .end local v3    # "root":Lorg/w3c/dom/Element;
    :cond_2
    new-instance v1, Lorg/apache/jackrabbit/webdav/lock/LockInfo;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getTimeout()J

    move-result-wide v6

    invoke-direct {v1, v4, v6, v7, v0}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;-><init>(Lorg/w3c/dom/Element;JZ)V

    .restart local v1    # "lockInfo":Lorg/apache/jackrabbit/webdav/lock/LockInfo;
    goto :goto_1
.end method

.method public getLockToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    const-string v1, "Lock-Token"

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->parse(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->getCodedUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemberLocator(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .locals 4
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/apache/jackrabbit/webdav/DavResourceLocator;->getHref(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->hrefPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->factory:Lorg/apache/jackrabbit/webdav/DavLocatorFactory;

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->hrefPrefix:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/apache/jackrabbit/webdav/DavLocatorFactory;->createResourceLocator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v1

    return-object v1
.end method

.method public getMergeInfo()Lorg/apache/jackrabbit/webdav/version/MergeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, "mInfo":Lorg/apache/jackrabbit/webdav/version/MergeInfo;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 730
    .local v1, "requestDocument":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_0

    .line 731
    new-instance v0, Lorg/apache/jackrabbit/webdav/version/MergeInfo;

    .end local v0    # "mInfo":Lorg/apache/jackrabbit/webdav/version/MergeInfo;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/jackrabbit/webdav/version/MergeInfo;-><init>(Lorg/w3c/dom/Element;)V

    .line 733
    .restart local v0    # "mInfo":Lorg/apache/jackrabbit/webdav/version/MergeInfo;
    :cond_0
    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsInfo()Lorg/apache/jackrabbit/webdav/version/OptionsInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "info":Lorg/apache/jackrabbit/webdav/version/OptionsInfo;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 766
    .local v1, "requestDocument":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_0

    .line 767
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/version/OptionsInfo;

    move-result-object v0

    .line 769
    :cond_0
    return-object v0
.end method

.method public getOrderPatch()Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "op":Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 689
    .local v1, "requestDocument":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_0

    .line 690
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 691
    .local v2, "root":Lorg/w3c/dom/Element;
    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;

    move-result-object v0

    .line 695
    .end local v2    # "root":Lorg/w3c/dom/Element;
    :goto_0
    return-object v0

    .line 693
    :cond_0
    sget-object v3, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    const-string v4, "Error while building xml document from ORDERPATH request body."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOrderingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 659
    const-string v0, "Ordering-Type"

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 938
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getParameterMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 946
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getParameterValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getPathTranslated()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPollTimeout()J
    .locals 4

    .prologue
    .line 636
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lorg/apache/jackrabbit/webdav/header/PollTimeoutHeader;->parseHeader(Ljavax/servlet/http/HttpServletRequest;J)Lorg/apache/jackrabbit/webdav/header/PollTimeoutHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/header/PollTimeoutHeader;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()Lorg/apache/jackrabbit/webdav/ordering/Position;
    .locals 8

    .prologue
    .line 666
    const-string v5, "Position"

    invoke-virtual {p0, v5}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "h":Ljava/lang/String;
    const/4 v2, 0x0

    .line 668
    .local v2, "pos":Lorg/apache/jackrabbit/webdav/ordering/Position;
    if-eqz v1, :cond_0

    .line 669
    const-string v5, "\\s"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, "typeNSegment":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 672
    :try_start_0
    new-instance v3, Lorg/apache/jackrabbit/webdav/ordering/Position;

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-direct {v3, v5, v6}, Lorg/apache/jackrabbit/webdav/ordering/Position;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "pos":Lorg/apache/jackrabbit/webdav/ordering/Position;
    .local v3, "pos":Lorg/apache/jackrabbit/webdav/ordering/Position;
    move-object v2, v3

    .line 678
    .end local v3    # "pos":Lorg/apache/jackrabbit/webdav/ordering/Position;
    .end local v4    # "typeNSegment":[Ljava/lang/String;
    .restart local v2    # "pos":Lorg/apache/jackrabbit/webdav/ordering/Position;
    :cond_0
    :goto_0
    return-object v2

    .line 673
    .restart local v4    # "typeNSegment":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse Position header: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPropFindProperties()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->propfindProps:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    if-nez v0, :cond_0

    .line 356
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->parsePropFindRequest()V

    .line 358
    :cond_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->propfindProps:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    return-object v0
.end method

.method public getPropFindType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->propfindProps:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    if-nez v0, :cond_0

    .line 341
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->parsePropFindRequest()V

    .line 343
    :cond_0
    iget v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->propfindType:I

    return v0
.end method

.method public getPropPatchChangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/jackrabbit/webdav/property/PropEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->proppatchList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 443
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->parsePropPatchRequest()V

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->proppatchList:Ljava/util/List;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 970
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getReader()Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1006
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRebindInfo()Lorg/apache/jackrabbit/webdav/bind/RebindInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 776
    const/4 v0, 0x0

    .line 777
    .local v0, "info":Lorg/apache/jackrabbit/webdav/bind/RebindInfo;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 778
    .local v1, "requestDocument":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_0

    .line 779
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/bind/RebindInfo;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/bind/RebindInfo;

    move-result-object v0

    .line 781
    :cond_0
    return-object v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRemoteUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReportInfo()Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 752
    const/4 v0, 0x0

    .line 753
    .local v0, "rInfo":Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 754
    .local v1, "requestDocument":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_0

    .line 755
    new-instance v0, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    .end local v0    # "rInfo":Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getDepth(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;-><init>(Lorg/w3c/dom/Element;I)V

    .line 757
    .restart local v0    # "rInfo":Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    :cond_0
    return-object v0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1002
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getRequestDocument()Lorg/w3c/dom/Document;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x190

    const/4 v3, 0x1

    .line 290
    const/4 v4, 0x0

    .line 297
    .local v4, "requestDocument":Lorg/w3c/dom/Document;
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v6}, Ljavax/servlet/http/HttpServletRequest;->getContentLength()I

    move-result v6

    if-nez v6, :cond_0

    move-object v5, v4

    .line 330
    .end local v4    # "requestDocument":Lorg/w3c/dom/Document;
    .local v5, "requestDocument":Lorg/w3c/dom/Document;
    :goto_0
    return-object v5

    .line 302
    .end local v5    # "requestDocument":Lorg/w3c/dom/Document;
    .restart local v4    # "requestDocument":Lorg/w3c/dom/Document;
    :cond_0
    :try_start_0
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v6}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v2

    .line 303
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 306
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 307
    .local v0, "bin":Ljava/io/InputStream;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->mark(I)V

    .line 308
    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 309
    .local v3, "isEmpty":Z
    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 310
    if-nez v3, :cond_1

    .line 311
    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->parseDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .end local v0    # "bin":Ljava/io/InputStream;
    .end local v3    # "isEmpty":Z
    :cond_1
    move-object v5, v4

    .line 330
    .end local v4    # "requestDocument":Lorg/w3c/dom/Document;
    .restart local v5    # "requestDocument":Lorg/w3c/dom/Document;
    goto :goto_0

    .line 308
    .end local v5    # "requestDocument":Lorg/w3c/dom/Document;
    .restart local v0    # "bin":Ljava/io/InputStream;
    .restart local v4    # "requestDocument":Lorg/w3c/dom/Document;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 314
    .end local v0    # "bin":Ljava/io/InputStream;
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 316
    sget-object v6, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to build an XML Document from the request body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 318
    :cond_3
    new-instance v6, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v6, v9}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v6

    .line 319
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 320
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v6, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 321
    sget-object v6, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to build an XML Document from the request body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 323
    :cond_4
    new-instance v6, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v7, 0x1f4

    invoke-direct {v6, v7}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v6

    .line 324
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v1

    .line 325
    .local v1, "e":Lorg/xml/sax/SAXException;
    sget-object v6, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 326
    sget-object v6, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to build an XML Document from the request body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 328
    :cond_5
    new-instance v6, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v6, v9}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v6
.end method

.method public getRequestLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "ctx":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_0
    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->factory:Lorg/apache/jackrabbit/webdav/DavLocatorFactory;

    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->hrefPrefix:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lorg/apache/jackrabbit/webdav/DavLocatorFactory;->createResourceLocator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v2

    return-object v2
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getServerPort()I

    move-result v0

    return v0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Ljavax/servlet/http/HttpSession;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 886
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    const-string v1, "SubscriptionId"

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->parse(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->getCodedUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionInfo()Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 643
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 644
    .local v1, "requestDocument":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_1

    .line 645
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 646
    .local v2, "root":Lorg/w3c/dom/Element;
    const-string v4, "subscriptioninfo"

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 647
    invoke-virtual {p0, v3}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getDepth(I)I

    move-result v0

    .line 648
    .local v0, "depth":I
    new-instance v4, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getTimeout()J

    move-result-wide v6

    const v5, 0x7fffffff

    if-ne v0, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-direct {v4, v2, v6, v7, v3}, Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;-><init>(Lorg/w3c/dom/Element;JZ)V

    move-object v3, v4

    .line 651
    .end local v0    # "depth":I
    .end local v2    # "root":Lorg/w3c/dom/Element;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTimeout()J
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    const-wide/32 v2, -0x80000000

    invoke-static {v0, v2, v3}, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;->parse(Ljavax/servlet/http/HttpServletRequest;J)Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/header/TimeoutHeader;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    const-string v1, "TransactionId"

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->parse(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->getCodedUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionInfo()Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 617
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 618
    .local v0, "requestDocument":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_0

    .line 619
    new-instance v1, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;-><init>(Lorg/w3c/dom/Element;)V

    .line 621
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUnbindInfo()Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "info":Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 790
    .local v1, "requestDocument":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_0

    .line 791
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;

    move-result-object v0

    .line 793
    :cond_0
    return-object v0
.end method

.method public getUpdateInfo()Lorg/apache/jackrabbit/webdav/version/UpdateInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 740
    const/4 v1, 0x0

    .line 741
    .local v1, "uInfo":Lorg/apache/jackrabbit/webdav/version/UpdateInfo;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 742
    .local v0, "requestDocument":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_0

    .line 743
    new-instance v1, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;

    .end local v1    # "uInfo":Lorg/apache/jackrabbit/webdav/version/UpdateInfo;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/jackrabbit/webdav/version/UpdateInfo;-><init>(Lorg/w3c/dom/Element;)V

    .line 745
    .restart local v1    # "uInfo":Lorg/apache/jackrabbit/webdav/version/UpdateInfo;
    :cond_0
    return-object v1
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public isOverwrite()Z
    .locals 2

    .prologue
    .line 244
    new-instance v0, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-direct {v0, v1}, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/header/OverwriteHeader;->isOverwrite()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromCookie()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromURL()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdFromUrl()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isRequestedSessionIdValid()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 862
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->isUserInRole(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public matchesIfHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "eTag"    # Ljava/lang/String;

    .prologue
    .line 573
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->ifHeader:Lorg/apache/jackrabbit/webdav/header/IfHeader;

    invoke-static {p3}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->isStrongETag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p3    # "eTag":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .restart local p3    # "eTag":Ljava/lang/String;
    :cond_0
    const-string p3, ""

    goto :goto_0
.end method

.method public matchesIfHeader(Lorg/apache/jackrabbit/webdav/DavResource;)Z
    .locals 4
    .param p1, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;

    .prologue
    .line 555
    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->ifHeader:Lorg/apache/jackrabbit/webdav/header/IfHeader;

    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    sget-object v2, Lorg/apache/jackrabbit/webdav/lock/Type;->WRITE:Lorg/apache/jackrabbit/webdav/lock/Type;

    sget-object v3, Lorg/apache/jackrabbit/webdav/lock/Scope;->EXCLUSIVE:Lorg/apache/jackrabbit/webdav/lock/Scope;

    invoke-interface {p1, v2, v3}, Lorg/apache/jackrabbit/webdav/DavResource;->hasLock(Lorg/apache/jackrabbit/webdav/lock/Type;Lorg/apache/jackrabbit/webdav/lock/Scope;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 556
    :cond_0
    const/4 v0, 0x1

    .line 565
    :cond_1
    :goto_0
    return v0

    .line 559
    :cond_2
    const/4 v0, 0x0

    .line 560
    .local v0, "isMatching":Z
    sget-object v2, Lorg/apache/jackrabbit/webdav/lock/Type;->WRITE:Lorg/apache/jackrabbit/webdav/lock/Type;

    sget-object v3, Lorg/apache/jackrabbit/webdav/lock/Scope;->EXCLUSIVE:Lorg/apache/jackrabbit/webdav/lock/Scope;

    invoke-interface {p1, v2, v3}, Lorg/apache/jackrabbit/webdav/DavResource;->getLock(Lorg/apache/jackrabbit/webdav/lock/Type;Lorg/apache/jackrabbit/webdav/lock/Scope;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "lockToken":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 562
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getStrongETag(Lorg/apache/jackrabbit/webdav/DavResource;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->matchesIfHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 986
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 987
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 982
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 983
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 922
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->httpRequest:Ljavax/servlet/http/HttpServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/http/HttpServletRequest;->setCharacterEncoding(Ljava/lang/String;)V

    .line 923
    return-void
.end method

.method public setDavSession(Lorg/apache/jackrabbit/webdav/DavSession;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/jackrabbit/webdav/DavSession;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->session:Lorg/apache/jackrabbit/webdav/DavSession;

    .line 134
    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->getLockToken()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "lt":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 137
    invoke-interface {p1, v2}, Lorg/apache/jackrabbit/webdav/DavSession;->addLockToken(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;->ifHeader:Lorg/apache/jackrabbit/webdav/header/IfHeader;

    invoke-virtual {v3}, Lorg/apache/jackrabbit/webdav/header/IfHeader;->getAllTokens()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "ifHeaderToken":Ljava/lang/String;
    invoke-interface {p1, v0}, Lorg/apache/jackrabbit/webdav/DavSession;->addLockToken(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v0    # "ifHeaderToken":Ljava/lang/String;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "lt":Ljava/lang/String;
    :cond_1
    return-void
.end method
