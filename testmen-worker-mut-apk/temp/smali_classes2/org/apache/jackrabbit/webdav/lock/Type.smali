.class public Lorg/apache/jackrabbit/webdav/lock/Type;
.super Ljava/lang/Object;
.source "Type.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field public static final WRITE:Lorg/apache/jackrabbit/webdav/lock/Type;

.field private static types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/lock/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hashCode:I

.field private final localName:Ljava/lang/String;

.field private final namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/jackrabbit/webdav/lock/Type;->types:Ljava/util/Map;

    .line 36
    const-string v0, "write"

    sget-object v1, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/lock/Type;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/lock/Type;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/lock/Type;->WRITE:Lorg/apache/jackrabbit/webdav/lock/Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/jackrabbit/webdav/lock/Type;->hashCode:I

    .line 50
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/lock/Type;->localName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/lock/Type;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 52
    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/lock/Type;
    .locals 3
    .param p0, "localName"    # Ljava/lang/String;
    .param p1, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 120
    invoke-static {p0, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getExpandedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lorg/apache/jackrabbit/webdav/lock/Type;->types:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    sget-object v2, Lorg/apache/jackrabbit/webdav/lock/Type;->types:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/jackrabbit/webdav/lock/Type;

    .line 126
    :goto_0
    return-object v2

    .line 124
    :cond_0
    new-instance v1, Lorg/apache/jackrabbit/webdav/lock/Type;

    invoke-direct {v1, p0, p1}, Lorg/apache/jackrabbit/webdav/lock/Type;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V

    .line 125
    .local v1, "type":Lorg/apache/jackrabbit/webdav/lock/Type;
    sget-object v2, Lorg/apache/jackrabbit/webdav/lock/Type;->types:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 126
    goto :goto_0
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/lock/Type;
    .locals 3
    .param p0, "lockType"    # Lorg/w3c/dom/Element;

    .prologue
    .line 101
    if-eqz p0, :cond_0

    const-string v1, "locktype"

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 105
    :cond_0
    if-nez p0, :cond_1

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'null\' is not valid lock type entry."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v0

    .line 109
    .local v0, "namespace":Lorg/apache/jackrabbit/webdav/xml/Namespace;
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/jackrabbit/webdav/lock/Type;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/lock/Type;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    instance-of v3, p1, Lorg/apache/jackrabbit/webdav/lock/Type;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 88
    check-cast v0, Lorg/apache/jackrabbit/webdav/lock/Type;

    .line 89
    .local v0, "other":Lorg/apache/jackrabbit/webdav/lock/Type;
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/lock/Type;->localName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/jackrabbit/webdav/lock/Type;->localName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/lock/Type;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v4, v0, Lorg/apache/jackrabbit/webdav/lock/Type;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v3, v4}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/apache/jackrabbit/webdav/lock/Type;
    :cond_3
    move v1, v2

    .line 91
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 68
    iget v1, p0, Lorg/apache/jackrabbit/webdav/lock/Type;->hashCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "LockType : {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/lock/Type;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/lock/Type;->localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, p0, Lorg/apache/jackrabbit/webdav/lock/Type;->hashCode:I

    .line 73
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_0
    iget v1, p0, Lorg/apache/jackrabbit/webdav/lock/Type;->hashCode:I

    return v1
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 61
    const-string v1, "locktype"

    sget-object v2, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 62
    .local v0, "lockType":Lorg/w3c/dom/Element;
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/lock/Type;->localName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/lock/Type;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    .line 63
    return-object v0
.end method
