.class public Lorg/gnucash/android/model/BudgetAmount;
.super Lorg/gnucash/android/model/BaseModel;
.source "BudgetAmount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/gnucash/android/model/BudgetAmount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountUID:Ljava/lang/String;

.field private mAmount:Lorg/gnucash/android/model/Money;

.field private mBudgetUID:Ljava/lang/String;

.field private mPeriodNum:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lorg/gnucash/android/model/BudgetAmount$1;

    invoke-direct {v0}, Lorg/gnucash/android/model/BudgetAmount$1;-><init>()V

    sput-object v0, Lorg/gnucash/android/model/BudgetAmount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/model/BudgetAmount;->setUID(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mBudgetUID:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mAccountUID:Ljava/lang/String;

    .line 145
    new-instance v0, Lorg/gnucash/android/model/Money;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    iput-object v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mAmount:Lorg/gnucash/android/model/Money;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mPeriodNum:J

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/gnucash/android/model/BudgetAmount$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/gnucash/android/model/BudgetAmount$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/gnucash/android/model/BudgetAmount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "budgetUID"    # Ljava/lang/String;
    .param p2, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/gnucash/android/model/BudgetAmount;->mBudgetUID:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/gnucash/android/model/BudgetAmount;->mAccountUID:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V
    .locals 1
    .param p1, "amount"    # Lorg/gnucash/android/model/Money;
    .param p2, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 55
    invoke-virtual {p1}, Lorg/gnucash/android/model/Money;->abs()Lorg/gnucash/android/model/Money;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mAmount:Lorg/gnucash/android/model/Money;

    .line 56
    iput-object p2, p0, Lorg/gnucash/android/model/BudgetAmount;->mAccountUID:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mAccountUID:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Lorg/gnucash/android/model/Money;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mAmount:Lorg/gnucash/android/model/Money;

    return-object v0
.end method

.method public getBudgetUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mBudgetUID:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodNum()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mPeriodNum:J

    return-wide v0
.end method

.method public setAccountUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/gnucash/android/model/BudgetAmount;->mAccountUID:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setAmount(Lorg/gnucash/android/model/Money;)V
    .locals 1
    .param p1, "amount"    # Lorg/gnucash/android/model/Money;

    .prologue
    .line 107
    invoke-virtual {p1}, Lorg/gnucash/android/model/Money;->abs()Lorg/gnucash/android/model/Money;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mAmount:Lorg/gnucash/android/model/Money;

    .line 108
    return-void
.end method

.method public setBudgetUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "budgetUID"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/gnucash/android/model/BudgetAmount;->mBudgetUID:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setPeriodNum(J)V
    .locals 1
    .param p1, "periodNum"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Lorg/gnucash/android/model/BudgetAmount;->mPeriodNum:J

    .line 91
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/gnucash/android/model/BudgetAmount;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mBudgetUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mAccountUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mAmount:Lorg/gnucash/android/model/Money;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-wide v0, p0, Lorg/gnucash/android/model/BudgetAmount;->mPeriodNum:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    return-void
.end method
