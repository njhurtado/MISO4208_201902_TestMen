.class public final enum Lorg/gnucash/android/ui/common/FormActivity$FormType;
.super Ljava/lang/Enum;
.source "FormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/common/FormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/gnucash/android/ui/common/FormActivity$FormType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/gnucash/android/ui/common/FormActivity$FormType;

.field public static final enum ACCOUNT:Lorg/gnucash/android/ui/common/FormActivity$FormType;

.field public static final enum BUDGET:Lorg/gnucash/android/ui/common/FormActivity$FormType;

.field public static final enum BUDGET_AMOUNT_EDITOR:Lorg/gnucash/android/ui/common/FormActivity$FormType;

.field public static final enum EXPORT:Lorg/gnucash/android/ui/common/FormActivity$FormType;

.field public static final enum SPLIT_EDITOR:Lorg/gnucash/android/ui/common/FormActivity$FormType;

.field public static final enum TRANSACTION:Lorg/gnucash/android/ui/common/FormActivity$FormType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;

    const-string v1, "ACCOUNT"

    invoke-direct {v0, v1, v3}, Lorg/gnucash/android/ui/common/FormActivity$FormType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;->ACCOUNT:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    new-instance v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;

    const-string v1, "TRANSACTION"

    invoke-direct {v0, v1, v4}, Lorg/gnucash/android/ui/common/FormActivity$FormType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;->TRANSACTION:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    new-instance v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;

    const-string v1, "EXPORT"

    invoke-direct {v0, v1, v5}, Lorg/gnucash/android/ui/common/FormActivity$FormType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;->EXPORT:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    new-instance v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;

    const-string v1, "SPLIT_EDITOR"

    invoke-direct {v0, v1, v6}, Lorg/gnucash/android/ui/common/FormActivity$FormType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;->SPLIT_EDITOR:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    new-instance v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;

    const-string v1, "BUDGET"

    invoke-direct {v0, v1, v7}, Lorg/gnucash/android/ui/common/FormActivity$FormType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;->BUDGET:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    new-instance v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;

    const-string v1, "BUDGET_AMOUNT_EDITOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;->BUDGET_AMOUNT_EDITOR:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/gnucash/android/ui/common/FormActivity$FormType;

    sget-object v1, Lorg/gnucash/android/ui/common/FormActivity$FormType;->ACCOUNT:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/gnucash/android/ui/common/FormActivity$FormType;->TRANSACTION:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/gnucash/android/ui/common/FormActivity$FormType;->EXPORT:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/gnucash/android/ui/common/FormActivity$FormType;->SPLIT_EDITOR:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/gnucash/android/ui/common/FormActivity$FormType;->BUDGET:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->BUDGET_AMOUNT_EDITOR:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;->$VALUES:[Lorg/gnucash/android/ui/common/FormActivity$FormType;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/gnucash/android/ui/common/FormActivity$FormType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;

    return-object v0
.end method

.method public static values()[Lorg/gnucash/android/ui/common/FormActivity$FormType;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/gnucash/android/ui/common/FormActivity$FormType;->$VALUES:[Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v0}, [Lorg/gnucash/android/ui/common/FormActivity$FormType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/gnucash/android/ui/common/FormActivity$FormType;

    return-object v0
.end method
