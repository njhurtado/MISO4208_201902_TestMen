.class public Lorg/gnucash/android/model/Price;
.super Lorg/gnucash/android/model/BaseModel;
.source "Price.java"


# static fields
.field public static final SOURCE_USER:Ljava/lang/String; = "user:xfer-dialog"


# instance fields
.field private mCommodityUID:Ljava/lang/String;

.field private mCurrencyUID:Ljava/lang/String;

.field private mDate:Ljava/sql/Timestamp;

.field private mSource:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mValueDenom:J

.field private mValueNum:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 30
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromNow()Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/Price;->mDate:Ljava/sql/Timestamp;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "commodityUID"    # Ljava/lang/String;
    .param p2, "currencyUID"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/gnucash/android/model/Price;->mCommodityUID:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lorg/gnucash/android/model/Price;->mCurrencyUID:Ljava/lang/String;

    .line 41
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromNow()Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/Price;->mDate:Ljava/sql/Timestamp;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 2
    .param p1, "commodity1UID"    # Ljava/lang/String;
    .param p2, "commodity2UID"    # Ljava/lang/String;
    .param p3, "exchangeRate"    # Ljava/math/BigDecimal;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/model/Price;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/gnucash/android/model/Price;->setValueNum(J)V

    .line 54
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p3}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/gnucash/android/model/Price;->setValueDenom(J)V

    .line 55
    return-void
.end method

.method private reduce()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 116
    iget-wide v8, p0, Lorg/gnucash/android/model/Price;->mValueDenom:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 117
    iget-wide v8, p0, Lorg/gnucash/android/model/Price;->mValueDenom:J

    neg-long v8, v8

    iput-wide v8, p0, Lorg/gnucash/android/model/Price;->mValueDenom:J

    .line 118
    iget-wide v8, p0, Lorg/gnucash/android/model/Price;->mValueNum:J

    neg-long v8, v8

    iput-wide v8, p0, Lorg/gnucash/android/model/Price;->mValueNum:J

    .line 120
    :cond_0
    iget-wide v8, p0, Lorg/gnucash/android/model/Price;->mValueDenom:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    iget-wide v8, p0, Lorg/gnucash/android/model/Price;->mValueNum:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 121
    iget-wide v2, p0, Lorg/gnucash/android/model/Price;->mValueNum:J

    .line 122
    .local v2, "num1":J
    cmp-long v8, v2, v10

    if-gez v8, :cond_1

    .line 123
    neg-long v2, v2

    .line 125
    :cond_1
    iget-wide v4, p0, Lorg/gnucash/android/model/Price;->mValueDenom:J

    .line 126
    .local v4, "num2":J
    const-wide/16 v0, 0x1

    .line 128
    .local v0, "commonDivisor":J
    :goto_0
    rem-long v6, v2, v4

    .line 129
    .local v6, "r":J
    cmp-long v8, v6, v10

    if-nez v8, :cond_3

    .line 130
    move-wide v0, v4

    .line 141
    :goto_1
    iget-wide v8, p0, Lorg/gnucash/android/model/Price;->mValueNum:J

    div-long/2addr v8, v0

    iput-wide v8, p0, Lorg/gnucash/android/model/Price;->mValueNum:J

    .line 142
    iget-wide v8, p0, Lorg/gnucash/android/model/Price;->mValueDenom:J

    div-long/2addr v8, v0

    iput-wide v8, p0, Lorg/gnucash/android/model/Price;->mValueDenom:J

    .line 144
    .end local v0    # "commonDivisor":J
    .end local v2    # "num1":J
    .end local v4    # "num2":J
    .end local v6    # "r":J
    :cond_2
    return-void

    .line 133
    .restart local v0    # "commonDivisor":J
    .restart local v2    # "num1":J
    .restart local v4    # "num2":J
    .restart local v6    # "r":J
    :cond_3
    move-wide v2, v6

    .line 134
    rem-long v6, v4, v2

    .line 135
    cmp-long v8, v6, v10

    if-nez v8, :cond_4

    .line 136
    move-wide v0, v2

    .line 137
    goto :goto_1

    .line 139
    :cond_4
    move-wide v4, v6

    .line 140
    goto :goto_0
.end method


# virtual methods
.method public getCommodityUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/gnucash/android/model/Price;->mCommodityUID:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/gnucash/android/model/Price;->mCurrencyUID:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/sql/Timestamp;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/gnucash/android/model/Price;->mDate:Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/gnucash/android/model/Price;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/gnucash/android/model/Price;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getValueDenom()J
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/gnucash/android/model/Price;->reduce()V

    .line 108
    iget-wide v0, p0, Lorg/gnucash/android/model/Price;->mValueDenom:J

    return-wide v0
.end method

.method public getValueNum()J
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/gnucash/android/model/Price;->reduce()V

    .line 99
    iget-wide v0, p0, Lorg/gnucash/android/model/Price;->mValueNum:J

    return-wide v0
.end method

.method public setCommodityUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCommodityUID"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/gnucash/android/model/Price;->mCommodityUID:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setCurrencyUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyUID"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/gnucash/android/model/Price;->mCurrencyUID:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setDate(Ljava/sql/Timestamp;)V
    .locals 0
    .param p1, "date"    # Ljava/sql/Timestamp;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/gnucash/android/model/Price;->mDate:Ljava/sql/Timestamp;

    .line 79
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/gnucash/android/model/Price;->mSource:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/gnucash/android/model/Price;->mType:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setValueDenom(J)V
    .locals 1
    .param p1, "valueDenom"    # J

    .prologue
    .line 112
    iput-wide p1, p0, Lorg/gnucash/android/model/Price;->mValueDenom:J

    .line 113
    return-void
.end method

.method public setValueNum(J)V
    .locals 1
    .param p1, "valueNum"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lorg/gnucash/android/model/Price;->mValueNum:J

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 155
    new-instance v2, Ljava/math/BigDecimal;

    iget-wide v4, p0, Lorg/gnucash/android/model/Price;->mValueNum:J

    invoke-direct {v2, v4, v5}, Ljava/math/BigDecimal;-><init>(J)V

    .line 156
    .local v2, "numerator":Ljava/math/BigDecimal;
    new-instance v0, Ljava/math/BigDecimal;

    iget-wide v4, p0, Lorg/gnucash/android/model/Price;->mValueDenom:J

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(J)V

    .line 157
    .local v0, "denominator":Ljava/math/BigDecimal;
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormat;

    .line 158
    .local v1, "formatter":Ljava/text/DecimalFormat;
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 159
    sget-object v3, Ljava/math/MathContext;->DECIMAL32:Ljava/math/MathContext;

    invoke-virtual {v2, v0, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
