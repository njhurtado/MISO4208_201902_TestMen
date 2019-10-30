.class public interface abstract Lorg/apache/jackrabbit/webdav/transaction/TransactionResource;
.super Ljava/lang/Object;
.source "TransactionResource.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavResource;


# static fields
.field public static final METHODS:Ljava/lang/String; = ""


# virtual methods
.method public abstract getTransactionId()Ljava/lang/String;
.end method

.method public abstract init(Lorg/apache/jackrabbit/webdav/transaction/TxLockManager;Ljava/lang/String;)V
.end method

.method public abstract unlock(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
