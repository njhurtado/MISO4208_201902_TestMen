.class public Lcom/owncloud/android/lib/common/DynamicSessionManager;
.super Ljava/lang/Object;
.source "DynamicSessionManager.java"

# interfaces
.implements Lcom/owncloud/android/lib/common/OwnCloudClientManager;


# instance fields
.field private mSimpleFactoryManager:Lcom/owncloud/android/lib/common/SimpleFactoryManager;

.field private mSingleSessionManager:Lcom/owncloud/android/lib/common/SingleSessionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/owncloud/android/lib/common/SimpleFactoryManager;

    invoke-direct {v0}, Lcom/owncloud/android/lib/common/SimpleFactoryManager;-><init>()V

    iput-object v0, p0, Lcom/owncloud/android/lib/common/DynamicSessionManager;->mSimpleFactoryManager:Lcom/owncloud/android/lib/common/SimpleFactoryManager;

    .line 25
    new-instance v0, Lcom/owncloud/android/lib/common/SingleSessionManager;

    invoke-direct {v0}, Lcom/owncloud/android/lib/common/SingleSessionManager;-><init>()V

    iput-object v0, p0, Lcom/owncloud/android/lib/common/DynamicSessionManager;->mSingleSessionManager:Lcom/owncloud/android/lib/common/SingleSessionManager;

    return-void
.end method


# virtual methods
.method public getClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;Landroid/content/Context;)Lcom/owncloud/android/lib/common/OwnCloudClient;
    .locals 2
    .param p1, "account"    # Lcom/owncloud/android/lib/common/OwnCloudAccount;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;,
            Landroid/accounts/OperationCanceledException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "ownCloudVersion":Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getSavedAccount()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getSavedAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 34
    invoke-static {v1, p2}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->getServerVersionForAccount(Landroid/accounts/Account;Landroid/content/Context;)Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;

    move-result-object v0

    .line 39
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/owncloud/android/lib/resources/status/OwnCloudVersion;->isPreemptiveAuthenticationPreferred()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/owncloud/android/lib/common/DynamicSessionManager;->mSingleSessionManager:Lcom/owncloud/android/lib/common/SingleSessionManager;

    invoke-virtual {v1, p1, p2}, Lcom/owncloud/android/lib/common/SingleSessionManager;->getClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;Landroid/content/Context;)Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/owncloud/android/lib/common/DynamicSessionManager;->mSimpleFactoryManager:Lcom/owncloud/android/lib/common/SimpleFactoryManager;

    invoke-virtual {v1, p1, p2}, Lcom/owncloud/android/lib/common/SimpleFactoryManager;->getClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;Landroid/content/Context;)Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v1

    goto :goto_0
.end method

.method public removeClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;)Lcom/owncloud/android/lib/common/OwnCloudClient;
    .locals 3
    .param p1, "account"    # Lcom/owncloud/android/lib/common/OwnCloudAccount;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/owncloud/android/lib/common/DynamicSessionManager;->mSimpleFactoryManager:Lcom/owncloud/android/lib/common/SimpleFactoryManager;

    invoke-virtual {v2, p1}, Lcom/owncloud/android/lib/common/SimpleFactoryManager;->removeClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;)Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v0

    .line 49
    .local v0, "clientRemovedFromFactoryManager":Lcom/owncloud/android/lib/common/OwnCloudClient;
    iget-object v2, p0, Lcom/owncloud/android/lib/common/DynamicSessionManager;->mSingleSessionManager:Lcom/owncloud/android/lib/common/SingleSessionManager;

    invoke-virtual {v2, p1}, Lcom/owncloud/android/lib/common/SingleSessionManager;->removeClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;)Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v1

    .line 50
    .local v1, "clientRemovedFromSingleSessionManager":Lcom/owncloud/android/lib/common/OwnCloudClient;
    if-eqz v1, :cond_0

    .line 53
    .end local v1    # "clientRemovedFromSingleSessionManager":Lcom/owncloud/android/lib/common/OwnCloudClient;
    :goto_0
    return-object v1

    .restart local v1    # "clientRemovedFromSingleSessionManager":Lcom/owncloud/android/lib/common/OwnCloudClient;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public saveAllClients(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/owncloud/android/lib/common/DynamicSessionManager;->mSimpleFactoryManager:Lcom/owncloud/android/lib/common/SimpleFactoryManager;

    invoke-virtual {v0, p1, p2}, Lcom/owncloud/android/lib/common/SimpleFactoryManager;->saveAllClients(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/owncloud/android/lib/common/DynamicSessionManager;->mSingleSessionManager:Lcom/owncloud/android/lib/common/SingleSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/owncloud/android/lib/common/SingleSessionManager;->saveAllClients(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    return-void
.end method
