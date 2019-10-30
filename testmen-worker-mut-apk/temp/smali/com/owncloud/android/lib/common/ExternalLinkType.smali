.class public final enum Lcom/owncloud/android/lib/common/ExternalLinkType;
.super Ljava/lang/Enum;
.source "ExternalLinkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/owncloud/android/lib/common/ExternalLinkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/owncloud/android/lib/common/ExternalLinkType;

.field public static final enum LINK:Lcom/owncloud/android/lib/common/ExternalLinkType;

.field public static final enum QUOTA:Lcom/owncloud/android/lib/common/ExternalLinkType;

.field public static final enum SETTINGS:Lcom/owncloud/android/lib/common/ExternalLinkType;

.field public static final enum UNKNOWN:Lcom/owncloud/android/lib/common/ExternalLinkType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/owncloud/android/lib/common/ExternalLinkType;

    const-string v1, "LINK"

    invoke-direct {v0, v1, v2}, Lcom/owncloud/android/lib/common/ExternalLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owncloud/android/lib/common/ExternalLinkType;->LINK:Lcom/owncloud/android/lib/common/ExternalLinkType;

    new-instance v0, Lcom/owncloud/android/lib/common/ExternalLinkType;

    const-string v1, "SETTINGS"

    invoke-direct {v0, v1, v3}, Lcom/owncloud/android/lib/common/ExternalLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owncloud/android/lib/common/ExternalLinkType;->SETTINGS:Lcom/owncloud/android/lib/common/ExternalLinkType;

    new-instance v0, Lcom/owncloud/android/lib/common/ExternalLinkType;

    const-string v1, "QUOTA"

    invoke-direct {v0, v1, v4}, Lcom/owncloud/android/lib/common/ExternalLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owncloud/android/lib/common/ExternalLinkType;->QUOTA:Lcom/owncloud/android/lib/common/ExternalLinkType;

    new-instance v0, Lcom/owncloud/android/lib/common/ExternalLinkType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/owncloud/android/lib/common/ExternalLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owncloud/android/lib/common/ExternalLinkType;->UNKNOWN:Lcom/owncloud/android/lib/common/ExternalLinkType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/owncloud/android/lib/common/ExternalLinkType;

    sget-object v1, Lcom/owncloud/android/lib/common/ExternalLinkType;->LINK:Lcom/owncloud/android/lib/common/ExternalLinkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/owncloud/android/lib/common/ExternalLinkType;->SETTINGS:Lcom/owncloud/android/lib/common/ExternalLinkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/owncloud/android/lib/common/ExternalLinkType;->QUOTA:Lcom/owncloud/android/lib/common/ExternalLinkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/owncloud/android/lib/common/ExternalLinkType;->UNKNOWN:Lcom/owncloud/android/lib/common/ExternalLinkType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/owncloud/android/lib/common/ExternalLinkType;->$VALUES:[Lcom/owncloud/android/lib/common/ExternalLinkType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/owncloud/android/lib/common/ExternalLinkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/owncloud/android/lib/common/ExternalLinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/owncloud/android/lib/common/ExternalLinkType;

    return-object v0
.end method

.method public static values()[Lcom/owncloud/android/lib/common/ExternalLinkType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/owncloud/android/lib/common/ExternalLinkType;->$VALUES:[Lcom/owncloud/android/lib/common/ExternalLinkType;

    invoke-virtual {v0}, [Lcom/owncloud/android/lib/common/ExternalLinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/owncloud/android/lib/common/ExternalLinkType;

    return-object v0
.end method
