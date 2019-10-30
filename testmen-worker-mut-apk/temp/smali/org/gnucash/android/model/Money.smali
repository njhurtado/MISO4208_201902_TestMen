.class public final Lorg/gnucash/android/model/Money;
.super Ljava/lang/Object;
.source "Money.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/model/Money$CurrencyMismatchException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/gnucash/android/model/Money;",
        ">;"
    }
.end annotation


# static fields
.field public static DEFAULT_CURRENCY_CODE:Ljava/lang/String;

.field private static sDefaultZero:Lorg/gnucash/android/model/Money;


# instance fields
.field protected ROUNDING_MODE:Ljava/math/RoundingMode;

.field private mAmount:Ljava/math/BigDecimal;

.field private mCommodity:Lorg/gnucash/android/model/Commodity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "USD"

    sput-object v0, Lorg/gnucash/android/model/Money;->DEFAULT_CURRENCY_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J
    .param p5, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/gnucash/android/model/Money;->ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 133
    invoke-static {p1, p2, p3, p4}, Lorg/gnucash/android/model/Money;->getBigDecimal(JJ)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    .line 134
    invoke-direct {p0, p5}, Lorg/gnucash/android/model/Money;->setCommodity(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/gnucash/android/model/Money;->ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 121
    invoke-static {p2}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    .line 122
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/gnucash/android/model/Money;->setAmount(Ljava/math/BigDecimal;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V
    .locals 1
    .param p1, "amount"    # Ljava/math/BigDecimal;
    .param p2, "commodity"    # Lorg/gnucash/android/model/Commodity;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/gnucash/android/model/Money;->ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 109
    iput-object p2, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    .line 110
    invoke-direct {p0, p1}, Lorg/gnucash/android/model/Money;->setAmount(Ljava/math/BigDecimal;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/model/Money;)V
    .locals 1
    .param p1, "money"    # Lorg/gnucash/android/model/Money;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Lorg/gnucash/android/model/Money;->ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 143
    invoke-virtual {p1}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/gnucash/android/model/Money;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 144
    invoke-virtual {p1}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/gnucash/android/model/Money;->setAmount(Ljava/math/BigDecimal;)V

    .line 145
    return-void
.end method

.method public static createZeroInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;
    .locals 3
    .param p0, "currencyCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    invoke-static {p0}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    .line 154
    .local v0, "commodity":Lorg/gnucash/android/model/Commodity;
    new-instance v1, Lorg/gnucash/android/model/Money;

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-direct {v1, v2, v0}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    return-object v1
.end method

.method public static getBigDecimal(JJ)Ljava/math/BigDecimal;
    .locals 4
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 95
    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    .line 96
    const-wide/16 p2, 0x1

    .line 99
    :cond_0
    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 100
    .local v0, "scale":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v1
.end method

.method private getScale()I
    .locals 2

    .prologue
    .line 226
    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v1}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v0

    .line 227
    .local v0, "scale":I
    if-gez v0, :cond_0

    .line 228
    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 230
    :cond_0
    if-gez v0, :cond_1

    .line 231
    const/4 v0, 0x0

    .line 233
    :cond_1
    return v0
.end method

.method public static getZeroInstance()Lorg/gnucash/android/model/Money;
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lorg/gnucash/android/model/Money;->sDefaultZero:Lorg/gnucash/android/model/Money;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lorg/gnucash/android/model/Money;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    sget-object v2, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    sput-object v0, Lorg/gnucash/android/model/Money;->sDefaultZero:Lorg/gnucash/android/model/Money;

    .line 84
    :cond_0
    sget-object v0, Lorg/gnucash/android/model/Money;->sDefaultZero:Lorg/gnucash/android/model/Money;

    return-object v0
.end method

.method private setAmount(Ljava/math/BigDecimal;)V
    .locals 2
    .param p1, "amount"    # Ljava/math/BigDecimal;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 318
    iget-object v0, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v0

    iget-object v1, p0, Lorg/gnucash/android/model/Money;->ROUNDING_MODE:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    .line 319
    return-void
.end method

.method private setCommodity(Ljava/lang/String;)V
    .locals 1
    .param p1, "currencyCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 189
    invoke-static {p1}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    .line 190
    return-void
.end method

.method private setCommodity(Lorg/gnucash/android/model/Commodity;)V
    .locals 0
    .param p1, "commodity"    # Lorg/gnucash/android/model/Commodity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 181
    iput-object p1, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    .line 182
    return-void
.end method


# virtual methods
.method public abs()Lorg/gnucash/android/model/Money;
    .locals 3

    .prologue
    .line 499
    new-instance v0, Lorg/gnucash/android/model/Money;

    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    return-object v0
.end method

.method public add(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;
    .locals 3
    .param p1, "addend"    # Lorg/gnucash/android/model/Money;

    .prologue
    .line 330
    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    iget-object v2, p1, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    new-instance v1, Lorg/gnucash/android/model/Money$CurrencyMismatchException;

    invoke-direct {v1, p0}, Lorg/gnucash/android/model/Money$CurrencyMismatchException;-><init>(Lorg/gnucash/android/model/Money;)V

    throw v1

    .line 333
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    iget-object v2, p1, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 334
    .local v0, "bigD":Ljava/math/BigDecimal;
    new-instance v1, Lorg/gnucash/android/model/Money;

    iget-object v2, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v1, v0, v2}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    return-object v1
.end method

.method public asBigDecimal()Ljava/math/BigDecimal;
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v1}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v1

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public asDouble()D
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/gnucash/android/model/Money;->toPlainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    check-cast p1, Lorg/gnucash/android/model/Money;

    invoke-virtual {p0, p1}, Lorg/gnucash/android/model/Money;->compareTo(Lorg/gnucash/android/model/Money;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/gnucash/android/model/Money;)I
    .locals 2
    .param p1, "another"    # Lorg/gnucash/android/model/Money;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 489
    iget-object v0, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    iget-object v1, p1, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    new-instance v0, Lorg/gnucash/android/model/Money$CurrencyMismatchException;

    invoke-direct {v0, p0}, Lorg/gnucash/android/model/Money$CurrencyMismatchException;-><init>(Lorg/gnucash/android/model/Money;)V

    throw v0

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    iget-object v1, p1, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    return v0
.end method

