.class public abstract Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.super Ljava/lang/Object;
.source "RemoteOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final OCS_API_HEADER:Ljava/lang/String; = "OCS-APIREQUEST"

.field public static final OCS_API_HEADER_VALUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mCallerActivity:Landroid/app/Activity;

.field private mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;

.field private mListenerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    .line 67
    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    .line 70
    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;

    .line 73
    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mListener:Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;

    .line 76
    iput-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/owncloud/android/lib/common/operations/RemoteOperation;)Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;
    .locals 1
    .param p0, "x0"    # Lcom/owncloud/android/lib/common/operations/RemoteOperation;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mListener:Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/accounts/Account;Landroid/content/Context;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Trying to execute a remote operation with a NULL Account"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_0
    if-nez p2, :cond_1

    .line 106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Trying to execute a remote operation with a NULL Context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_1
    iput-object p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    .line 109
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    .line 111
    :try_start_0
    new-instance v1, Lcom/owncloud/android/lib/common/OwnCloudAccount;

    iget-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/owncloud/android/lib/common/OwnCloudAccount;-><init>(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 112
    .local v1, "ocAccount":Lcom/owncloud/android/lib/common/OwnCloudAccount;
    invoke-static {}, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->getDefaultSingleton()Lcom/owncloud/android/lib/common/OwnCloudClientManager;

    move-result-object v2

    iget-object v3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    .line 113
    invoke-interface {v2, v1, v3}, Lcom/owncloud/android/lib/common/OwnCloudClientManager;->getClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;Landroid/content/Context;)Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v2

    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    iget-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;

    invoke-virtual {p0, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v2

    .end local v1    # "ocAccount":Lcom/owncloud/android/lib/common/OwnCloudAccount;
    :goto_0
    return-object v2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while trying to access to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    new-instance v2, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v2, v0}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public execute(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 2
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to execute a remote operation with a NULL OwnCloudClient"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;

    .line 136
    invoke-virtual {p0, p1}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/accounts/Account;Landroid/content/Context;Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;Landroid/os/Handler;)Ljava/lang/Thread;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;
    .param p4, "listenerHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to execute a remote operation with a NULL Account"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_0
    if-nez p2, :cond_1

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to execute a remote operation with a NULL Context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_1
    iput-object p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    .line 206
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    .line 207
    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mCallerActivity:Landroid/app/Activity;

    .line 208
    iput-object v2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;

    .line 211
    iput-object p3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mListener:Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;

    .line 213
    iput-object p4, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mListenerHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 216
    .local v0, "runnerThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 217
    return-object v0
.end method

.method public execute(Landroid/accounts/Account;Landroid/content/Context;Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;Landroid/os/Handler;Landroid/app/Activity;)Ljava/lang/Thread;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;
    .param p4, "listenerHandler"    # Landroid/os/Handler;
    .param p5, "callerActivity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to execute a remote operation with a NULL Account"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    if-nez p2, :cond_1

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to execute a remote operation with a NULL Context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    .line 168
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    .line 169
    iput-object p5, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mCallerActivity:Landroid/app/Activity;

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;

    .line 172
    iput-object p3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mListener:Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;

    .line 174
    iput-object p4, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mListenerHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 177
    .local v0, "runnerThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 178
    return-object v0
.end method

.method public execute(Lcom/owncloud/android/lib/common/OwnCloudClient;Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;Landroid/os/Handler;)Ljava/lang/Thread;
    .locals 3
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;
    .param p2, "listener"    # Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;
    .param p3, "listenerHandler"    # Landroid/os/Handler;

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to execute a remote operation with a NULL OwnCloudClient"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_0
    iput-object p1, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;

    .line 239
    if-nez p2, :cond_1

    .line 240
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to execute a remote operation asynchronously without a listener to notiy the result"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_1
    iput-object p2, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mListener:Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;

    .line 246
    if-nez p3, :cond_2

    .line 247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to execute a remote operation asynchronously without a handler to the listener\'s thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_2
    iput-object p3, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mListenerHandler:Landroid/os/Handler;

    .line 253
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 254
    .local v0, "runnerThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 255
    return-object v0
.end method

.method public final getClient()Lcom/owncloud/android/lib/common/OwnCloudClient;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;

    return-object v0
.end method

.method protected abstract run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
.end method

