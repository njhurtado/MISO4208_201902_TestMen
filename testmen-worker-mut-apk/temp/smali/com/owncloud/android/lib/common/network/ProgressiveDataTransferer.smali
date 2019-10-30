.class public interface abstract Lcom/owncloud/android/lib/common/network/ProgressiveDataTransferer;
.super Ljava/lang/Object;
.source "ProgressiveDataTransferer.java"


# virtual methods
.method public abstract addDatatransferProgressListener(Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;)V
.end method

.method public abstract addDatatransferProgressListeners(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeDatatransferProgressListener(Lcom/owncloud/android/lib/common/network/OnDatatransferProgressListener;)V
.end method
