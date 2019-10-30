.class public final enum Lorg/gnucash/android/model/Account$OfxAccountType;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/model/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OfxAccountType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/gnucash/android/model/Account$OfxAccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/gnucash/android/model/Account$OfxAccountType;

.field public static final enum CHECKING:Lorg/gnucash/android/model/Account$OfxAccountType;

.field public static final enum CREDITLINE:Lorg/gnucash/android/model/Account$OfxAccountType;

.field public static final enum MONEYMRKT:Lorg/gnucash/android/model/Account$OfxAccountType;

.field public static final enum SAVINGS:Lorg/gnucash/android/model/Account$OfxAccountType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lorg/gnucash/android/model/Account$OfxAccountType;

    const-string v1, "CHECKING"

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/Account$OfxAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/Account$OfxAccountType;->CHECKING:Lorg/gnucash/android/model/Account$OfxAccountType;

    new-instance v0, Lorg/gnucash/android/model/Account$OfxAccountType;

    const-string v1, "SAVINGS"

    invoke-direct {v0, v1, v3}, Lorg/gnucash/android/model/Account$OfxAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/Account$OfxAccountType;->SAVINGS:Lorg/gnucash/android/model/Account$OfxAccountType;

    new-instance v0, Lorg/gnucash/android/model/Account$OfxAccountType;

    const-string v1, "MONEYMRKT"

    invoke-direct {v0, v1, v4}, Lorg/gnucash/android/model/Account$OfxAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/Account$OfxAccountType;->MONEYMRKT:Lorg/gnucash/android/model/Account$OfxAccountType;

    new-instance v0, Lorg/gnucash/android/model/Account$OfxAccountType;

    const-string v1, "CREDITLINE"

    invoke-direct {v0, v1, v5}, Lorg/gnucash/android/model/Account$OfxAccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/Account$OfxAccountType;->CREDITLINE:Lorg/gnucash/android/model/Account$OfxAccountType;

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/gnucash/android/model/Account$OfxAccountType;

    sget-object v1, Lorg/gnucash/android/model/Account$OfxAccountType;->CHECKING:Lorg/gnucash/android/model/Account$OfxAccountType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/gnucash/android/model/Account$OfxAccountType;->SAVINGS:Lorg/gnucash/android/model/Account$OfxAccountType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/gnucash/android/model/Account$OfxAccountType;->MONEYMRKT:Lorg/gnucash/android/model/Account$OfxAccountType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/gnucash/android/model/Account$OfxAccountType;->CREDITLINE:Lorg/gnucash/android/model/Account$OfxAccountType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/gnucash/android/model/Account$OfxAccountType;->$VALUES:[Lorg/gnucash/android/model/Account$OfxAccountType;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/Account$OfxAccountType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lorg/gnucash/android/model/Account$OfxAccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Account$OfxAccountType;

    return-object v0
.end method

.method public static values()[Lorg/gnucash/android/model/Account$OfxAccountType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/gnucash/android/model/Account$OfxAccountType;->$VALUES:[Lorg/gnucash/android/model/Account$OfxAccountType;

    invoke-virtual {v0}, [Lorg/gnucash/android/model/Account$OfxAccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/gnucash/android/model/Account$OfxAccountType;

    return-object v0
.end method