.method public final run()V
    .locals 11

    .prologue
    .line 268
    const/4 v5, 0x0

    .line 269
    .local v5, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/4 v4, 0x0

    .line 272
    .local v4, "repeat":Z
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;

    if-nez v7, :cond_1

    .line 273
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_7

    .line 275
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mCallerActivity:Landroid/app/Activity;

    if-eqz v7, :cond_6

    .line 276
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    iget-object v8, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mCallerActivity:Landroid/app/Activity;

    invoke-static {v7, v8, v9}, Lcom/owncloud/android/lib/common/OwnCloudClientFactory;->createOwnCloudClient(Landroid/accounts/Account;Landroid/content/Context;Landroid/app/Activity;)Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v7

    iput-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AccountsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 302
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 303
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;

    invoke-virtual {p0, v7}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v5

    .line 305
    :cond_2
    const/4 v4, 0x0

    .line 308
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mCallerActivity:Landroid/app/Activity;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_3

    .line 309
    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->UNAUTHORIZED:Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    .line 310
    invoke-virtual {v5}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getCode()Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult$ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 314
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;

    invoke-virtual {v7}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v1

    .line 315
    .local v1, "cred":Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    if-eqz v1, :cond_3

    .line 317
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 318
    .local v0, "am":Landroid/accounts/AccountManager;
    invoke-interface {v1}, Lcom/owncloud/android/lib/common/OwnCloudCredentials;->authTokenExpires()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 319
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 321
    invoke-interface {v1}, Lcom/owncloud/android/lib/common/OwnCloudCredentials;->getAuthToken()Ljava/lang/String;

    move-result-object v8

    .line 319
    invoke-virtual {v0, v7, v8}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_1
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;

    .line 329
    const/4 v4, 0x1

    .line 330
    const/4 v5, 0x0

    .line 334
    .end local v0    # "am":Landroid/accounts/AccountManager;
    .end local v1    # "cred":Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    :cond_3
    if-nez v4, :cond_0

    .line 336
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_4

    .line 338
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;

    iget-object v8, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    invoke-static {v7, v8, v9}, Lcom/owncloud/android/lib/common/accounts/AccountUtils;->saveClient(Lcom/owncloud/android/lib/common/OwnCloudClient;Landroid/accounts/Account;Landroid/content/Context;)V

    .line 341
    :cond_4
    move-object v6, v5

    .line 342
    .local v6, "resultToSend":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mListenerHandler:Landroid/os/Handler;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mListener:Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;

    if-eqz v7, :cond_5

    .line 343
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mListenerHandler:Landroid/os/Handler;

    new-instance v8, Lcom/owncloud/android/lib/common/operations/RemoteOperation$1;

    invoke-direct {v8, p0, v6}, Lcom/owncloud/android/lib/common/operations/RemoteOperation$1;-><init>(Lcom/owncloud/android/lib/common/operations/RemoteOperation;Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    :cond_5
    return-void

    .line 280
    .end local v6    # "resultToSend":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_6
    :try_start_1
    new-instance v3, Lcom/owncloud/android/lib/common/OwnCloudAccount;

    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    iget-object v8, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7, v8}, Lcom/owncloud/android/lib/common/OwnCloudAccount;-><init>(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 281
    .local v3, "ocAccount":Lcom/owncloud/android/lib/common/OwnCloudAccount;
    invoke-static {}, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->getDefaultSingleton()Lcom/owncloud/android/lib/common/OwnCloudClientManager;

    move-result-object v7

    iget-object v8, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mContext:Landroid/content/Context;

    .line 282
    invoke-interface {v7, v3, v8}, Lcom/owncloud/android/lib/common/OwnCloudClientManager;->getClientFor(Lcom/owncloud/android/lib/common/OwnCloudAccount;Landroid/content/Context;)Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v7

    iput-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mClient:Lcom/owncloud/android/lib/common/OwnCloudClient;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AccountsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 291
    .end local v3    # "ocAccount":Lcom/owncloud/android/lib/common/OwnCloudAccount;
    :catch_0
    move-exception v2

    .line 292
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while trying to access to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/accounts/AccountsException;

    const-string v10, "I/O exception while trying to authorize the account"

    invoke-direct {v9, v10, v2}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v7, v8, v9}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    new-instance v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    invoke-direct {v5, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V

    .line 300
    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_0

    .line 286
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_2
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Trying to run a remote operation asynchronously with no client instance or account"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/accounts/AccountsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 297
    :catch_1
    move-exception v2

    .line 298
    .local v2, "e":Landroid/accounts/AccountsException;
    sget-object v7, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while trying to access to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/owncloud/android/lib/common/utils/Log_OC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    new-instance v5, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .end local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    invoke-direct {v5, v2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V

    .restart local v5    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto/16 :goto_0

    .line 324
    .end local v2    # "e":Landroid/accounts/AccountsException;
    .restart local v0    # "am":Landroid/accounts/AccountManager;
    .restart local v1    # "cred":Lcom/owncloud/android/lib/common/OwnCloudCredentials;
    :cond_8
    iget-object v7, p0, Lcom/owncloud/android/lib/common/operations/RemoteOperation;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->clearPassword(Landroid/accounts/Account;)V

    goto/16 :goto_1
.end method
