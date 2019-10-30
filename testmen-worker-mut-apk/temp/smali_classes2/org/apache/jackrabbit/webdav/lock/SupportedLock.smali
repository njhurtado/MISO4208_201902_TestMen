.class public Lorg/apache/jackrabbit/webdav/lock/SupportedLock;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "SupportedLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/lock/SupportedLock$WriteLockEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/apache/jackrabbit/webdav/lock/LockEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/lock/LockEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->SUPPORTEDLOCK:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/SupportedLock;->entries:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public addEntry(Lorg/apache/jackrabbit/webdav/lock/LockEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/jackrabbit/webdav/lock/LockEntry;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lock entry cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/SupportedLock;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public addEntry(Lorg/apache/jackrabbit/webdav/lock/Type;Lorg/apache/jackrabbit/webdav/lock/Scope;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/jackrabbit/webdav/lock/Type;
    .param p2, "scope"    # Lorg/apache/jackrabbit/webdav/lock/Scope;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/SupportedLock;->entries:Ljava/util/List;

    new-instance v1, Lorg/apache/jackrabbit/webdav/lock/SupportedLock$WriteLockEntry;

    invoke-direct {v1, p1, p2}, Lorg/apache/jackrabbit/webdav/lock/SupportedLock$WriteLockEntry;-><init>(Lorg/apache/jackrabbit/webdav/lock/Type;Lorg/apache/jackrabbit/webdav/lock/Scope;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public getSupportedLocks()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/jackrabbit/webdav/lock/LockEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/SupportedLock;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/SupportedLock;->getValue()Ljava/util/List;

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
            "Lorg/apache/jackrabbit/webdav/lock/LockEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/SupportedLock;->entries:Ljava/util/List;

    return-object v0
.end method

.method public isSupportedLock(Lorg/apache/jackrabbit/webdav/lock/Type;Lorg/apache/jackrabbit/webdav/lock/Scope;)Z
    .locals 3
    .param p1, "type"    # Lorg/apache/jackrabbit/webdav/lock/Type;
    .param p2, "scope"    # Lorg/apache/jackrabbit/webdav/lock/Scope;

    .prologue
    .line 79
    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/lock/SupportedLock;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/jackrabbit/webdav/lock/LockEntry;

    .line 80
    .local v1, "le":Lorg/apache/jackrabbit/webdav/lock/LockEntry;
    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/lock/LockEntry;->getType()Lorg/apache/jackrabbit/webdav/lock/Type;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/jackrabbit/webdav/lock/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/lock/LockEntry;->getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/apache/jackrabbit/webdav/lock/Scope;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const/4 v2, 0x1

    .line 84
    .end local v1    # "le":Lorg/apache/jackrabbit/webdav/lock/LockEntry;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 4
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/lock/SupportedLock;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 105
    .local v2, "support":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/lock/SupportedLock;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/jackrabbit/webdav/lock/LockEntry;

    .line 106
    .local v1, "le":Lorg/apache/jackrabbit/webdav/lock/LockEntry;
    invoke-interface {v1, p1}, Lorg/apache/jackrabbit/webdav/lock/LockEntry;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 108
    .end local v1    # "le":Lorg/apache/jackrabbit/webdav/lock/LockEntry;
    :cond_0
    return-object v2
.end method
