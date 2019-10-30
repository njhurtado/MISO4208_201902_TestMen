.class public Lcom/owncloud/android/lib/common/SimpleFactoryManager;
.super Ljava/lang/Object;
.source "SimpleFactoryManager.java"

# interfaces
.implements Lcom/owncloud/android/lib/common/OwnCloudClientManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/owncloud/android/lib/common/SimpleFactoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/SimpleFactoryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;Landroid/content/Context;)Lcom/owncloud/android/lib/common/OwnCloudClient;
    .locals 5
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
    .line 47
    sget-object v1, Lcom/owncloud/android/lib/common/SimpleFactoryManager;->TAG:Ljava/lang/String;

    const-string v2, "getClientFor(OwnCloudAccount ... : "

    invoke-static {v1, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    .line 49
    invoke-static {v1, v2, v3}, Lcom/owncloud/android/lib/common/OwnCloudClientFactory;->createOwnCloudClient(Landroid/net/Uri;Landroid/content/Context;Z)Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v0

    .line 54
    .local v0, "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    sget-object v2, Lcom/owncloud/android/lib/common/SimpleFactoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    new client {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 55
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getName()Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v2, v1}, Lcom/owncloud/android/lib/common/utils/Log_OC;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p1, p2}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->loadCredentials(Landroid/content/Context;)V

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setCredentials(Lcom/owncloud/android/lib/common/OwnCloudCredentials;)V

    .line 65
    return-object v0

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    const-string v4, ""

    invoke-static {v1, v4}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->buildAccountName(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public removeClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;)Lcom/owncloud/android/lib/common/OwnCloudClient;
    .locals 1
    .param p1, "account"    # Lcom/owncloud/android/lib/common/OwnCloudAccount;

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveAllClients(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 77
    return-void
.end method
