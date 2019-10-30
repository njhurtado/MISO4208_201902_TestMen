.class public Lorg/gnucash/android/db/adapter/PricesDbAdapter;
.super Lorg/gnucash/android/db/adapter/DatabaseAdapter;
.source "PricesDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/gnucash/android/db/adapter/DatabaseAdapter",
        "<",
        "Lorg/gnucash/android/model/Price;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 24
    const-string v0, "prices"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "commodity_guid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "currency_guid"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "date"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "source"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "value_num"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "value_denom"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static getInstance()Lorg/gnucash/android/db/adapter/PricesDbAdapter;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getPricesDbAdapter()Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BaseModel;
    .locals 1
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Price;

    move-result-object v0

    return-object v0
.end method

.method public buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Price;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    const-string v10, "commodity_guid"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "commodityUID":Ljava/lang/String;
    const-string v10, "currency_guid"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "currencyUID":Ljava/lang/String;
    const-string v10, "date"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "dateString":Ljava/lang/String;
    const-string v10, "source"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "source":Ljava/lang/String;
    const-string v10, "type"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "type":Ljava/lang/String;
    const-string v10, "value_num"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 66
    .local v8, "valueNum":J
    const-string v10, "value_denom"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 68
    .local v6, "valueDenom":J
    new-instance v3, Lorg/gnucash/android/model/Price;

    invoke-direct {v3, v0, v1}, Lorg/gnucash/android/model/Price;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v3, "price":Lorg/gnucash/android/model/Price;
    invoke-static {v2}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromUtcString(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/gnucash/android/model/Price;->setDate(Ljava/sql/Timestamp;)V

    .line 70
    invoke-virtual {v3, v4}, Lorg/gnucash/android/model/Price;->setSource(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3, v5}, Lorg/gnucash/android/model/Price;->setType(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, v8, v9}, Lorg/gnucash/android/model/Price;->setValueNum(J)V

    .line 73
    invoke-virtual {v3, v6, v7}, Lorg/gnucash/android/model/Price;->setValueDenom(J)V

    .line 75
    invoke-virtual {p0, p1, v3}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->populateBaseModelAttributes(Landroid/database/Cursor;Lorg/gnucash/android/model/BaseModel;)V

    .line 76
    return-object v3
.end method

.method public getPrice(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 20
    .param p1, "commodityUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currencyUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v13, Landroid/util/Pair;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v13, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .local v13, "pairZero":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    new-instance v13, Landroid/util/Pair;

    .end local v13    # "pairZero":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v13, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    :goto_0
    return-object v13

    .line 97
    .restart local v13    # "pairZero":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "prices"

    const/4 v4, 0x0

    const-string v5, "( commodity_guid = ? AND currency_guid = ? ) OR ( commodity_guid = ? AND currency_guid = ? )"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    const/4 v7, 0x3

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date DESC"

    const-string v10, "1"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 105
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    const-string v2, "commodity_guid"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 107
    .local v11, "commodityUIDdb":Ljava/lang/String;
    const-string v2, "value_num"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 108
    .local v18, "valueNum":J
    const-string v2, "value_denom"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    .line 109
    .local v16, "valueDenom":J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-gez v2, :cond_2

    .line 124
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 113
    :cond_2
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 115
    move-wide/from16 v14, v18

    .line 116
    .local v14, "t":J
    move-wide/from16 v18, v16

    .line 117
    move-wide/from16 v16, v14

    .line 119
    .end local v14    # "t":J
    :cond_3
    new-instance v13, Landroid/util/Pair;

    .end local v13    # "pairZero":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v13, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11    # "commodityUIDdb":Ljava/lang/String;
    .end local v16    # "valueDenom":J
    .end local v18    # "valueNum":J
    .restart local v13    # "pairZero":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v13    # "pairZero":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method protected bridge synthetic setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/BaseModel;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/gnucash/android/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 18
    check-cast p2, Lorg/gnucash/android/model/Price;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Price;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Price;)Landroid/database/sqlite/SQLiteStatement;
    .locals 4
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "price"    # Lorg/gnucash/android/model/Price;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p2}, Lorg/gnucash/android/model/Price;->getCommodityUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 43
    const/4 v0, 0x2

    invoke-virtual {p2}, Lorg/gnucash/android/model/Price;->getCurrencyUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 44
    const/4 v0, 0x3

    invoke-virtual {p2}, Lorg/gnucash/android/model/Price;->getDate()Ljava/sql/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Lorg/gnucash/android/model/Price;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x4

    invoke-virtual {p2}, Lorg/gnucash/android/model/Price;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 48
    :cond_0
    invoke-virtual {p2}, Lorg/gnucash/android/model/Price;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x5

    invoke-virtual {p2}, Lorg/gnucash/android/model/Price;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p2}, Lorg/gnucash/android/model/Price;->getValueNum()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 52
    const/4 v0, 0x7

    invoke-virtual {p2}, Lorg/gnucash/android/model/Price;->getValueDenom()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 53
    const/16 v0, 0x8

    invoke-virtual {p2}, Lorg/gnucash/android/model/Price;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 55
    return-object p1
.end method
