.class public Lorg/apache/jackrabbit/webdav/ordering/Position;
.super Ljava/lang/Object;
.source "Position.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/ordering/OrderingConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field private static final VALID_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final segment:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lorg/apache/jackrabbit/webdav/ordering/Position;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/ordering/Position;->log:Lorg/slf4j/Logger;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/jackrabbit/webdav/ordering/Position;->VALID_TYPES:Ljava/util/Set;

    .line 46
    sget-object v0, Lorg/apache/jackrabbit/webdav/ordering/Position;->VALID_TYPES:Ljava/util/Set;

    const-string v1, "first"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lorg/apache/jackrabbit/webdav/ordering/Position;->VALID_TYPES:Ljava/util/Set;

    const-string v1, "last"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lorg/apache/jackrabbit/webdav/ordering/Position;->VALID_TYPES:Ljava/util/Set;

    const-string v1, "after"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lorg/apache/jackrabbit/webdav/ordering/Position;->VALID_TYPES:Ljava/util/Set;

    const-string v1, "before"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lorg/apache/jackrabbit/webdav/ordering/Position;->VALID_TYPES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    const-string v0, "first"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "last"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If type is other than \'first\' or \'last\' a segment must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/ordering/Position;->type:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/ordering/Position;->segment:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "segment"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget-object v0, Lorg/apache/jackrabbit/webdav/ordering/Position;->VALID_TYPES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    const-string v0, "after"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "before"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If type is other than \'first\' or \'last\' a segment must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/ordering/Position;->type:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/ordering/Position;->segment:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/ordering/Position;
    .locals 6
    .param p0, "positionElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 149
    const-string v4, "position"

    sget-object v5, Lorg/apache/jackrabbit/webdav/ordering/Position;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The \'DAV:position\' element required."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_0
    invoke-static {p0}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v1

    .line 153
    .local v1, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 155
    .local v0, "el":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "type":Ljava/lang/String;
    const-string v4, "segment"

    sget-object v5, Lorg/apache/jackrabbit/webdav/ordering/Position;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "segmentText":Ljava/lang/String;
    new-instance v4, Lorg/apache/jackrabbit/webdav/ordering/Position;

    invoke-direct {v4, v3, v2}, Lorg/apache/jackrabbit/webdav/ordering/Position;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 161
    .end local v0    # "el":Lorg/w3c/dom/Element;
    .end local v2    # "segmentText":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The \'DAV:position\' element required with exact one child indicating the type."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public getSegment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/ordering/Position;->segment:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/ordering/Position;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 124
    const-string v2, "position"

    sget-object v3, Lorg/apache/jackrabbit/webdav/ordering/Position;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 125
    .local v0, "positionElement":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/ordering/Position;->type:Ljava/lang/String;

    sget-object v3, Lorg/apache/jackrabbit/webdav/ordering/Position;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 126
    .local v1, "typeElement":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/ordering/Position;->segment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "segment"

    sget-object v3, Lorg/apache/jackrabbit/webdav/ordering/Position;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/ordering/Position;->segment:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 129
    :cond_0
    return-object v0
.end method
