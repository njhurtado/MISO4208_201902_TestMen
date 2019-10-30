.class public interface abstract Lorg/apache/jackrabbit/webdav/transaction/TxLockManager;
.super Ljava/lang/Object;
.source "TxLockManager.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/lock/LockManager;


# virtual methods
.method public abstract getLock(Lorg/apache/jackrabbit/webdav/lock/Type;Lorg/apache/jackrabbit/webdav/lock/Scope;Lorg/apache/jackrabbit/webdav/transaction/TransactionResource;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
.end method

.method public abstract releaseLock(Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/transaction/TransactionResource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
