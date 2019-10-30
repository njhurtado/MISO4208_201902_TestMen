.class public interface abstract Lorg/apache/jackrabbit/webdav/transaction/TransactionDavServletRequest;
.super Ljava/lang/Object;
.source "TransactionDavServletRequest.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavServletRequest;


# virtual methods
.method public abstract getTransactionId()Ljava/lang/String;
.end method

.method public abstract getTransactionInfo()Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
