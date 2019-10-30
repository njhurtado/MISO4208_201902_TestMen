.class public Lcom/owncloud/android/lib/common/OwnCloudAccount;
.super Ljava/lang/Object;
.source "OwnCloudAccount.java"


# instance fields
.field private mBaseUri:Landroid/net/Uri;

.field private mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

.field private mDisplayName:Ljava/lang/String;

.field private mSavedAccount:Landroid/accounts/Account;

.field private mSavedAccountName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Landroid/content/Context;)V
    .locals 6
    .param p1, "savedAccount"    # Landroid/accounts/Account;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameter \'savedAccount\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_0
    if-nez p2, :cond_1

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameter \'context\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_1
    iput-object p1, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccount:Landroid/accounts/Account;

    .line 73
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccountName:Ljava/lang/String;

    .line 74
    iput-object v5, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    .line 76
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 77
    .local v0, "ama":Landroid/accounts/AccountManager;
    iget-object v2, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccount:Landroid/accounts/Account;

    const-string v3, "oc_base_url"

    invoke-virtual {v0, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "baseUrl":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 79
    new-instance v2, Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;

    iget-object v3, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccount:Landroid/accounts/Account;

    const-string v4, "Account not found"

    invoke-direct {v2, v3, v4, v5}, Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccount:Landroid/accounts/Account;

    invoke-static {p2, v2}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->getBaseUrlForAccount(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mBaseUri:Landroid/net/Uri;

    .line 82
    iget-object v2, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccount:Landroid/accounts/Account;

    const-string v3, "oc_display_name"

    invoke-virtual {v0, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mDisplayName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/owncloud/android/lib/common/OwnCloudCredentials;)V
    .locals 3
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "credentials"    # Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter \'baseUri\' cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    iput-object v1, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccount:Landroid/accounts/Account;

    .line 97
    iput-object v1, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccountName:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mBaseUri:Landroid/net/Uri;

    .line 99
    if-eqz p2, :cond_2

    .line 100
    .end local p2    # "credentials":Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    :goto_0
    iput-object p2, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    .line 101
    iget-object v1, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    invoke-interface {v1}, Lcom/owncloud/android/lib/common/OwnCloudCredentials;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "username":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 103
    iget-object v1, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mBaseUri:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->buildAccountName(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccountName:Ljava/lang/String;

    .line 105
    :cond_1
    return-void

    .line 100
    .end local v0    # "username":Ljava/lang/String;
    .restart local p2    # "credentials":Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    :cond_2
    invoke-static {}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->getAnonymousCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mDisplayName:Ljava/lang/String;

    .line 154
    :goto_0
    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    invoke-interface {v0}, Lcom/owncloud/android/lib/common/OwnCloudCredentials;->getUsername()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccount:Landroid/accounts/Account;

    invoke-static {v0}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->getUsernameForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public loadCredentials(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'context\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mSavedAccount:Landroid/accounts/Account;

    invoke-static {p1, v0}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->getCredentialsForAccount(Landroid/content/Context;Landroid/accounts/Account;)Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v0

    iput-object v0, p0, Lcom/owncloud/android/lib/common/OwnCloudAccount;->mCredentials:Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    .line 128
    :cond_1
    return-void
.end method
