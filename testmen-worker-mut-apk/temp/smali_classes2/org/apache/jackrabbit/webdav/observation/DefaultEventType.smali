.class public Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;
.super Ljava/lang/Object;
.source "DefaultEventType.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/observation/EventType;


# static fields
.field private static final eventTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/observation/EventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final localName:Ljava/lang/String;

.field private final namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;->eventTypes:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V
    .locals 0
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;->localName:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 54
    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/observation/EventType;
    .locals 4
    .param p0, "localName"    # Ljava/lang/String;
    .param p1, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 64
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null and \'\' are not valid local names of an event type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getExpandedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;->eventTypes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    sget-object v2, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;->eventTypes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/jackrabbit/webdav/observation/EventType;

    .line 73
    :goto_0
    return-object v2

    .line 71
    :cond_2
    new-instance v1, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;

    invoke-direct {v1, p0, p1}, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V

    .line 72
    .local v1, "type":Lorg/apache/jackrabbit/webdav/observation/EventType;
    sget-object v2, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;->eventTypes:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 73
    goto :goto_0
.end method

.method public static create([Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)[Lorg/apache/jackrabbit/webdav/observation/EventType;
    .locals 3
    .param p0, "localNames"    # [Ljava/lang/String;
    .param p1, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 86
    array-length v2, p0

    new-array v1, v2, [Lorg/apache/jackrabbit/webdav/observation/EventType;

    .line 87
    .local v1, "types":[Lorg/apache/jackrabbit/webdav/observation/EventType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 88
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/observation/EventType;

    move-result-object v2

    aput-object v2, v1, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-object v1
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)[Lorg/apache/jackrabbit/webdav/observation/EventType;
    .locals 5
    .param p0, "eventType"    # Lorg/w3c/dom/Element;

    .prologue
    .line 103
    const-string v3, "eventtype"

    sget-object v4, Lorg/apache/jackrabbit/webdav/observation/ObservationConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'eventtype\' element expected which contains a least a single child element."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "etypes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/observation/EventType;>;"
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v2

    .line 109
    .local v2, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 111
    .local v0, "el":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getNamespace(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/observation/EventType;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    .end local v0    # "el":Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/jackrabbit/webdav/observation/EventType;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/jackrabbit/webdav/observation/EventType;

    return-object v3
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;->localName:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/observation/DefaultEventType;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v0, v1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method
