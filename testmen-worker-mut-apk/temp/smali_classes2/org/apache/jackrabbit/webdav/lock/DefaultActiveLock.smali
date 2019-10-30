.class public Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;
.super Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;
.source "DefaultActiveLock.java"


# instance fields
.field private expirationTime:J

.field private isDeep:Z

.field private owner:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opaquelocktoken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->token:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->isDeep:Z

    .line 38
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->expirationTime:J

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/jackrabbit/webdav/lock/LockInfo;)V
    .locals 2
    .param p1, "lockInfo"    # Lorg/apache/jackrabbit/webdav/lock/LockInfo;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractActiveLock;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opaquelocktoken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->token:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->isDeep:Z

    .line 38
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->expirationTime:J

    .line 53
    if-eqz p1, :cond_2

    .line 54
    sget-object v0, Lorg/apache/jackrabbit/webdav/lock/Type;->WRITE:Lorg/apache/jackrabbit/webdav/lock/Type;

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getType()Lorg/apache/jackrabbit/webdav/lock/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/lock/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/jackrabbit/webdav/lock/Scope;->EXCLUSIVE:Lorg/apache/jackrabbit/webdav/lock/Scope;

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/lock/Scope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only \'exclusive write\' lock is allowed scope/type pair."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getOwner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->owner:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isDeep()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->isDeep:Z

    .line 59
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->setTimeout(J)V

    .line 61
    :cond_2
    return-void
.end method


# virtual methods
.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lorg/apache/jackrabbit/webdav/lock/Scope;->EXCLUSIVE:Lorg/apache/jackrabbit/webdav/lock/Scope;

    return-object v0
.end method

.method public getTimeout()J
    .locals 4

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->expirationTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/apache/jackrabbit/webdav/lock/Type;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lorg/apache/jackrabbit/webdav/lock/Type;->WRITE:Lorg/apache/jackrabbit/webdav/lock/Type;

    return-object v0
.end method

.method public isDeep()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->isDeep:Z

    return v0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->expirationTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockedByToken(Ljava/lang/String;)Z
    .locals 1
    .param p1, "lockToken"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->token:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsDeep(Z)V
    .locals 0
    .param p1, "isDeep"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->isDeep:Z

    .line 126
    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->owner:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setTimeout(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 109
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;->expirationTime:J

    .line 112
    :cond_0
    return-void
.end method
