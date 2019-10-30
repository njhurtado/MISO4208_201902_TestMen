.class public Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;
.super Ljava/lang/Object;
.source "OwnCloudClientManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;
    }
.end annotation


# static fields
.field private static sDefaultPolicy:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

.field private static sDefaultSingleton:Lcom/owncloud/android/lib/common/OwnCloudClientManager;

.field private static sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;->ALWAYS_NEW_CLIENT:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    sput-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->sDefaultPolicy:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static defaultSingletonMustBeUpdated(Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;)Z
    .locals 3
    .param p0, "policy"    # Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    sget-object v2, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->sDefaultSingleton:Lcom/owncloud/android/lib/common/OwnCloudClientManager;

    if-nez v2, :cond_1

    move v0, v1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    sget-object v2, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;->ALWAYS_NEW_CLIENT:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    if-ne p0, v2, :cond_2

    sget-object v2, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->sDefaultSingleton:Lcom/owncloud/android/lib/common/OwnCloudClientManager;

    instance-of v2, v2, Lcom/owncloud/android/lib/common/SimpleFactoryManager;

    if-eqz v2, :cond_0

    .line 97
    :cond_2
    sget-object v2, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;->SINGLE_SESSION_PER_ACCOUNT:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    if-ne p0, v2, :cond_3

    sget-object v2, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->sDefaultSingleton:Lcom/owncloud/android/lib/common/OwnCloudClientManager;

    instance-of v2, v2, Lcom/owncloud/android/lib/common/SingleSessionManager;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static getDefaultPolicy()Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->sDefaultPolicy:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    return-object v0
.end method

.method public static getDefaultSingleton()Lcom/owncloud/android/lib/common/OwnCloudClientManager;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->sDefaultSingleton:Lcom/owncloud/android/lib/common/OwnCloudClientManager;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->newDefaultOwnCloudClientManager()Lcom/owncloud/android/lib/common/OwnCloudClientManager;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->sDefaultSingleton:Lcom/owncloud/android/lib/common/OwnCloudClientManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->sDefaultSingleton:Lcom/owncloud/android/lib/common/OwnCloudClientManager;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->sUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static newDefaultOwnCloudClientManager()Lcom/owncloud/android/lib/common/OwnCloudClientManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->sDefaultPolicy:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    invoke-static {v0}, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->newOwnCloudClientManager(Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;)Lcom/owncloud/android/lib/common/OwnCloudClientManager;

    move-result-object v0

    return-object v0
.end method

.method public static newOwnCloudClientManager(Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;)Lcom/owncloud/android/lib/common/OwnCloudClientManager;
    .locals 2
    .param p0, "policy"    # Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    .prologue
    .line 45
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$1;->$SwitchMap$com$owncloud$android$lib$common$OwnCloudClientManagerFactory$Policy:[I

    invoke-virtual {p0}, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown policy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    new-instance v0, Lcom/owncloud/android/lib/common/SimpleFactoryManager;

    invoke-direct {v0}, Lcom/owncloud/android/lib/common/SimpleFactoryManager;-><init>()V

    .line 53
    :goto_0
    return-object v0

    .line 50
    :pswitch_1
    new-instance v0, Lcom/owncloud/android/lib/common/SingleSessionManager;

    invoke-direct {v0}, Lcom/owncloud/android/lib/common/SingleSessionManager;-><init>()V

    goto :goto_0

    .line 53
    :pswitch_2
    new-instance v0, Lcom/owncloud/android/lib/common/DynamicSessionManager;

    invoke-direct {v0}, Lcom/owncloud/android/lib/common/DynamicSessionManager;-><init>()V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setDefaultPolicy(Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;)V
    .locals 2
    .param p0, "policy"    # Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default policy cannot be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->defaultSingletonMustBeUpdated(Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->sDefaultSingleton:Lcom/owncloud/android/lib/common/OwnCloudClientManager;

    .line 78
    :cond_1
    sput-object p0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->sDefaultPolicy:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    .line 79
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 82
    sput-object p0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;->sUserAgent:Ljava/lang/String;

    .line 83
    return-void
.end method
