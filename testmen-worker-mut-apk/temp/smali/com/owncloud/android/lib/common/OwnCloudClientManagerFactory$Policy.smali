.class public final enum Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;
.super Ljava/lang/Enum;
.source "OwnCloudClientManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

.field public static final enum ALWAYS_NEW_CLIENT:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

.field public static final enum SINGLE_SESSION_PER_ACCOUNT:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

.field public static final enum SINGLE_SESSION_PER_ACCOUNT_IF_SERVER_SUPPORTS_SERVER_MONITORING:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    const-string v1, "ALWAYS_NEW_CLIENT"

    invoke-direct {v0, v1, v2}, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;->ALWAYS_NEW_CLIENT:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    .line 30
    new-instance v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    const-string v1, "SINGLE_SESSION_PER_ACCOUNT"

    invoke-direct {v0, v1, v3}, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;->SINGLE_SESSION_PER_ACCOUNT:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    .line 31
    new-instance v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    const-string v1, "SINGLE_SESSION_PER_ACCOUNT_IF_SERVER_SUPPORTS_SERVER_MONITORING"

    invoke-direct {v0, v1, v4}, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;->SINGLE_SESSION_PER_ACCOUNT_IF_SERVER_SUPPORTS_SERVER_MONITORING:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    sget-object v1, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;->ALWAYS_NEW_CLIENT:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;->SINGLE_SESSION_PER_ACCOUNT:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;->SINGLE_SESSION_PER_ACCOUNT_IF_SERVER_SUPPORTS_SERVER_MONITORING:Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;->$VALUES:[Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    return-object v0
.end method

.method public static values()[Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;->$VALUES:[Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    invoke-virtual {v0}, [Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/owncloud/android/lib/common/OwnCloudClientManagerFactory$Policy;

    return-object v0
.end method
