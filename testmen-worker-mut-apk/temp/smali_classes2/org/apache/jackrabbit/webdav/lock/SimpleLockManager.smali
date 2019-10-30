.class public Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;
.super Ljava/lang/Object;
.source "SimpleLockManager.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/lock/LockManager;


# instance fields
.field private locks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/jackrabbit/webdav/lock/ActiveLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->locks:Ljava/util/Map;

    return-void
.end method

.method private getLock(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->locks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    .line 75
    .local v0, "lock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 81
    :cond_0
    if-nez v0, :cond_1

    .line 83
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->getLock(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    move-result-object v1

    .line 85
    .local v1, "parentLock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->isDeep()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    move-object v0, v1

    .line 90
    .end local v1    # "parentLock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    :cond_1
    return-object v0
.end method

.method private static getParentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 208
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 209
    .local v0, "idx":I
    packed-switch v0, :pswitch_data_0

    .line 215
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 211
    :pswitch_0
    const-string v1, ""

    goto :goto_0

    .line 213
    :pswitch_1
    const-string v1, "/"

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isDescendant(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "descendant"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 230
    .local v0, "pattern":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 229
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    .restart local v0    # "pattern":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isInternalMember(Lorg/apache/jackrabbit/webdav/DavResource;Ljava/lang/String;)Z
    .locals 5
    .param p0, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p1, "memberPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-interface {p0}, Lorg/apache/jackrabbit/webdav/DavResource;->getResourcePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    invoke-interface {p0}, Lorg/apache/jackrabbit/webdav/DavResource;->getMembers()Lorg/apache/jackrabbit/webdav/DavResourceIterator;

    move-result-object v0

    .line 190
    .local v0, "it":Lorg/apache/jackrabbit/webdav/DavResourceIterator;
    :cond_0
    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResourceIterator;->nextResource()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v1

    .line 192
    .local v1, "member":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/DavResource;->getResourcePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/DavResource;->isCollection()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 198
    .end local v0    # "it":Lorg/apache/jackrabbit/webdav/DavResourceIterator;
    .end local v1    # "member":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_1
    return v2
.end method


# virtual methods
.method public declared-synchronized createLock(Lorg/apache/jackrabbit/webdav/lock/LockInfo;Lorg/apache/jackrabbit/webdav/DavResource;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    .locals 9
    .param p1, "lockInfo"    # Lorg/apache/jackrabbit/webdav/lock/LockInfo;
    .param p2, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 102
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 103
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Neither lockInfo nor resource must be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 106
    :cond_1
    :try_start_1
    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/DavResource;->getResourcePath()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "resourcePath":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->locks:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    .line 109
    .local v3, "lock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 110
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->locks:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/4 v3, 0x0

    .line 113
    :cond_2
    if-eqz v3, :cond_3

    .line 114
    new-instance v5, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v6, 0x1a7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resource \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/DavResource;->getResourcePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' already holds a lock."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 118
    :cond_3
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->locks:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1, v4}, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->isDescendant(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 121
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->locks:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    .line 122
    .local v2, "l":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    invoke-interface {v2}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->isDeep()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/DavResource;->isCollection()Z

    move-result v5

    if-nez v5, :cond_4

    .line 123
    :cond_5
    new-instance v5, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v6, 0x1a7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resource \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/DavResource;->getResourcePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' already inherits a lock by its collection."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 125
    .end local v2    # "l":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    :cond_6
    invoke-static {v4, v1}, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->isDescendant(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 126
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isDeep()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {p2, v1}, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->isInternalMember(Lorg/apache/jackrabbit/webdav/DavResource;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 127
    :cond_7
    new-instance v5, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v6, 0x199

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resource \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/DavResource;->getResourcePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' cannot be locked due to a lock present on the member resource \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 132
    .end local v1    # "key":Ljava/lang/String;
    :cond_8
    new-instance v3, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;

    .end local v3    # "lock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    invoke-direct {v3, p1}, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;-><init>(Lorg/apache/jackrabbit/webdav/lock/LockInfo;)V

    .line 133
    .restart local v3    # "lock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->locks:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/DavResource;->getResourcePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized getLock(Lorg/apache/jackrabbit/webdav/lock/Type;Lorg/apache/jackrabbit/webdav/lock/Scope;Lorg/apache/jackrabbit/webdav/DavResource;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    .locals 1
    .param p1, "type"    # Lorg/apache/jackrabbit/webdav/lock/Type;
    .param p2, "scope"    # Lorg/apache/jackrabbit/webdav/lock/Scope;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/jackrabbit/webdav/lock/Type;->WRITE:Lorg/apache/jackrabbit/webdav/lock/Type;

    invoke-virtual {v0, p1}, Lorg/apache/jackrabbit/webdav/lock/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/jackrabbit/webdav/lock/Scope;->EXCLUSIVE:Lorg/apache/jackrabbit/webdav/lock/Scope;

    invoke-virtual {v0, p2}, Lorg/apache/jackrabbit/webdav/lock/Scope;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->getResourcePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->getLock(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasLock(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/DavResource;)Z
    .locals 3
    .param p1, "lockToken"    # Ljava/lang/String;
    .param p2, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;

    .prologue
    .line 43
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->locks:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/DavResource;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    .line 44
    .local v0, "lock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const/4 v1, 0x1

    .line 47
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public refreshLock(Lorg/apache/jackrabbit/webdav/lock/LockInfo;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/DavResource;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    .locals 4
    .param p1, "lockInfo"    # Lorg/apache/jackrabbit/webdav/lock/LockInfo;
    .param p2, "lockToken"    # Ljava/lang/String;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getType()Lorg/apache/jackrabbit/webdav/lock/Type;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->getLock(Lorg/apache/jackrabbit/webdav/lock/Type;Lorg/apache/jackrabbit/webdav/lock/Scope;Lorg/apache/jackrabbit/webdav/DavResource;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    move-result-object v0

    .line 149
    .local v0, "lock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    if-nez v0, :cond_0

    .line 150
    new-instance v1, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v2, 0x19c

    invoke-direct {v1, v2}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v1

    .line 151
    :cond_0
    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    new-instance v1, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v2, 0x1a7

    invoke-direct {v1, v2}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v1

    .line 154
    :cond_1
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getTimeout()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->setTimeout(J)V

    .line 155
    return-object v0
.end method

.method public declared-synchronized releaseLock(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 3
    .param p1, "lockToken"    # Ljava/lang/String;
    .param p2, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->locks:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/DavResource;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v2, 0x19c

    invoke-direct {v1, v2}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 169
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->locks:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/DavResource;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    .line 170
    .local v0, "lock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/lock/SimpleLockManager;->locks:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/DavResource;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 173
    :cond_1
    :try_start_2
    new-instance v1, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v2, 0x1a7

    invoke-direct {v1, v2}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
