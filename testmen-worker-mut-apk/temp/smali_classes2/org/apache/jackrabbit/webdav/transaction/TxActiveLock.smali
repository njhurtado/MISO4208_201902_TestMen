.class public Lorg/apache/jackrabbit/webdav/transaction/TxActiveLock;
.super Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;
.source "TxActiveLock.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/transaction/TransactionConstants;


# static fields
.field public static final DEFAULT_TIMEOUT:J = 0x493e0L


# instance fields
.field private final scope:Lorg/apache/jackrabbit/webdav/lock/Scope;


# direct methods
.method public constructor <init>(Lorg/apache/jackrabbit/webdav/lock/LockInfo;)V
    .locals 2
    .param p1, "lockInfo"    # Lorg/apache/jackrabbit/webdav/lock/LockInfo;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/lock/DefaultActiveLock;-><init>()V

    .line 44
    if-eqz p1, :cond_3

    .line 45
    sget-object v0, Lorg/apache/jackrabbit/webdav/transaction/TxActiveLock;->TRANSACTION:Lorg/apache/jackrabbit/webdav/lock/Type;

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getType()Lorg/apache/jackrabbit/webdav/lock/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/lock/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only \'transaction\' type is allowed for a transaction-activelock object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    sget-object v0, Lorg/apache/jackrabbit/webdav/transaction/TxActiveLock;->LOCAL:Lorg/apache/jackrabbit/webdav/lock/Scope;

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/lock/Scope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/jackrabbit/webdav/transaction/TxActiveLock;->GLOBAL:Lorg/apache/jackrabbit/webdav/lock/Scope;

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/lock/Scope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only \'global\' or \'local\' are valid scopes within a transaction-activelock element."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isDeep()Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only transaction locks can only be deep."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/transaction/TxActiveLock;->setOwner(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/transaction/TxActiveLock;->setTimeout(J)V

    .line 56
    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/transaction/TxActiveLock;->scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_3
    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/transaction/TxActiveLock;->setTimeout(J)V

    .line 60
    sget-object v0, Lorg/apache/jackrabbit/webdav/transaction/TxActiveLock;->LOCAL:Lorg/apache/jackrabbit/webdav/lock/Scope;

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/transaction/TxActiveLock;->scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

    goto :goto_0
.end method


# virtual methods
.method public getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/transaction/TxActiveLock;->scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

    return-object v0
.end method

.method public getType()Lorg/apache/jackrabbit/webdav/lock/Type;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/apache/jackrabbit/webdav/transaction/TxActiveLock;->TRANSACTION:Lorg/apache/jackrabbit/webdav/lock/Type;

    return-object v0
.end method

.method public isDeep()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method
