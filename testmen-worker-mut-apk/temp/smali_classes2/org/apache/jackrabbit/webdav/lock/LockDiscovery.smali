.class public Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "LockDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$1;,
        Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/apache/jackrabbit/webdav/lock/ActiveLock;",
        ">;>;"
    }
.end annotation


# instance fields
.field private activeLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/lock/ActiveLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->LOCKDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;->activeLocks:Ljava/util/List;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/lock/ActiveLock;)V
    .locals 2
    .param p1, "lock"    # Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    .prologue
    .line 59
    sget-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->LOCKDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;->activeLocks:Ljava/util/List;

    .line 60
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;->addActiveLock(Lorg/apache/jackrabbit/webdav/lock/ActiveLock;)V

    .line 61
    return-void
.end method

.method public constructor <init>([Lorg/apache/jackrabbit/webdav/lock/ActiveLock;)V
    .locals 6
    .param p1, "locks"    # [Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    .prologue
    .line 69
    sget-object v4, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->LOCKDISCOVERY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;->activeLocks:Ljava/util/List;

    .line 70
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 71
    .local v3, "lock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    invoke-direct {p0, v3}, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;->addActiveLock(Lorg/apache/jackrabbit/webdav/lock/ActiveLock;)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "lock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    :cond_0
    return-void
.end method

.method private addActiveLock(Lorg/apache/jackrabbit/webdav/lock/ActiveLock;)V
    .locals 1
    .param p1, "lock"    # Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;->activeLocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method public static createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;
    .locals 5
    .param p0, "lockDiscoveryElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 118
    const-string v3, "lockdiscovery"

    sget-object v4, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "DAV:lockdiscovery element expected."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "activeLocks":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/lock/ActiveLock;>;"
    const-string v3, "activelock"

    sget-object v4, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p0, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/xml/ElementIterator;

    move-result-object v2

    .line 124
    .local v2, "it":Lorg/apache/jackrabbit/webdav/xml/ElementIterator;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/xml/ElementIterator;->nextElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 126
    .local v1, "al":Lorg/w3c/dom/Element;
    new-instance v3, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$ALockImpl;-><init>(Lorg/w3c/dom/Element;Lorg/apache/jackrabbit/webdav/lock/LockDiscovery$1;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v1    # "al":Lorg/w3c/dom/Element;
    :cond_1
    new-instance v4, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    invoke-direct {v4, v3}, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;-><init>([Lorg/apache/jackrabbit/webdav/lock/ActiveLock;)V

    return-object v4
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/lock/ActiveLock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;->activeLocks:Ljava/util/List;

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 4
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 102
    .local v2, "lockdiscovery":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;->activeLocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    .line 103
    .local v1, "lock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    invoke-interface {v1, p1}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 105
    .end local v1    # "lock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    :cond_0
    return-object v2
.end method
