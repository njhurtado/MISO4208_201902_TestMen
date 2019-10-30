.class public Lcom/owncloud/android/lib/common/SingleSessionManager;
.super Ljava/lang/Object;
.source "SingleSessionManager.java"

# interfaces
.implements Lcom/owncloud/android/lib/common/OwnCloudClientManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClientsWithKnownUsername:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/owncloud/android/lib/common/OwnCloudClient;",
            ">;"
        }
    .end annotation
.end field

.field private mClientsWithUnknownUsername:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/owncloud/android/lib/common/OwnCloudClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/owncloud/android/lib/common/SingleSessionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/owncloud/android/lib/common/SingleSessionManager;->mClientsWithKnownUsername:Ljava/util/concurrent/ConcurrentMap;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/owncloud/android/lib/common/SingleSessionManager;->mClientsWithUnknownUsername:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private keepCredentialsUpdated(Lcom/owncloud/android/lib/common/OwnCloudAccount;Lcom/owncloud/android/lib/common/OwnCloudClient;)V
    .locals 3
    .param p1, "account"    # Lcom/owncloud/android/lib/common/OwnCloudAccount;
    .param p2, "reusedClient"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v0

    .line 220
    .local v0, "recentCredentials":Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/owncloud/android/lib/common/OwnCloudCredentials;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {p2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v2

    invoke-interface {v2}, Lcom/owncloud/android/lib/common/OwnCloudCredentials;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {p2, v0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setCredentials(Lcom/owncloud/android/lib/common/OwnCloudCredentials;)V

    .line 225
    :cond_0
    return-void
.end method

.method private keepUriUpdated(Lcom/owncloud/android/lib/common/OwnCloudAccount;Lcom/owncloud/android/lib/common/OwnCloudClient;)V
    .locals 2
    .param p1, "account"    # Lcom/owncloud/android/lib/common/OwnCloudAccount;
    .param p2, "reusedClient"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    .line 231
    .local v0, "recentUri":Landroid/net/Uri;
    invoke-virtual {p2}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-virtual {p2, v0}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setBaseUri(Landroid/net/Uri;)V

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public getClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;Landroid/content/Context;)Lcom/owncloud/android/lib/common/OwnCloudClient;
    .locals 9
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
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 72
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    const-string v5, "getClientFor starting "

    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    if-nez p1, :cond_1

    .line 76
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot get an OwnCloudClient for a null account"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_1
    const/4 v1, 0x0

    .line 80
    .local v1, "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getName()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "accountName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v4

    if-nez v4, :cond_7

    const-string v3, ""

    .line 88
    .local v3, "sessionName":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 89
    iget-object v4, p0, Lcom/owncloud/android/lib/common/SingleSessionManager;->mClientsWithKnownUsername:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    check-cast v1, Lcom/owncloud/android/lib/common/OwnCloudClient;

    .line 91
    .restart local v1    # "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    :cond_2
    const/4 v2, 0x0

    .line 92
    .local v2, "reusingKnown":Z
    if-nez v1, :cond_9

    .line 93
    if-eqz v0, :cond_8

    .line 94
    iget-object v4, p0, Lcom/owncloud/android/lib/common/SingleSessionManager;->mClientsWithUnknownUsername:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    check-cast v1, Lcom/owncloud/android/lib/common/OwnCloudClient;

    .line 95
    .restart local v1    # "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    if-eqz v1, :cond_4

    .line 96
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reusing client for session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_3
    iget-object v4, p0, Lcom/owncloud/android/lib/common/SingleSessionManager;->mClientsWithKnownUsername:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 101
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moved client to account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_4
    :goto_1
    if-nez v1, :cond_c

    .line 117
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getBaseUri()Landroid/net/Uri;

    move-result-object v4

    .line 118
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    .line 116
    invoke-static {v4, v5, v6}, Lcom/owncloud/android/lib/common/OwnCloudClientFactory;->createOwnCloudClient(Landroid/net/Uri;Landroid/content/Context;Z)Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v4

    const-string v5, "compatibility"

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 123
    invoke-static {v0, v1, p2}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->restoreCookies(Ljava/lang/String;Lcom/owncloud/android/lib/common/OwnCloudClient;Landroid/content/Context;)V

    .line 125
    invoke-virtual {p1, p2}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->loadCredentials(Landroid/content/Context;)V

    .line 126
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setCredentials(Lcom/owncloud/android/lib/common/OwnCloudCredentials;)V

    .line 127
    if-eqz v0, :cond_b

    .line 128
    iget-object v4, p0, Lcom/owncloud/android/lib/common/SingleSessionManager;->mClientsWithKnownUsername:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 130
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new client for account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_5
    :goto_2
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 148
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    const-string v5, "getClientFor finishing "

    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_6
    return-object v1

    .line 83
    .end local v2    # "reusingKnown":Z
    .end local v3    # "sessionName":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getBaseUri()Landroid/net/Uri;

    move-result-object v4

    .line 84
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v5

    invoke-interface {v5}, Lcom/owncloud/android/lib/common/OwnCloudCredentials;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->buildAccountName(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 105
    .restart local v2    # "reusingKnown":Z
    .restart local v3    # "sessionName":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/owncloud/android/lib/common/SingleSessionManager;->mClientsWithUnknownUsername:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    check-cast v1, Lcom/owncloud/android/lib/common/OwnCloudClient;

    .restart local v1    # "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    goto :goto_1

    .line 108
    :cond_9
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 109
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reusing client for account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 134
    :cond_b
    iget-object v4, p0, Lcom/owncloud/android/lib/common/SingleSessionManager;->mClientsWithUnknownUsername:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 136
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new client for session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 140
    :cond_c
    if-nez v2, :cond_d

    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 141
    sget-object v4, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reusing client for session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/owncloud/android/lib/common/utils/Log_OC;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_d
    invoke-direct {p0, p1, v1}, Lcom/owncloud/android/lib/common/SingleSessionManager;->keepCredentialsUpdated(Lcom/owncloud/android/lib/common/OwnCloudAccount;Lcom/owncloud/android/lib/common/OwnCloudClient;)V

    .line 144
    invoke-direct {p0, p1, v1}, Lcom/owncloud/android/lib/common/SingleSessionManager;->keepUriUpdated(Lcom/owncloud/android/lib/common/OwnCloudAccount;Lcom/owncloud/android/lib/common/OwnCloudClient;)V

    goto/16 :goto_2
.end method

.method public removeClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;)Lcom/owncloud/android/lib/common/OwnCloudClient;
    .locals 7
    .param p1, "account"    # Lcom/owncloud/android/lib/common/OwnCloudAccount;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 157
    sget-object v3, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    sget-object v3, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    const-string v4, "removeClientFor starting "

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    if-nez p1, :cond_2

    move-object v1, v2

    .line 186
    :cond_1
    :goto_0
    return-object v1

    .line 165
    :cond_2
    const/4 v1, 0x0

    .line 166
    .local v1, "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    invoke-virtual {p1}, Lcom/owncloud/android/lib/common/OwnCloudAccount;->getName()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "accountName":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 168
    iget-object v3, p0, Lcom/owncloud/android/lib/common/SingleSessionManager;->mClientsWithKnownUsername:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    check-cast v1, Lcom/owncloud/android/lib/common/OwnCloudClient;

    .line 169
    .restart local v1    # "client":Lcom/owncloud/android/lib/common/OwnCloudClient;
    if-eqz v1, :cond_3

    .line 170
    sget-object v2, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    sget-object v2, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed client for account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/owncloud/android/lib/common/utils/Log_OC;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_3
    sget-object v3, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    sget-object v3, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No client tracked for  account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_4
    iget-object v3, p0, Lcom/owncloud/android/lib/common/SingleSessionManager;->mClientsWithUnknownUsername:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 183
    sget-object v3, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 184
    sget-object v3, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    const-string v4, "removeClientFor finishing "

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v1, v2

    .line 186
    goto :goto_0
.end method

.method public saveAllClients(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
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
    const/4 v5, 0x3

    .line 196
    sget-object v3, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    sget-object v3, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    const-string v4, "Saving sessions... "

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/owncloud/android/lib/common/SingleSessionManager;->mClientsWithKnownUsername:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 201
    .local v2, "accountNames":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 202
    .local v1, "accountName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 203
    .local v0, "account":Landroid/accounts/Account;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "accountName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 205
    .restart local v1    # "accountName":Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    .end local v0    # "account":Landroid/accounts/Account;
    invoke-direct {v0, v1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .restart local v0    # "account":Landroid/accounts/Account;
    iget-object v3, p0, Lcom/owncloud/android/lib/common/SingleSessionManager;->mClientsWithKnownUsername:Ljava/util/concurrent/ConcurrentMap;

    .line 207
    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/owncloud/android/lib/common/OwnCloudClient;

    .line 206
    invoke-static {v3, v0, p1}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->saveClient(Lcom/owncloud/android/lib/common/OwnCloudClient;Landroid/accounts/Account;Landroid/content/Context;)V

    goto :goto_0

    .line 212
    :cond_1
    sget-object v3, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    sget-object v3, Lcom/owncloud/android/lib/common/SingleSessionManager;->TAG:Ljava/lang/String;

    const-string v4, "All sessions saved"

    invoke-static {v3, v4}, Lcom/owncloud/android/lib/common/utils/Log_OC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_2
    return-void
.end method
