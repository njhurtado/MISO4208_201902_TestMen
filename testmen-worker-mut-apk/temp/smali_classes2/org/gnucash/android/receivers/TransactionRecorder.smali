.class public Lorg/gnucash/android/receivers/TransactionRecorder;
.super Landroid/content/BroadcastReceiver;
.source "TransactionRecorder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Received transaction recording intent"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 61
    .local v7, "args":Landroid/os/Bundle;
    const-string v21, "android.intent.extra.TITLE"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 62
    .local v13, "name":Ljava/lang/String;
    const-string v21, "android.intent.extra.TEXT"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 64
    .local v14, "note":Ljava/lang/String;
    const-string v21, "org.gnucash.android.extra.currency_code"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "currencyCode":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 66
    sget-object v10, Lorg/gnucash/android/model/Money;->DEFAULT_CURRENCY_CODE:Ljava/lang/String;

    .line 68
    :cond_0
    new-instance v18, Lorg/gnucash/android/model/Transaction;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lorg/gnucash/android/model/Transaction;-><init>(Ljava/lang/String;)V

    .line 69
    .local v18, "transaction":Lorg/gnucash/android/model/Transaction;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/model/Transaction;->setTime(J)V

    .line 70
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/gnucash/android/model/Transaction;->setNote(Ljava/lang/String;)V

    .line 71
    invoke-static {v10}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Transaction;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 74
    const-string v21, "org.gnucash.android.extra.account_uid"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "accountUID":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 76
    const-string v21, "org.gnucash.android.extra.transaction_type"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/gnucash/android/model/TransactionType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/TransactionType;

    move-result-object v20

    .line 77
    .local v20, "type":Lorg/gnucash/android/model/TransactionType;
    const-string v21, "org.gnucash.android.extra.amount"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/math/BigDecimal;

    .line 78
    .local v6, "amountBigDecimal":Ljava/math/BigDecimal;
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v9

    .line 79
    .local v9, "commodity":Lorg/gnucash/android/model/Commodity;
    invoke-virtual {v9}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v21

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v21

    sget-object v22, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v6

    .line 80
    new-instance v5, Lorg/gnucash/android/model/Money;

    invoke-static {v10}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v6, v0}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    .line 81
    .local v5, "amount":Lorg/gnucash/android/model/Money;
    new-instance v15, Lorg/gnucash/android/model/Split;

    invoke-direct {v15, v5, v4}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 82
    .local v15, "split":Lorg/gnucash/android/model/Split;
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 83
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/gnucash/android/model/Transaction;->addSplit(Lorg/gnucash/android/model/Split;)V

    .line 85
    const-string v21, "org.gnucash.android.extra.double_account_uid"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 86
    .local v19, "transferAccountUID":Ljava/lang/String;
    if-eqz v19, :cond_1

    .line 87
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/gnucash/android/model/Split;->createPair(Ljava/lang/String;)Lorg/gnucash/android/model/Split;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Transaction;->addSplit(Lorg/gnucash/android/model/Split;)V

    .line 91
    .end local v5    # "amount":Lorg/gnucash/android/model/Money;
    .end local v6    # "amountBigDecimal":Ljava/math/BigDecimal;
    .end local v9    # "commodity":Lorg/gnucash/android/model/Commodity;
    .end local v15    # "split":Lorg/gnucash/android/model/Split;
    .end local v19    # "transferAccountUID":Ljava/lang/String;
    .end local v20    # "type":Lorg/gnucash/android/model/TransactionType;
    :cond_1
    const-string v21, "org.gnucash.android.extra.transaction.splits"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 92
    .local v16, "splits":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 93
    new-instance v17, Ljava/io/StringReader;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 94
    .local v17, "stringReader":Ljava/io/StringReader;
    new-instance v8, Ljava/io/BufferedReader;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 95
    .local v8, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 97
    .local v12, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 98
    invoke-static {v12}, Lorg/gnucash/android/model/Split;->parseSplit(Ljava/lang/String;)Lorg/gnucash/android/model/Split;

    move-result-object v15

    .line 99
    .restart local v15    # "split":Lorg/gnucash/android/model/Split;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lorg/gnucash/android/model/Transaction;->addSplit(Lorg/gnucash/android/model/Split;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v15    # "split":Lorg/gnucash/android/model/Split;
    :catch_0
    move-exception v11

    .line 102
    .local v11, "e":Ljava/io/IOException;
    invoke-static {v11}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 106
    .end local v8    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "line":Ljava/lang/String;
    .end local v17    # "stringReader":Ljava/io/StringReader;
    :cond_2
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v21

    sget-object v22, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->addRecord(Lorg/gnucash/android/model/Transaction;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 108
    invoke-static/range {p1 .. p1}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->updateAllWidgets(Landroid/content/Context;)V

    .line 109
    return-void
.end method
