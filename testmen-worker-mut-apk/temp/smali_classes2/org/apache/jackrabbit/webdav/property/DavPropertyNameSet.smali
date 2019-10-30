.class public Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
.super Lorg/apache/jackrabbit/webdav/property/PropContainer;
.source "DavPropertyNameSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$1;,
        Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$PropertyNameIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/PropContainer;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/jackrabbit/webdav/property/DavPropertyName;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/jackrabbit/webdav/property/DavPropertyName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/property/PropContainer;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->set:Ljava/util/Set;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V
    .locals 1
    .param p1, "initialSet"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/property/PropContainer;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->set:Ljava/util/Set;

    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->addAll(Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)Z

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "propElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/property/PropContainer;-><init>()V

    .line 39
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->set:Ljava/util/Set;

    .line 65
    const-string v1, "prop"

    sget-object v2, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'DAV:prop\' element expected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_0
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v0

    .line 71
    .local v0, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->set:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z
    .locals 2
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->set:Ljava/util/Set;

    invoke-static {p1, p2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z
    .locals 1
    .param p1, "propertyName"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)Z
    .locals 2
    .param p1, "propertyNames"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->set:Ljava/util/Set;

    iget-object v1, p1, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->set:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addContent(Lorg/apache/jackrabbit/webdav/property/PropEntry;)Z
    .locals 3
    .param p1, "contentEntry"    # Lorg/apache/jackrabbit/webdav/property/PropEntry;

    .prologue
    .line 147
    instance-of v0, p1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    if-eqz v0, :cond_0

    .line 148
    check-cast p1, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .end local p1    # "contentEntry":Lorg/apache/jackrabbit/webdav/property/PropEntry;
    invoke-virtual {p0, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    move-result v0

    .line 151
    :goto_0
    return v0

    .line 150
    .restart local p1    # "contentEntry":Lorg/apache/jackrabbit/webdav/property/PropEntry;
    :cond_0
    sget-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DavPropertyName object expected. Found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z
    .locals 1
    .param p1, "name"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getContent()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/jackrabbit/webdav/property/DavPropertyName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->set:Ljava/util/Set;

    return-object v0
.end method

.method public getContentSize()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->iterator()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameIterator;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$PropertyNameIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$PropertyNameIterator;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$1;)V

    return-object v0
.end method

.method public remove(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z
    .locals 1
    .param p1, "propertyName"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
