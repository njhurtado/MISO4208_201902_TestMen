.class public final enum Lcom/dropbox/core/v2/users/AccountType;
.super Ljava/lang/Enum;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/users/AccountType$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/users/AccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/users/AccountType;

.field public static final enum BASIC:Lcom/dropbox/core/v2/users/AccountType;

.field public static final enum BUSINESS:Lcom/dropbox/core/v2/users/AccountType;

.field public static final enum PRO:Lcom/dropbox/core/v2/users/AccountType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/dropbox/core/v2/users/AccountType;

    const-string v1, "BASIC"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/users/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/users/AccountType;->BASIC:Lcom/dropbox/core/v2/users/AccountType;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/users/AccountType;

    const-string v1, "PRO"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/users/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/users/AccountType;->PRO:Lcom/dropbox/core/v2/users/AccountType;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/users/AccountType;

    const-string v1, "BUSINESS"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/users/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/users/AccountType;->BUSINESS:Lcom/dropbox/core/v2/users/AccountType;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/users/AccountType;

    sget-object v1, Lcom/dropbox/core/v2/users/AccountType;->BASIC:Lcom/dropbox/core/v2/users/AccountType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/users/AccountType;->PRO:Lcom/dropbox/core/v2/users/AccountType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/users/AccountType;->BUSINESS:Lcom/dropbox/core/v2/users/AccountType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/users/AccountType;->$VALUES:[Lcom/dropbox/core/v2/users/AccountType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/users/AccountType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/users/AccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/users/AccountType;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/users/AccountType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/users/AccountType;->$VALUES:[Lcom/dropbox/core/v2/users/AccountType;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/users/AccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/users/AccountType;

    return-object v0
.end method
