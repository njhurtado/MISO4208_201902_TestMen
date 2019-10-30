.class public Lorg/gnucash/android/db/adapter/SplitsDbAdapter;
.super Lorg/gnucash/android/db/adapter/DatabaseAdapter;
.source "SplitsDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/gnucash/android/db/adapter/DatabaseAdapter",
        "<",
        "Lorg/gnucash/android/model/Split;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 54
    const-string v0, "splits"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "memo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "value_num"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "value_denom"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "quantity_num"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "quantity_denom"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "created_at"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "reconcile_state"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "reconcile_date"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "account_uid"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "transaction_uid"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private calculateSplitBalance(Ljava/util/List;Ljava/lang/String;ZJJ)Lorg/gnucash/android/model/Money;
    .locals 28
    .param p2, "currencyCode"    # Ljava/lang/String;
    .param p3, "hasDebitNormalBalance"    # Z
    .param p4, "startTimestamp"    # J
    .param p6, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZJJ)",
            "Lorg/gnucash/android/model/Money;"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "accountUIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 185
    new-instance v25, Lorg/gnucash/android/model/Money;

    const-string v4, "0"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lorg/gnucash/android/model/Money;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    return-object v25

    .line 189
    :cond_0
    const/4 v8, 0x0

    .line 190
    .local v8, "selectionArgs":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accounts_uid in ( \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' , \'"

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' ) AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "transactions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is_template"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, "selection":Ljava/lang/String;
    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-eqz v4, :cond_4

    const-wide/16 v4, -0x1

    cmp-long v4, p6, v4

    if-eqz v4, :cond_4

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND transactions_timestamp BETWEEN ? AND ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 195
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x1

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 204
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "trans_split_acct"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v14, "TOTAL ( CASE WHEN splits_type = \'DEBIT\' THEN splits_quantity_num ELSE - splits_quantity_num END )"

    aput-object v14, v6, v9

    const/4 v9, 0x1

    const-string v14, "splits_quantity_denom"

    aput-object v14, v6, v9

    const/4 v9, 0x2

    const-string v14, "accounts_currency_code"

    aput-object v14, v6, v9

    const-string v9, "accounts_currency_code"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 213
    .local v22, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p2 .. p2}, Lorg/gnucash/android/model/Money;->createZeroInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v25

    .line 214
    .local v25, "total":Lorg/gnucash/android/model/Money;
    const/16 v17, 0x0

    .line 215
    .local v17, "commoditiesDbAdapter":Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;
    const/16 v24, 0x0

    .line 216
    .local v24, "pricesDbAdapter":Lorg/gnucash/android/db/adapter/PricesDbAdapter;
    const/16 v18, 0x0

    .line 217
    .local v18, "commodity":Lorg/gnucash/android/model/Commodity;
    const/16 v21, 0x0

    .line 218
    .local v21, "currencyUID":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 219
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 220
    .local v10, "amount_num":J
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 221
    .local v12, "amount_denom":J
    const/4 v4, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 223
    .local v19, "commodityCode":Ljava/lang/String;
    const-string v4, "XXX"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-eqz v4, :cond_2

    .line 227
    if-nez p3, :cond_3

    .line 228
    neg-long v10, v10

    .line 230
    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 232
    new-instance v9, Lorg/gnucash/android/model/Money;

    move-object/from16 v14, p2

    invoke-direct/range {v9 .. v14}, Lorg/gnucash/android/model/Money;-><init>(JJLjava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lorg/gnucash/android/model/Money;->add(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v25

    goto :goto_2

    .line 196
    .end local v10    # "amount_num":J
    .end local v12    # "amount_denom":J
    .end local v17    # "commoditiesDbAdapter":Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;
    .end local v18    # "commodity":Lorg/gnucash/android/model/Commodity;
    .end local v19    # "commodityCode":Ljava/lang/String;
    .end local v21    # "currencyUID":Ljava/lang/String;
    .end local v22    # "cursor":Landroid/database/Cursor;
    .end local v24    # "pricesDbAdapter":Lorg/gnucash/android/db/adapter/PricesDbAdapter;
    .end local v25    # "total":Lorg/gnucash/android/model/Money;
    :cond_4
    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-nez v4, :cond_5

    const-wide/16 v4, -0x1

    cmp-long v4, p6, v4

    if-eqz v4, :cond_5

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND transactions_timestamp <= ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 198
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_1

    .line 199
    :cond_5
    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-eqz v4, :cond_1

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND transactions_timestamp >= ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 201
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_1

    .line 236
    .restart local v10    # "amount_num":J
    .restart local v12    # "amount_denom":J
    .restart local v17    # "commoditiesDbAdapter":Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;
    .restart local v18    # "commodity":Lorg/gnucash/android/model/Commodity;
    .restart local v19    # "commodityCode":Ljava/lang/String;
    .restart local v21    # "currencyUID":Ljava/lang/String;
    .restart local v22    # "cursor":Landroid/database/Cursor;
    .restart local v24    # "pricesDbAdapter":Lorg/gnucash/android/db/adapter/PricesDbAdapter;
    .restart local v25    # "total":Lorg/gnucash/android/model/Money;
    :cond_6
    if-nez v17, :cond_7

    .line 237
    :try_start_1
    new-instance v17, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    .end local v17    # "commoditiesDbAdapter":Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 238
    .restart local v17    # "commoditiesDbAdapter":Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;
    new-instance v24, Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    .end local v24    # "pricesDbAdapter":Lorg/gnucash/android/db/adapter/PricesDbAdapter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 239
    .restart local v24    # "pricesDbAdapter":Lorg/gnucash/android/db/adapter/PricesDbAdapter;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v18

    .line 240
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodityUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 243
    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodityUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 244
    .local v20, "commodityUID":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->getPrice(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v23

    .line 245
    .local v23, "price":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v26, 0x0

    cmp-long v4, v4, v26

    if-lez v4, :cond_2

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v26, 0x0

    cmp-long v4, v4, v26

    if-lez v4, :cond_2

    .line 249
    invoke-static {v10, v11, v12, v13}, Lorg/gnucash/android/model/Money;->getBigDecimal(JJ)Ljava/math/BigDecimal;

    move-result-object v15

    .line 250
    .local v15, "amount":Ljava/math/BigDecimal;
    new-instance v5, Ljava/math/BigDecimal;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-direct {v5, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v15, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    new-instance v6, Ljava/math/BigDecimal;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 251
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-direct {v6, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v4

    const/4 v9, 0x6

    invoke-virtual {v5, v6, v4, v9}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v16

    .line 252
    .local v16, "amountConverted":Ljava/math/BigDecimal;
    new-instance v4, Lorg/gnucash/android/model/Money;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/gnucash/android/model/Money;->add(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v25

    goto/16 :goto_2

    .line 258
    .end local v10    # "amount_num":J
    .end local v12    # "amount_denom":J
    .end local v15    # "amount":Ljava/math/BigDecimal;
    .end local v16    # "amountConverted":Ljava/math/BigDecimal;
    .end local v19    # "commodityCode":Ljava/lang/String;
    .end local v20    # "commodityUID":Ljava/lang/String;
    .end local v23    # "price":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_8
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v17    # "commoditiesDbAdapter":Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;
    .end local v18    # "commodity":Lorg/gnucash/android/model/Commodity;
    .end local v21    # "currencyUID":Ljava/lang/String;
    .end local v24    # "pricesDbAdapter":Lorg/gnucash/android/db/adapter/PricesDbAdapter;
    .end local v25    # "total":Lorg/gnucash/android/model/Money;
    :catchall_0
    move-exception v4

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public static getInstance()Lorg/gnucash/android/db/adapter/SplitsDbAdapter;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getSplitsDbAdapter()Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V
    .locals 0
    .param p1    # Lorg/gnucash/android/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    check-cast p1, Lorg/gnucash/android/model/Split;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->addRecord(Lorg/gnucash/android/model/Split;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    return-void
.end method

.method public addRecord(Lorg/gnucash/android/model/Split;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V
    .locals 6
    .param p1, "split"    # Lorg/gnucash/android/model/Split;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "updateMethod"    # Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Replace transaction split in db"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1, p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 86
    invoke-virtual {p1}, Lorg/gnucash/android/model/Split;->getTransactionUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getTransactionID(Ljava/lang/String;)J

    move-result-wide v2

    .line 88
    .local v2, "transactionId":J
    const-string v1, "transactions"

    const-string v4, "is_exported"

    const/4 v0, 0x0

    .line 89
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 88
    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->updateRecord(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v1, "transactions"

    const-string v4, "modified_at"

    .line 93
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromNow()Ljava/sql/Timestamp;

    move-result-object v0

    invoke-static {v0}, Lorg/gnucash/android/util/TimestampHelper;->getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 92
    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->updateRecord(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public bridge synthetic buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BaseModel;
    .locals 1
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Split;

    move-result-object v0

    return-object v0
.end method

.method public buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Split;
    .locals 25
    .param p1, "cursor"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    const-string v23, "value_num"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 124
    .local v6, "valueNum":J
    const-string v23, "value_denom"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 125
    .local v8, "valueDenom":J
    const-string v23, "quantity_num"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 126
    .local v12, "quantityNum":J
    const-string v23, "quantity_denom"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 127
    .local v14, "quantityDenom":J
    const-string v23, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 128
    .local v22, "typeName":Ljava/lang/String;
    const-string v23, "account_uid"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "accountUID":Ljava/lang/String;
    const-string v23, "transaction_uid"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 130
    .local v21, "transxUID":Ljava/lang/String;
    const-string v23, "memo"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 131
    .local v17, "memo":Ljava/lang/String;
    const-string v23, "reconcile_state"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 132
    .local v19, "reconcileState":Ljava/lang/String;
    const-string v23, "reconcile_date"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 134
    .local v18, "reconcileDate":Ljava/lang/String;
    const-string v23, "transactions"

    const-string v24, "currency_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 135
    .local v10, "transactionCurrency":Ljava/lang/String;
    new-instance v5, Lorg/gnucash/android/model/Money;

    invoke-direct/range {v5 .. v10}, Lorg/gnucash/android/model/Money;-><init>(JJLjava/lang/String;)V

    .line 136
    .local v5, "value":Lorg/gnucash/android/model/Money;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 137
    .local v16, "currencyCode":Ljava/lang/String;
    new-instance v11, Lorg/gnucash/android/model/Money;

    invoke-direct/range {v11 .. v16}, Lorg/gnucash/android/model/Money;-><init>(JJLjava/lang/String;)V

    .line 139
    .local v11, "quantity":Lorg/gnucash/android/model/Money;
    new-instance v20, Lorg/gnucash/android/model/Split;

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v4}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 140
    .local v20, "split":Lorg/gnucash/android/model/Split;
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lorg/gnucash/android/model/Split;->setQuantity(Lorg/gnucash/android/model/Money;)V

    .line 141
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->populateBaseModelAttributes(Landroid/database/Cursor;Lorg/gnucash/android/model/BaseModel;)V

    .line 142
    invoke-virtual/range {v20 .. v21}, Lorg/gnucash/android/model/Split;->setTransactionUID(Ljava/lang/String;)V

    .line 143
    invoke-static/range {v22 .. v22}, Lorg/gnucash/android/model/TransactionType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/TransactionType;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 144
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setMemo(Ljava/lang/String;)V

    .line 145
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setReconcileState(C)V

    .line 146
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_0

    .line 147
    invoke-static/range {v18 .. v18}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromUtcString(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Split;->setReconcileDate(Ljava/sql/Timestamp;)V

    .line 149
    :cond_0
    return-object v20
.end method

.method public computeSplitBalance(Ljava/util/List;Ljava/lang/String;Z)Lorg/gnucash/android/model/Money;
    .locals 8
    .param p2, "currencyCode"    # Ljava/lang/String;
    .param p3, "hasDebitNormalBalance"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/gnucash/android/model/Money;"
        }
    .end annotation

    .prologue
    .local p1, "accountUIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v4, -0x1

    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->calculateSplitBalance(Ljava/util/List;Ljava/lang/String;ZJJ)Lorg/gnucash/android/model/Money;

    move-result-object v0

    return-object v0
.end method

.method public computeSplitBalance(Ljava/util/List;Ljava/lang/String;ZJJ)Lorg/gnucash/android/model/Money;
    .locals 2
    .param p2, "currencyCode"    # Ljava/lang/String;
    .param p3, "hasDebitNormalBalance"    # Z
    .param p4, "startTimestamp"    # J
    .param p6, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZJJ)",
            "Lorg/gnucash/android/model/Money;"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "accountUIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p7}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->calculateSplitBalance(Ljava/util/List;Ljava/lang/String;ZJJ)Lorg/gnucash/android/model/Money;

    move-result-object v0

    return-object v0
.end method

.method public deleteRecord(J)Z
    .locals 13
    .param p1, "rowId"    # J

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 403
    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getRecord(J)Lorg/gnucash/android/model/BaseModel;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/model/Split;

    .line 404
    .local v2, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v2}, Lorg/gnucash/android/model/Split;->getTransactionUID()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "transactionUID":Ljava/lang/String;
    iget-object v8, p0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "splits"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_0

    move v1, v6

    .line 407
    .local v1, "result":Z
    :goto_0
    if-nez v1, :cond_1

    .line 421
    :goto_1
    return v7

    .end local v1    # "result":Z
    :cond_0
    move v1, v7

    .line 405
    goto :goto_0

    .line 411
    .restart local v1    # "result":Z
    :cond_1
    invoke-virtual {p0, v3}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->fetchSplitsForTransaction(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 413
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 414
    invoke-virtual {p0, v3}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getTransactionID(Ljava/lang/String;)J

    move-result-wide v4

    .line 415
    .local v4, "transactionID":J
    iget-object v8, p0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "transactions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-lez v8, :cond_3

    move v1, v6

    .line 419
    .end local v4    # "transactionID":J
    :cond_2
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v7, v1

    .line 421
    goto :goto_1

    .restart local v4    # "transactionID":J
    :cond_3
    move v1, v7

    .line 415
    goto :goto_2

    .line 419
    .end local v4    # "transactionID":J
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method public fetchSplits(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "splits"

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchSplitsForAccount(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 340
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fetching all splits for account UID "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 345
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "transactions INNER JOIN splits ON transactions.uid = splits.transaction_uid"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 350
    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "splits.*"

    aput-object v1, v2, v10

    .line 351
    .local v2, "projectionIn":[Ljava/lang/String;
    const-string v3, "splits.account_uid = ? AND transactions.is_template = 0"

    .line 353
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    .line 354
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v7, "transactions.timestamp DESC"

    .line 356
    .local v7, "sortOrder":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public fetchSplitsForTransaction(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "transactionUID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching all splits for transaction UID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "splits"

    const-string v3, "transaction_uid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchSplitsForTransactionAndAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "transactionUID"    # Ljava/lang/String;
    .param p2, "accountUID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 367
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-object v2

    .line 370
    :cond_1
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching all splits for transaction ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "and account ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "splits"

    const-string v3, "transaction_uid = ? AND account_uid = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const-string v7, "value_num ASC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0
.end method

.method public getSplitsForTransaction(J)Ljava/util/List;
    .locals 1
    .param p1, "transactionID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getTransactionUID(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getSplitsForTransaction(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSplitsForTransaction(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "transactionUID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->fetchSplitsForTransaction(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 269
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v1, "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Split;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 277
    return-object v1
.end method

.method public getSplitsForTransactionInAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "transactionUID"    # Ljava/lang/String;
    .param p2, "accountUID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->fetchSplitsForTransactionAndAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 299
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v1, "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    if-eqz v0, :cond_1

    .line 301
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Split;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_1
    return-object v1
.end method

.method public getTransactionID(Ljava/lang/String;)J
    .locals 9
    .param p1, "transactionUID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 430
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transactions"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "uid=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 435
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 441
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 436
    return-wide v0

    .line 438
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getTransactionUID(J)Ljava/lang/String;
    .locals 9
    .param p1, "transactionId"    # J

    .prologue
    const/4 v4, 0x0

    .line 385
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transactions"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "uid"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 391
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "uid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 397
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 392
    return-object v0

    .line 394
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
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
    .line 51
    check-cast p2, Lorg/gnucash/android/model/Split;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Split;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Split;)Landroid/database/sqlite/SQLiteStatement;
    .locals 4
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "split"    # Lorg/gnucash/android/model/Split;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 99
    invoke-virtual {p2}, Lorg/gnucash/android/model/Split;->getMemo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p2}, Lorg/gnucash/android/model/Split;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 102
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2}, Lorg/gnucash/android/model/Split;->getType()Lorg/gnucash/android/model/TransactionType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/TransactionType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    const/4 v0, 0x3

    invoke-virtual {p2}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/Money;->getNumerator()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 104
    const/4 v0, 0x4

    invoke-virtual {p2}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/Money;->getDenominator()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 105
    const/4 v0, 0x5

    invoke-virtual {p2}, Lorg/gnucash/android/model/Split;->getQuantity()Lorg/gnucash/android/model/Money;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/Money;->getNumerator()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 106
    const/4 v0, 0x6

    invoke-virtual {p2}, Lorg/gnucash/android/model/Split;->getQuantity()Lorg/gnucash/android/model/Money;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/Money;->getDenominator()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 107
    const/4 v0, 0x7

    invoke-virtual {p2}, Lorg/gnucash/android/model/Split;->getCreatedTimestamp()Ljava/sql/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    const/16 v0, 0x8

    invoke-virtual {p2}, Lorg/gnucash/android/model/Split;->getReconcileState()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 109
    const/16 v0, 0x9

    invoke-virtual {p2}, Lorg/gnucash/android/model/Split;->getReconcileDate()Ljava/sql/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 110
    const/16 v0, 0xa

    invoke-virtual {p2}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 111
    const/16 v0, 0xb

    invoke-virtual {p2}, Lorg/gnucash/android/model/Split;->getTransactionUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 112
    const/16 v0, 0xc

    invoke-virtual {p2}, Lorg/gnucash/android/model/Split;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 114
    return-object p1
.end method
