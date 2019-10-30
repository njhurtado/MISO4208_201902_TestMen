.class public Lorg/gnucash/android/model/Split;
.super Lorg/gnucash/android/model/BaseModel;
.source "Split.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CLEARED:C = 'c'

.field public static final FLAG_NOT_RECONCILED:C = 'n'

.field public static final FLAG_RECONCILED:C = 'y'


# instance fields
.field private mAccountUID:Ljava/lang/String;

.field private mMemo:Ljava/lang/String;

.field private mQuantity:Lorg/gnucash/android/model/Money;

.field private mReconcileDate:Ljava/sql/Timestamp;

.field private mReconcileState:C

.field private mSplitType:Lorg/gnucash/android/model/TransactionType;

.field private mTransactionUID:Ljava/lang/String;

.field private mValue:Lorg/gnucash/android/model/Money;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 593
    new-instance v0, Lorg/gnucash/android/model/Split$1;

    invoke-direct {v0}, Lorg/gnucash/android/model/Split$1;-><init>()V

    sput-object v0, Lorg/gnucash/android/model/Split;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 18
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 568
    invoke-direct/range {p0 .. p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 56
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    .line 66
    sget-object v3, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    .line 73
    const/16 v3, 0x6e

    move-object/from16 v0, p0

    iput-char v3, v0, Lorg/gnucash/android/model/Split;->mReconcileState:C

    .line 78
    new-instance v3, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v3, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/gnucash/android/model/Split;->mReconcileDate:Ljava/sql/Timestamp;

    .line 569
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/gnucash/android/model/Split;->setUID(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    .line 571
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    .line 572
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/gnucash/android/model/TransactionType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/TransactionType;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 575
    .local v4, "valueNum":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 576
    .local v6, "valueDenom":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 577
    .local v8, "valueCurrency":Ljava/lang/String;
    new-instance v3, Lorg/gnucash/android/model/Money;

    invoke-direct/range {v3 .. v8}, Lorg/gnucash/android/model/Money;-><init>(JJLjava/lang/String;)V

    invoke-virtual {v3}, Lorg/gnucash/android/model/Money;->abs()Lorg/gnucash/android/model/Money;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    .line 579
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 580
    .local v10, "qtyNum":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 581
    .local v12, "qtyDenom":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 582
    .local v14, "qtyCurrency":Ljava/lang/String;
    new-instance v9, Lorg/gnucash/android/model/Money;

    invoke-direct/range {v9 .. v14}, Lorg/gnucash/android/model/Money;-><init>(JJLjava/lang/String;)V

    invoke-virtual {v9}, Lorg/gnucash/android/model/Money;->abs()Lorg/gnucash/android/model/Money;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    .line 584
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, "memo":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .end local v2    # "memo":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    .line 586
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move-object/from16 v0, p0

    iput-char v3, v0, Lorg/gnucash/android/model/Split;->mReconcileState:C

    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/gnucash/android/model/Split;->mReconcileDate:Ljava/sql/Timestamp;

    .line 588
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/gnucash/android/model/Split$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/gnucash/android/model/Split$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/gnucash/android/model/Split;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V
    .locals 1
    .param p1, "amount"    # Lorg/gnucash/android/model/Money;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Lorg/gnucash/android/model/Money;

    invoke-direct {v0, p1}, Lorg/gnucash/android/model/Money;-><init>(Lorg/gnucash/android/model/Money;)V

    invoke-direct {p0, p1, v0, p2}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/model/Money;Lorg/gnucash/android/model/Money;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Lorg/gnucash/android/model/Money;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "quantity"    # Lorg/gnucash/android/model/Money;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    .line 66
    sget-object v0, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    .line 73
    const/16 v0, 0x6e

    iput-char v0, p0, Lorg/gnucash/android/model/Split;->mReconcileState:C

    .line 78
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mReconcileDate:Ljava/sql/Timestamp;

    .line 91
    invoke-virtual {p0, p2}, Lorg/gnucash/android/model/Split;->setQuantity(Lorg/gnucash/android/model/Money;)V

    .line 92
    invoke-virtual {p0, p1}, Lorg/gnucash/android/model/Split;->setValue(Lorg/gnucash/android/model/Money;)V

    .line 93
    invoke-virtual {p0, p3}, Lorg/gnucash/android/model/Split;->setAccountUID(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/model/Split;Z)V
    .locals 4
    .param p1, "sourceSplit"    # Lorg/gnucash/android/model/Split;
    .param p2, "generateUID"    # Z

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    .line 66
    sget-object v0, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    .line 73
    const/16 v0, 0x6e

    iput-char v0, p0, Lorg/gnucash/android/model/Split;->mReconcileState:C

    .line 78
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mReconcileDate:Ljava/sql/Timestamp;

    .line 118
    iget-object v0, p1, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    .line 120
    iget-object v0, p1, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    .line 121
    iget-object v0, p1, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    .line 122
    new-instance v0, Lorg/gnucash/android/model/Money;

    iget-object v1, p1, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    invoke-direct {v0, v1}, Lorg/gnucash/android/model/Money;-><init>(Lorg/gnucash/android/model/Money;)V

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    .line 123
    new-instance v0, Lorg/gnucash/android/model/Money;

    iget-object v1, p1, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    invoke-direct {v0, v1}, Lorg/gnucash/android/model/Money;-><init>(Lorg/gnucash/android/model/Money;)V

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    .line 126
    if-eqz p2, :cond_0

    .line 127
    invoke-static {}, Lorg/gnucash/android/model/Split;->generateUID()Ljava/lang/String;

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lorg/gnucash/android/model/Split;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/model/Split;->setUID(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getFormattedAmount(Lorg/gnucash/android/model/Money;Ljava/lang/String;Lorg/gnucash/android/model/TransactionType;)Lorg/gnucash/android/model/Money;
    .locals 4
    .param p0, "amount"    # Lorg/gnucash/android/model/Money;
    .param p1, "accountUID"    # Ljava/lang/String;
    .param p2, "splitType"    # Lorg/gnucash/android/model/TransactionType;

    .prologue
    .line 316
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/AccountType;->hasDebitNormalBalance()Z

    move-result v1

    .line 317
    .local v1, "isDebitAccount":Z
    invoke-virtual {p0}, Lorg/gnucash/android/model/Money;->abs()Lorg/gnucash/android/model/Money;

    move-result-object v0

    .line 319
    .local v0, "absAmount":Lorg/gnucash/android/model/Money;
    sget-object v3, Lorg/gnucash/android/model/TransactionType;->DEBIT:Lorg/gnucash/android/model/TransactionType;

    if-ne p2, v3, :cond_1

    const/4 v2, 0x1

    .line 320
    .local v2, "isDebitSplit":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 321
    if-eqz v2, :cond_2

    .line 330
    .end local v0    # "absAmount":Lorg/gnucash/android/model/Money;
    :cond_0
    :goto_1
    return-object v0

    .line 319
    .end local v2    # "isDebitSplit":Z
    .restart local v0    # "absAmount":Lorg/gnucash/android/model/Money;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 324
    .restart local v2    # "isDebitSplit":Z
    :cond_2
    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->negate()Lorg/gnucash/android/model/Money;

    move-result-object v0

    goto :goto_1

    .line 327
    :cond_3
    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->negate()Lorg/gnucash/android/model/Money;

    move-result-object v0

    goto :goto_1
.end method

.method public static parseSplit(Ljava/lang/String;)Lorg/gnucash/android/model/Split;
    .locals 19
    .param p0, "splitCsvString"    # Ljava/lang/String;

    .prologue
    .line 438
    const-string v17, ";"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 439
    .local v16, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 440
    new-instance v2, Lorg/gnucash/android/model/Money;

    const/16 v17, 0x0

    aget-object v17, v16, v17

    const/16 v18, 0x1

    aget-object v18, v16, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lorg/gnucash/android/model/Money;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .local v2, "amount":Lorg/gnucash/android/model/Money;
    new-instance v15, Lorg/gnucash/android/model/Split;

    const/16 v17, 0x2

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    invoke-direct {v15, v2, v0}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 442
    .local v15, "split":Lorg/gnucash/android/model/Split;
    const/16 v17, 0x3

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/gnucash/android/model/Split;->setTransactionUID(Ljava/lang/String;)V

    .line 443
    const/16 v17, 0x4

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Lorg/gnucash/android/model/TransactionType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/TransactionType;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 444
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 445
    const/16 v17, 0x5

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/gnucash/android/model/Split;->setMemo(Ljava/lang/String;)V

    .line 467
    .end local v2    # "amount":Lorg/gnucash/android/model/Money;
    :cond_0
    :goto_0
    return-object v15

    .line 449
    .end local v15    # "split":Lorg/gnucash/android/model/Split;
    :cond_1
    const/16 v17, 0x1

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 450
    .local v4, "valueNum":J
    const/16 v17, 0x2

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 451
    .local v6, "valueDenom":J
    const/16 v17, 0x3

    aget-object v8, v16, v17

    .line 452
    .local v8, "valueCurrencyCode":Ljava/lang/String;
    const/16 v17, 0x4

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 453
    .local v10, "quantityNum":J
    const/16 v17, 0x5

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 454
    .local v12, "quantityDenom":J
    const/16 v17, 0x6

    aget-object v14, v16, v17

    .line 456
    .local v14, "qtyCurrencyCode":Ljava/lang/String;
    new-instance v3, Lorg/gnucash/android/model/Money;

    invoke-direct/range {v3 .. v8}, Lorg/gnucash/android/model/Money;-><init>(JJLjava/lang/String;)V

    .line 457
    .local v3, "value":Lorg/gnucash/android/model/Money;
    new-instance v9, Lorg/gnucash/android/model/Money;

    invoke-direct/range {v9 .. v14}, Lorg/gnucash/android/model/Money;-><init>(JJLjava/lang/String;)V

    .line 459
    .local v9, "quantity":Lorg/gnucash/android/model/Money;
    new-instance v15, Lorg/gnucash/android/model/Split;

    const/16 v17, 0x8

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    invoke-direct {v15, v3, v0}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 460
    .restart local v15    # "split":Lorg/gnucash/android/model/Split;
    const/16 v17, 0x0

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/gnucash/android/model/Split;->setUID(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v15, v9}, Lorg/gnucash/android/model/Split;->setQuantity(Lorg/gnucash/android/model/Money;)V

    .line 462
    const/16 v17, 0x7

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/gnucash/android/model/Split;->setTransactionUID(Ljava/lang/String;)V

    .line 463
    const/16 v17, 0x9

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Lorg/gnucash/android/model/TransactionType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/TransactionType;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 464
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 465
    const/16 v17, 0xa

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/gnucash/android/model/Split;->setMemo(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lorg/gnucash/android/model/Split;->clone()Lorg/gnucash/android/model/Split;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/gnucash/android/model/Split;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 265
    new-instance v0, Lorg/gnucash/android/model/Split;

    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 266
    .local v0, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {p0}, Lorg/gnucash/android/model/Split;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setUID(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 268
    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setMemo(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setTransactionUID(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setQuantity(Lorg/gnucash/android/model/Money;)V

    .line 271
    return-object v0
.end method

.method public createPair(Ljava/lang/String;)Lorg/gnucash/android/model/Split;
    .locals 2
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 251
    new-instance v0, Lorg/gnucash/android/model/Split;

    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    invoke-direct {v0, v1, p1}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 252
    .local v0, "pair":Lorg/gnucash/android/model/Split;
    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    invoke-virtual {v1}, Lorg/gnucash/android/model/TransactionType;->invert()Lorg/gnucash/android/model/TransactionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 253
    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setMemo(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setTransactionUID(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setQuantity(Lorg/gnucash/android/model/Money;)V

    .line 256
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 510
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 522
    :cond_0
    :goto_0
    return v2

    .line 511
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 512
    invoke-super {p0, p1}, Lorg/gnucash/android/model/BaseModel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 514
    check-cast v0, Lorg/gnucash/android/model/Split;

    .line 516
    .local v0, "split":Lorg/gnucash/android/model/Split;
    iget-char v3, p0, Lorg/gnucash/android/model/Split;->mReconcileState:C

    iget-char v4, v0, Lorg/gnucash/android/model/Split;->mReconcileState:C

    if-ne v3, v4, :cond_0

    .line 517
    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    iget-object v4, v0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    invoke-virtual {v3, v4}, Lorg/gnucash/android/model/Money;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    iget-object v4, v0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    invoke-virtual {v3, v4}, Lorg/gnucash/android/model/Money;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 519
    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    iget-object v4, v0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    iget-object v4, v0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    iget-object v4, v0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    if-ne v3, v4, :cond_0

    .line 522
    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    iget-object v2, v0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_1
.end method

.method public getAccountUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedQuantity()Lorg/gnucash/android/model/Money;
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    invoke-static {v0, v1, v2}, Lorg/gnucash/android/model/Split;->getFormattedAmount(Lorg/gnucash/android/model/Money;Ljava/lang/String;Lorg/gnucash/android/model/TransactionType;)Lorg/gnucash/android/model/Money;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedValue()Lorg/gnucash/android/model/Money;
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    invoke-static {v0, v1, v2}, Lorg/gnucash/android/model/Split;->getFormattedAmount(Lorg/gnucash/android/model/Money;Ljava/lang/String;Lorg/gnucash/android/model/TransactionType;)Lorg/gnucash/android/model/Money;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Lorg/gnucash/android/model/Money;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    return-object v0
.end method

.method public getReconcileDate()Ljava/sql/Timestamp;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mReconcileDate:Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getReconcileState()C
    .locals 1

    .prologue
    .line 351
    iget-char v0, p0, Lorg/gnucash/android/model/Split;->mReconcileState:C

    return v0
.end method

.method public getTransactionUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/gnucash/android/model/TransactionType;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    return-object v0
.end method

.method public getValue()Lorg/gnucash/android/model/Money;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 527
    invoke-super {p0}, Lorg/gnucash/android/model/BaseModel;->hashCode()I

    move-result v0

    .line 528
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 529
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 530
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 531
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 532
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    invoke-virtual {v2}, Lorg/gnucash/android/model/TransactionType;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 533
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 534
    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Lorg/gnucash/android/model/Split;->mReconcileState:C

    add-int v0, v1, v2

    .line 535
    return v0

    .line 533
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEquivalentTo(Lorg/gnucash/android/model/Split;)Z
    .locals 4
    .param p1, "split"    # Lorg/gnucash/android/model/Split;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 488
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 497
    :cond_0
    :goto_0
    return v1

    .line 489
    :cond_1
    invoke-super {p0, p1}, Lorg/gnucash/android/model/BaseModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_0

    .line 491
    :cond_2
    iget-char v2, p0, Lorg/gnucash/android/model/Split;->mReconcileState:C

    iget-char v3, p1, Lorg/gnucash/android/model/Split;->mReconcileState:C

    if-ne v2, v3, :cond_0

    .line 492
    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    iget-object v3, p1, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/Money;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    iget-object v3, p1, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/Money;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    iget-object v3, p1, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    iget-object v3, p1, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    iget-object v3, p1, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    if-ne v2, v3, :cond_0

    .line 497
    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    iget-object v1, p1, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1
.end method

.method public isPairOf(Lorg/gnucash/android/model/Split;)Z
    .locals 2
    .param p1, "other"    # Lorg/gnucash/android/model/Split;

    .prologue
    .line 282
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    iget-object v1, p1, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Money;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    .line 283
    invoke-virtual {v0}, Lorg/gnucash/android/model/TransactionType;->invert()Lorg/gnucash/android/model/TransactionType;

    move-result-object v0

    iget-object v1, p1, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/TransactionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 282
    :goto_0
    return v0

    .line 283
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReconciled()Z
    .locals 2

    .prologue
    .line 359
    iget-char v0, p0, Lorg/gnucash/android/model/Split;->mReconcileState:C

    const/16 v1, 0x79

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccountUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0
    .param p1, "memo"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setQuantity(Lorg/gnucash/android/model/Money;)V
    .locals 1
    .param p1, "quantity"    # Lorg/gnucash/android/model/Money;

    .prologue
    .line 175
    invoke-virtual {p1}, Lorg/gnucash/android/model/Money;->abs()Lorg/gnucash/android/model/Money;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    .line 176
    return-void
.end method

.method public setReconcileDate(Ljava/sql/Timestamp;)V
    .locals 0
    .param p1, "reconcileDate"    # Ljava/sql/Timestamp;

    .prologue
    .line 392
    iput-object p1, p0, Lorg/gnucash/android/model/Split;->mReconcileDate:Ljava/sql/Timestamp;

    .line 393
    return-void
.end method

.method public setReconcileState(C)V
    .locals 0
    .param p1, "reconcileState"    # C

    .prologue
    .line 376
    iput-char p1, p0, Lorg/gnucash/android/model/Split;->mReconcileState:C

    .line 377
    return-void
.end method

.method public setTransactionUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionUID"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setType(Lorg/gnucash/android/model/TransactionType;)V
    .locals 0
    .param p1, "splitType"    # Lorg/gnucash/android/model/TransactionType;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    .line 224
    return-void
.end method

.method public setValue(Lorg/gnucash/android/model/Money;)V
    .locals 1
    .param p1, "value"    # Lorg/gnucash/android/model/Money;

    .prologue
    .line 152
    invoke-virtual {p1}, Lorg/gnucash/android/model/Money;->abs()Lorg/gnucash/android/model/Money;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    .line 153
    return-void
.end method

.method public toCsv()Ljava/lang/String;
    .locals 6

    .prologue
    .line 413
    const-string v0, ";"

    .line 415
    .local v0, "sep":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/gnucash/android/model/Split;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Money;->getNumerator()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Money;->getDenominator()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    .line 416
    invoke-virtual {v3}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Money;->getNumerator()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    .line 417
    invoke-virtual {v3}, Lorg/gnucash/android/model/Money;->getDenominator()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    .line 418
    invoke-virtual {v3}, Lorg/gnucash/android/model/TransactionType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "splitString":Ljava/lang/String;
    iget-object v2, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    invoke-virtual {v1}, Lorg/gnucash/android/model/TransactionType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    invoke-virtual {v1}, Lorg/gnucash/android/model/Money;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 545
    invoke-virtual {p0}, Lorg/gnucash/android/model/Split;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mAccountUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mTransactionUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mSplitType:Lorg/gnucash/android/model/TransactionType;

    invoke-virtual {v0}, Lorg/gnucash/android/model/TransactionType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->getNumerator()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 551
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->getDenominator()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 552
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mValue:Lorg/gnucash/android/model/Money;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->getNumerator()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 555
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->getDenominator()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 556
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mQuantity:Lorg/gnucash/android/model/Money;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    iget-char v0, p0, Lorg/gnucash/android/model/Split;->mReconcileState:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mReconcileDate:Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/model/Split;->mMemo:Ljava/lang/String;

    goto :goto_0
.end method