.method public divide(I)Lorg/gnucash/android/model/Money;
    .locals 3
    .param p1, "divisor"    # I

    .prologue
    .line 377
    new-instance v0, Lorg/gnucash/android/model/Money;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(I)V

    iget-object v2, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    .line 378
    .local v0, "moneyDiv":Lorg/gnucash/android/model/Money;
    invoke-virtual {p0, v0}, Lorg/gnucash/android/model/Money;->divide(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v1

    return-object v1
.end method

.method public divide(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;
    .locals 5
    .param p1, "divisor"    # Lorg/gnucash/android/model/Money;

    .prologue
    .line 363
    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    iget-object v2, p1, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    new-instance v1, Lorg/gnucash/android/model/Money$CurrencyMismatchException;

    invoke-direct {v1, p0}, Lorg/gnucash/android/model/Money$CurrencyMismatchException;-><init>(Lorg/gnucash/android/model/Money;)V

    throw v1

    .line 366
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    iget-object v2, p1, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    iget-object v3, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v3

    iget-object v4, p0, Lorg/gnucash/android/model/Money;->ROUNDING_MODE:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 367
    .local v0, "bigD":Ljava/math/BigDecimal;
    new-instance v1, Lorg/gnucash/android/model/Money;

    iget-object v2, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v1, v0, v2}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 473
    if-ne p0, p1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v1

    .line 475
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 476
    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 478
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 479
    check-cast v0, Lorg/gnucash/android/model/Money;

    .line 480
    .local v0, "other":Lorg/gnucash/android/model/Money;
    iget-object v3, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    iget-object v4, v0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 481
    goto :goto_0

    .line 482
    :cond_4
    iget-object v3, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    iget-object v4, v0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3, v4}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 483
    goto :goto_0
.end method

