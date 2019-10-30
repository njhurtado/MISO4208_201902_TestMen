.class public final Lorg/apache/jackrabbit/webdav/transaction/TxLockEntry;
.super Lorg/apache/jackrabbit/webdav/lock/AbstractLockEntry;
.source "TxLockEntry.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/transaction/TransactionConstants;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final scope:Lorg/apache/jackrabbit/webdav/lock/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/jackrabbit/webdav/transaction/TxLockEntry;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/transaction/TxLockEntry;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isLocal"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/lock/AbstractLockEntry;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    sget-object v0, Lorg/apache/jackrabbit/webdav/transaction/TxLockEntry;->LOCAL:Lorg/apache/jackrabbit/webdav/lock/Scope;

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/transaction/TxLockEntry;->scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v0, Lorg/apache/jackrabbit/webdav/transaction/TxLockEntry;->GLOBAL:Lorg/apache/jackrabbit/webdav/lock/Scope;

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/transaction/TxLockEntry;->scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

    goto :goto_0
.end method


# virtual methods
.method public getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/transaction/TxLockEntry;->scope:Lorg/apache/jackrabbit/webdav/lock/Scope;

    return-object v0
.end method

.method public getType()Lorg/apache/jackrabbit/webdav/lock/Type;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/apache/jackrabbit/webdav/transaction/TxLockEntry;->TRANSACTION:Lorg/apache/jackrabbit/webdav/lock/Type;

    return-object v0
.end method
