.class public Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
.super Lorg/apache/jackrabbit/webdav/property/PropContainer;
.source "DavPropertySet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/property/DavPropertySet$1;,
        Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/PropContainer;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/jackrabbit/webdav/property/DavProperty",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/jackrabbit/webdav/property/DavPropertyName;",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/property/PropContainer;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->map:Ljava/util/Map;

    .line 225
    return-void
.end method

.method static synthetic access$200(Lorg/apache/jackrabbit/webdav/property/DavPropertySet;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->map:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/jackrabbit/webdav/property/DavProperty;)Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;)",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "property":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->map:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/property/DavProperty;

    return-object v0
.end method

.method public addAll(Lorg/apache/jackrabbit/webdav/property/DavPropertySet;)V
    .locals 2
    .param p1, "pset"    # Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->map:Ljava/util/Map;

    iget-object v1, p1, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->map:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 60
    return-void
.end method

.method public addContent(Lorg/apache/jackrabbit/webdav/property/PropEntry;)Z
    .locals 3
    .param p1, "contentEntry"    # Lorg/apache/jackrabbit/webdav/property/PropEntry;

    .prologue
    .line 188
    instance-of v0, p1, Lorg/apache/jackrabbit/webdav/property/DavProperty;

    if-eqz v0, :cond_0

    .line 189
    check-cast p1, Lorg/apache/jackrabbit/webdav/property/DavProperty;

    .end local p1    # "contentEntry":Lorg/apache/jackrabbit/webdav/property/PropEntry;
    invoke-virtual {p0, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->add(Lorg/apache/jackrabbit/webdav/property/DavProperty;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    .line 190
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    .line 192
    .restart local p1    # "contentEntry":Lorg/apache/jackrabbit/webdav/property/PropEntry;
    :cond_0
    sget-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DavProperty object expected. Found: "

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

    .line 193
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z
    .locals 1
    .param p1, "name"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/xml/Namespace;",
            ")",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p1, p2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->get(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .locals 1
    .param p1, "name"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/property/DavPropertyName;",
            ")",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/property/DavProperty;

    return-object v0
.end method

.method public getContent()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/jackrabbit/webdav/property/PropEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getContentSize()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getPropertyNames()[Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->iterator()Lorg/apache/jackrabbit/webdav/property/DavPropertyIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/apache/jackrabbit/webdav/property/DavPropertyIterator;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertySet;Lorg/apache/jackrabbit/webdav/property/DavPropertySet$1;)V

    return-object v0
.end method

.method public iterator(Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyIterator;
    .locals 2
    .param p1, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 153
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertySet;Lorg/apache/jackrabbit/webdav/xml/Namespace;Lorg/apache/jackrabbit/webdav/property/DavPropertySet$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->remove(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/xml/Namespace;",
            ")",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p1, p2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->remove(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .locals 1
    .param p1, "name"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/jackrabbit/webdav/property/DavPropertyName;",
            ")",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/property/DavProperty;

    return-object v0
.end method