.method public formattedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/model/Money;->formattedString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formattedString(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 270
    invoke-static {p1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 274
    .local v0, "currencyFormat":Ljava/text/NumberFormat;
    iget-object v3, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    sget-object v4, Lorg/gnucash/android/model/Commodity;->USD:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3, v4}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    const-string v2, "US$"

    .local v2, "symbol":Ljava/lang/String;
    :goto_0
    move-object v3, v0

    .line 279
    check-cast v3, Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    .line 280
    .local v1, "decimalFormatSymbols":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    move-object v3, v0

    .line 281
    check-cast v3, Ljava/text/DecimalFormat;

    invoke-virtual {v3, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 282
    iget-object v3, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 283
    iget-object v3, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 285
    invoke-virtual {p0}, Lorg/gnucash/android/model/Money;->asDouble()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 277
    .end local v1    # "decimalFormatSymbols":Ljava/text/DecimalFormatSymbols;
    .end local v2    # "symbol":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getSymbol()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "symbol":Ljava/lang/String;
    goto :goto_0
.end method

.method public getCommodity()Lorg/gnucash/android/model/Commodity;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    return-object v0
.end method

.method public getDenominator()J
    .locals 4

    .prologue
    .line 216
    invoke-direct {p0}, Lorg/gnucash/android/model/Money;->getScale()I

    move-result v0

    .line 217
    .local v0, "scale":I
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v2

    return-wide v2
.end method

.method public getNumerator()J
    .locals 4

    .prologue
    .line 199
    :try_start_0
    iget-object v2, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    invoke-direct {p0}, Lorg/gnucash/android/model/Money;->getScale()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->longValueExact()J
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/ArithmeticException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with scale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    invoke-direct {p0}, Lorg/gnucash/android/model/Money;->getScale()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has amount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    .line 203
    invoke-virtual {v3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    throw v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 459
    const/16 v0, 0x1f

    .line 460
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 461
    .local v1, "result":I
    iget-object v2, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 462
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 463
    return v1
.end method

.method public isAmountZero()Z
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNegative()Z
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiply(I)Lorg/gnucash/android/model/Money;
    .locals 3
    .param p1, "multiplier"    # I

    .prologue
    .line 405
    new-instance v0, Lorg/gnucash/android/model/Money;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(I)V

    iget-object v2, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    .line 406
    .local v0, "moneyFactor":Lorg/gnucash/android/model/Money;
    invoke-virtual {p0, v0}, Lorg/gnucash/android/model/Money;->multiply(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v1

    return-object v1
.end method

.method public multiply(Ljava/math/BigDecimal;)Lorg/gnucash/android/model/Money;
    .locals 3
    .param p1, "multiplier"    # Ljava/math/BigDecimal;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 416
    new-instance v0, Lorg/gnucash/android/model/Money;

    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    return-object v0
.end method

.method public multiply(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;
    .locals 3
    .param p1, "money"    # Lorg/gnucash/android/model/Money;

    .prologue
    .line 390
    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    iget-object v2, p1, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    new-instance v1, Lorg/gnucash/android/model/Money$CurrencyMismatchException;

    invoke-direct {v1, p0}, Lorg/gnucash/android/model/Money$CurrencyMismatchException;-><init>(Lorg/gnucash/android/model/Money;)V

    throw v1

    .line 393
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    iget-object v2, p1, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 394
    .local v0, "bigD":Ljava/math/BigDecimal;
    new-instance v1, Lorg/gnucash/android/model/Money;

    iget-object v2, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v1, v0, v2}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    return-object v1
.end method

.method public negate()Lorg/gnucash/android/model/Money;
    .locals 3

    .prologue
    .line 310
    new-instance v0, Lorg/gnucash/android/model/Money;

    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    return-object v0
.end method

.method public subtract(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;
    .locals 3
    .param p1, "subtrahend"    # Lorg/gnucash/android/model/Money;

    .prologue
    .line 346
    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    iget-object v2, p1, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/model/Commodity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    new-instance v1, Lorg/gnucash/android/model/Money$CurrencyMismatchException;

    invoke-direct {v1, p0}, Lorg/gnucash/android/model/Money$CurrencyMismatchException;-><init>(Lorg/gnucash/android/model/Money;)V

    throw v1

    .line 349
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    iget-object v2, p1, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 350
    .local v0, "bigD":Ljava/math/BigDecimal;
    new-instance v1, Lorg/gnucash/android/model/Money;

    iget-object v2, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v1, v0, v2}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    return-object v1
.end method

.method public toLocaleString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 444
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/gnucash/android/model/Money;->asDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPlainString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v1}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v1

    iget-object v2, p0, Lorg/gnucash/android/model/Money;->ROUNDING_MODE:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/model/Money;->formattedString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCurrency(Lorg/gnucash/android/model/Commodity;)Lorg/gnucash/android/model/Money;
    .locals 2
    .param p1, "commodity"    # Lorg/gnucash/android/model/Commodity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 172
    new-instance v0, Lorg/gnucash/android/model/Money;

    iget-object v1, p0, Lorg/gnucash/android/model/Money;->mAmount:Ljava/math/BigDecimal;

    invoke-direct {v0, v1, p1}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    return-object v0
.end method
