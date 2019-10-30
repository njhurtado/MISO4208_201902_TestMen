.class public interface abstract Lcom/owncloud/android/lib/common/OwnCloudClientManager;
.super Ljava/lang/Object;
.source "OwnCloudClientManager.java"


# virtual methods
.method public abstract getClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;Landroid/content/Context;)Lcom/owncloud/android/lib/common/OwnCloudClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;,
            Landroid/accounts/OperationCanceledException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract removeClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;)Lcom/owncloud/android/lib/common/OwnCloudClient;
.end method

.method public abstract saveAllClients(Landroid/content/Context;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation
.end method
