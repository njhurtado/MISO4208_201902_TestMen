.class public final enum Lorg/gnucash/android/model/AccountType;
.super Ljava/lang/Enum;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/gnucash/android/model/AccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/gnucash/android/model/AccountType;

.field public static final enum ASSET:Lorg/gnucash/android/model/AccountType;

.field public static final enum BANK:Lorg/gnucash/android/model/AccountType;

.field public static final enum CASH:Lorg/gnucash/android/model/AccountType;

.field public static final enum CREDIT:Lorg/gnucash/android/model/AccountType;

.field public static final enum CURRENCY:Lorg/gnucash/android/model/AccountType;

.field public static final enum EQUITY:Lorg/gnucash/android/model/AccountType;

.field public static final enum EXPENSE:Lorg/gnucash/android/model/AccountType;

.field public static final enum INCOME:Lorg/gnucash/android/model/AccountType;

.field public static final enum LIABILITY:Lorg/gnucash/android/model/AccountType;

.field public static final enum MUTUAL:Lorg/gnucash/android/model/AccountType;

.field public static final enum PAYABLE:Lorg/gnucash/android/model/AccountType;

.field public static final enum RECEIVABLE:Lorg/gnucash/android/model/AccountType;

.field public static final enum ROOT:Lorg/gnucash/android/model/AccountType;

.field public static final enum STOCK:Lorg/gnucash/android/model/AccountType;

.field public static final enum TRADING:Lorg/gnucash/android/model/AccountType;


# instance fields
.field private mNormalBalance:Lorg/gnucash/android/model/TransactionType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "CASH"

    sget-object v2, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    invoke-direct {v0, v1, v4, v2}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;ILorg/gnucash/android/model/TransactionType;)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->CASH:Lorg/gnucash/android/model/AccountType;

    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "BANK"

    sget-object v2, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    invoke-direct {v0, v1, v5, v2}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;ILorg/gnucash/android/model/TransactionType;)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->BANK:Lorg/gnucash/android/model/AccountType;

    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "CREDIT"

    invoke-direct {v0, v1, v6}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->CREDIT:Lorg/gnucash/android/model/AccountType;

    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "ASSET"

    sget-object v2, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    invoke-direct {v0, v1, v7, v2}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;ILorg/gnucash/android/model/TransactionType;)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->ASSET:Lorg/gnucash/android/model/AccountType;

    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "LIABILITY"

    invoke-direct {v0, v1, v8}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->LIABILITY:Lorg/gnucash/android/model/AccountType;

    .line 10
    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "INCOME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->INCOME:Lorg/gnucash/android/model/AccountType;

    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "EXPENSE"

    const/4 v2, 0x6

    sget-object v3, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    invoke-direct {v0, v1, v2, v3}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;ILorg/gnucash/android/model/TransactionType;)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->EXPENSE:Lorg/gnucash/android/model/AccountType;

    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "PAYABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->PAYABLE:Lorg/gnucash/android/model/AccountType;

    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "RECEIVABLE"

    const/16 v2, 0x8

    sget-object v3, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    invoke-direct {v0, v1, v2, v3}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;ILorg/gnucash/android/model/TransactionType;)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->RECEIVABLE:Lorg/gnucash/android/model/AccountType;

    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "EQUITY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->EQUITY:Lorg/gnucash/android/model/AccountType;

    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "CURRENCY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->CURRENCY:Lorg/gnucash/android/model/AccountType;

    .line 11
    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "STOCK"

    const/16 v2, 0xb

    sget-object v3, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    invoke-direct {v0, v1, v2, v3}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;ILorg/gnucash/android/model/TransactionType;)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->STOCK:Lorg/gnucash/android/model/AccountType;

    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "MUTUAL"

    const/16 v2, 0xc

    sget-object v3, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    invoke-direct {v0, v1, v2, v3}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;ILorg/gnucash/android/model/TransactionType;)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->MUTUAL:Lorg/gnucash/android/model/AccountType;

    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "TRADING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->TRADING:Lorg/gnucash/android/model/AccountType;

    new-instance v0, Lorg/gnucash/android/model/AccountType;

    const-string v1, "ROOT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/AccountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    .line 8
    const/16 v0, 0xf

    new-array v0, v0, [Lorg/gnucash/android/model/AccountType;

    sget-object v1, Lorg/gnucash/android/model/AccountType;->CASH:Lorg/gnucash/android/model/AccountType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/gnucash/android/model/AccountType;->BANK:Lorg/gnucash/android/model/AccountType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/gnucash/android/model/AccountType;->CREDIT:Lorg/gnucash/android/model/AccountType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/gnucash/android/model/AccountType;->ASSET:Lorg/gnucash/android/model/AccountType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/gnucash/android/model/AccountType;->LIABILITY:Lorg/gnucash/android/model/AccountType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/gnucash/android/model/AccountType;->INCOME:Lorg/gnucash/android/model/AccountType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/gnucash/android/model/AccountType;->EXPENSE:Lorg/gnucash/android/model/AccountType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/gnucash/android/model/AccountType;->PAYABLE:Lorg/gnucash/android/model/AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/gnucash/android/model/AccountType;->RECEIVABLE:Lorg/gnucash/android/model/AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/gnucash/android/model/AccountType;->EQUITY:Lorg/gnucash/android/model/AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/gnucash/android/model/AccountType;->CURRENCY:Lorg/gnucash/android/model/AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/gnucash/android/model/AccountType;->STOCK:Lorg/gnucash/android/model/AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/gnucash/android/model/AccountType;->MUTUAL:Lorg/gnucash/android/model/AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/gnucash/android/model/AccountType;->TRADING:Lorg/gnucash/android/model/AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/gnucash/android/model/AccountType;->$VALUES:[Lorg/gnucash/android/model/AccountType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    sget-object v0, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    iput-object v0, p0, Lorg/gnucash/android/model/AccountType;->mNormalBalance:Lorg/gnucash/android/model/TransactionType;

    .line 26
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/gnucash/android/model/TransactionType;)V
    .locals 1
    .param p3, "normalBalance"    # Lorg/gnucash/android/model/TransactionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/gnucash/android/model/TransactionType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    sget-object v0, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    iput-object v0, p0, Lorg/gnucash/android/model/AccountType;->mNormalBalance:Lorg/gnucash/android/model/TransactionType;

    .line 21
    iput-object p3, p0, Lorg/gnucash/android/model/AccountType;->mNormalBalance:Lorg/gnucash/android/model/TransactionType;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lorg/gnucash/android/model/AccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/AccountType;

    return-object v0
.end method

.method public static values()[Lorg/gnucash/android/model/AccountType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lorg/gnucash/android/model/AccountType;->$VALUES:[Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v0}, [Lorg/gnucash/android/model/AccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/gnucash/android/model/AccountType;

    return-object v0
.end method


# virtual methods
.method public getNormalBalanceType()Lorg/gnucash/android/model/TransactionType;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/gnucash/android/model/AccountType;->mNormalBalance:Lorg/gnucash/android/model/TransactionType;

    return-object v0
.end method

.method public hasDebitNormalBalance()Z
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lorg/gnucash/android/model/AccountType;->mNormalBalance:Lorg/gnucash/android/model/TransactionType;

    sget-object v1, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
