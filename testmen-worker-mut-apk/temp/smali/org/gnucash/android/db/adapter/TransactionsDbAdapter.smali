.class public Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
.super Lorg/gnucash/android/db/adapter/DatabaseAdapter;
.source "TransactionsDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/gnucash/android/db/adapter/DatabaseAdapter",
        "<",
        "Lorg/gnucash/android/model/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

.field private final mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/SplitsDbAdapter;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "splitsDbAdapter"    # Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    .prologue
    .line 67
    const-string v0, "transactions"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "timestamp"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "is_exported"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "currency_code"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "commodity_uid"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "created_at"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "scheduled_action_uid"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "is_template"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 78
    iput-object p2, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    .line 79
    new-instance v0, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    invoke-direct {v0, p1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    .line 80
    return-void
.end method

.method public static getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getTransactionDbAdapter()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getTimestamp(Ljava/lang/String;Lorg/gnucash/android/model/AccountType;Ljava/lang/String;)J
    .locals 8
    .param p1, "mod"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/gnucash/android/model/AccountType;
    .param p3, "currencyCode"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "timestamp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "transactions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INNER JOIN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "splits"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ON "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "splits"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "transaction_uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "transactions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INNER JOIN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "accounts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ON "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "accounts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "splits"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account_uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "accounts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = ? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "transactions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "currency_code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = ? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "transactions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is_template"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "sql":Ljava/lang/String;
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p2}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-virtual {v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 658
    .local v0, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    .line 659
    .local v2, "timestamp":J
    if-eqz v0, :cond_1

    .line 660
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 661
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 663
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 665
    :cond_1
    return-wide v2
.end method


# virtual methods
.method public bridge synthetic addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V
    .locals 0
    .param p1    # Lorg/gnucash/android/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    check-cast p1, Lorg/gnucash/android/model/Transaction;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->addRecord(Lorg/gnucash/android/model/Transaction;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    return-void
.end method

.method public addRecord(Lorg/gnucash/android/model/Transaction;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V
    .locals 13
    .param p1, "transaction"    # Lorg/gnucash/android/model/Transaction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "updateMethod"    # Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    .prologue
    .line 102
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding transaction to the db via "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 105
    :try_start_0
    invoke-virtual {p1}, Lorg/gnucash/android/model/Transaction;->createAutoBalanceSplit()Lorg/gnucash/android/model/Split;

    move-result-object v3

    .line 106
    .local v3, "imbalanceSplit":Lorg/gnucash/android/model/Split;
    if-eqz v3, :cond_0

    .line 107
    new-instance v7, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v8, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v7, v8, p0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;)V

    .line 108
    invoke-virtual {p1}, Lorg/gnucash/android/model/Transaction;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateImbalanceAccountUID(Lorg/gnucash/android/model/Commodity;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "imbalanceAccountUID":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/gnucash/android/model/Split;->setAccountUID(Ljava/lang/String;)V

    .line 111
    .end local v2    # "imbalanceAccountUID":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 113
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Adding splits for transaction"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Transaction;->getSplits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .local v5, "splitUIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/gnucash/android/model/Transaction;->getSplits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/gnucash/android/model/Split;

    .line 116
    .local v4, "split":Lorg/gnucash/android/model/Split;
    iget-object v8, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Replace transaction split in db"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-ne v3, v4, :cond_1

    .line 118
    iget-object v8, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    sget-object v9, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v8, v4, v9}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->addRecord(Lorg/gnucash/android/model/Split;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 122
    :goto_1
    invoke-virtual {v4}, Lorg/gnucash/android/model/Split;->getUID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    .end local v3    # "imbalanceSplit":Lorg/gnucash/android/model/Split;
    .end local v4    # "split":Lorg/gnucash/android/model/Split;
    .end local v5    # "splitUIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 134
    .local v6, "sqlEx":Landroid/database/SQLException;
    :try_start_1
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {v6}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 139
    .end local v6    # "sqlEx":Landroid/database/SQLException;
    :goto_2
    return-void

    .line 120
    .restart local v3    # "imbalanceSplit":Lorg/gnucash/android/model/Split;
    .restart local v4    # "split":Lorg/gnucash/android/model/Split;
    .restart local v5    # "splitUIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    iget-object v8, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    invoke-virtual {v8, v4, p2}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->addRecord(Lorg/gnucash/android/model/Split;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 137
    .end local v3    # "imbalanceSplit":Lorg/gnucash/android/model/Split;
    .end local v4    # "split":Lorg/gnucash/android/model/Split;
    .end local v5    # "splitUIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 124
    .restart local v3    # "imbalanceSplit":Lorg/gnucash/android/model/Split;
    .restart local v5    # "splitUIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/gnucash/android/model/Transaction;->getSplits()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " splits added"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "splits"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "transaction_uid = ? AND uid NOT IN (\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' , \'"

    .line 128
    invoke-static {v10, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\')"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 129
    invoke-virtual {p1}, Lorg/gnucash/android/model/Transaction;->getUID()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 126
    invoke-virtual {v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    int-to-long v0, v7

    .line 130
    .local v0, "deleted":J
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " splits deleted"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2
.end method

.method public bridge synthetic buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BaseModel;
    .locals 1
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Transaction;
    .locals 10
    .param p1, "c"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 415
    const-string v3, "name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Lorg/gnucash/android/model/Transaction;

    invoke-direct {v2, v1}, Lorg/gnucash/android/model/Transaction;-><init>(Ljava/lang/String;)V

    .line 417
    .local v2, "transaction":Lorg/gnucash/android/model/Transaction;
    invoke-virtual {p0, p1, v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->populateBaseModelAttributes(Landroid/database/Cursor;Lorg/gnucash/android/model/BaseModel;)V

    .line 419
    const-string v3, "timestamp"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lorg/gnucash/android/model/Transaction;->setTime(J)V

    .line 420
    const-string v3, "description"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/Transaction;->setNote(Ljava/lang/String;)V

    .line 421
    const-string v3, "is_exported"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_0

    move v3, v6

    :goto_0
    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/Transaction;->setExported(Z)V

    .line 422
    const-string v3, "is_template"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_1

    :goto_1
    invoke-virtual {v2, v6}, Lorg/gnucash/android/model/Transaction;->setTemplate(Z)V

    .line 423
    const-string v3, "currency_code"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "currencyCode":Ljava/lang/String;
    iget-object v3, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    invoke-virtual {v3, v0}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/Transaction;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 425
    const-string v3, "scheduled_action_uid"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/Transaction;->setScheduledActionUID(Ljava/lang/String;)V

    .line 426
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 427
    .local v4, "transactionID":J
    iget-object v3, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    invoke-virtual {v3, v4, v5}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getSplitsForTransaction(J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/Transaction;->setSplits(Ljava/util/List;)V

    .line 429
    return-object v2

    .end local v0    # "currencyCode":Ljava/lang/String;
    .end local v4    # "transactionID":J
    :cond_0
    move v3, v7

    .line 421
    goto :goto_0

    :cond_1
    move v6, v7

    .line 422
    goto :goto_1
.end method

.method public bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J
    .locals 20
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "updateMethod"    # Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Transaction;",
            ">;",
            "Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;",
            ")J"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "transactionList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 153
    .local v10, "start":J
    invoke-super/range {p0 .. p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    move-result-wide v8

    .line 154
    .local v8, "rowInserted":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 155
    .local v4, "end":J
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "bulk add transaction time %d "

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sub-long v18, v4, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    mul-int/lit8 v13, v13, 0x3

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v3, "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/gnucash/android/model/Transaction;

    .line 158
    .local v12, "transaction":Lorg/gnucash/android/model/Transaction;
    invoke-virtual {v12}, Lorg/gnucash/android/model/Transaction;->getSplits()Ljava/util/List;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 160
    .end local v12    # "transaction":Lorg/gnucash/android/model/Transaction;
    :cond_0
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-eqz v13, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 162
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    move-result-wide v6

    .line 164
    .local v6, "nSplits":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v14, "%d splits inserted in %d ns"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    sub-long v18, v18, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "DELETE FROM transactions WHERE NOT EXISTS ( SELECT * FROM splits WHERE transactions.uid = splits.transaction_uid ) "

    invoke-virtual {v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 172
    .local v2, "deleteEmptyTransaction":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 175
    .end local v2    # "deleteEmptyTransaction":Landroid/database/sqlite/SQLiteStatement;
    .end local v6    # "nSplits":J
    :cond_1
    return-wide v8

    .line 167
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "DELETE FROM transactions WHERE NOT EXISTS ( SELECT * FROM splits WHERE transactions.uid = splits.transaction_uid ) "

    invoke-virtual {v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 172
    .restart local v2    # "deleteEmptyTransaction":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 173
    throw v13
.end method

.method public deleteAllNonTemplateTransactions()I
    .locals 4

    .prologue
    .line 592
    const-string v0, "is_template=0"

    .line 593
    .local v0, "where":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mTableName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteTransactionsForAccount(Ljava/lang/String;)V
    .locals 4
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 251
    const-string v0, "DELETE FROM transactions WHERE uid IN  (SELECT transaction_uid FROM splits WHERE account_uid = ?)"

    .line 254
    .local v0, "rawDeleteQuery":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public deleteTransactionsWithNoSplits()I
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transactions"

    const-string v2, "NOT EXISTS ( SELECT * FROM splits WHERE transactions.uid = splits.transaction_uid ) "

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public fetchAllScheduledTransactions()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 277
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 278
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "transactions INNER JOIN scheduled_actions ON transactions.uid = scheduled_actions.action_uid"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 282
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "transactions.*"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "scheduled_actions.uid AS origin_scheduled_action_uid"

    aput-object v4, v2, v1

    .line 284
    .local v2, "projectionIn":[Ljava/lang/String;
    const-string v7, "transactions.name ASC"

    .line 287
    .local v7, "sortOrder":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public fetchAllTransactionsForAccount(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 207
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 208
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "transactions INNER JOIN splits ON transactions.uid = splits.transaction_uid"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 213
    new-array v2, v6, [Ljava/lang/String;

    const-string v1, "transactions.*"

    aput-object v1, v2, v8

    .line 214
    .local v2, "projectionIn":[Ljava/lang/String;
    const-string v3, "splits.account_uid = ? AND transactions.is_template = 0"

    .line 216
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 217
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v7, "transactions.timestamp DESC"

    .line 219
    .local v7, "sortOrder":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public fetchScheduledTransactionsForAccount(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 229
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 230
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "transactions INNER JOIN splits ON transactions.uid = splits.transaction_uid"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 235
    new-array v2, v6, [Ljava/lang/String;

    const-string v1, "transactions.*"

    aput-object v1, v2, v8

    .line 236
    .local v2, "projectionIn":[Ljava/lang/String;
    const-string v3, "splits.account_uid = ? AND transactions.is_template = 1"

    .line 238
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 239
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v7, "transactions.timestamp DESC"

    .line 241
    .local v7, "sortOrder":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public fetchTransactionSuggestions(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "accountUID"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 533
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 534
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "transactions INNER JOIN splits ON transactions.uid = splits.transaction_uid"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 539
    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "transactions.*"

    aput-object v1, v2, v10

    .line 540
    .local v2, "projectionIn":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(splits.account_uid = ? OR transactions.is_template=1 ) AND transactions.name LIKE \'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "%\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 543
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    aput-object p2, v4, v10

    .line 544
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v7, "transactions.timestamp DESC"

    .line 545
    .local v7, "sortOrder":Ljava/lang/String;
    const-string v5, "name"

    .line 546
    .local v5, "groupBy":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 548
    .local v8, "limit":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public fetchTransactionsModifiedSince(Ljava/sql/Timestamp;)Landroid/database/Cursor;
    .locals 10
    .param p1, "timestamp"    # Ljava/sql/Timestamp;

    .prologue
    const/4 v2, 0x0

    .line 340
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 341
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "transactions"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 342
    invoke-static {p1}, Lorg/gnucash/android/util/TimestampHelper;->getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v9

    .line 343
    .local v9, "startTimeString":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modified_at >= \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "timestamp ASC"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public fetchTransactionsWithSplits([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "whereArgs"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "orderBy"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 326
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transactions , splits ON transactions.uid = splits.transaction_uid , trans_extra_info ON trans_extra_info.trans_acct_t_uid = transactions.uid"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchTransactionsWithSplitsWithTransactionAccount([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 358
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trans_split_acct , trans_extra_info ON trans_extra_info.trans_acct_t_uid = trans_split_acct.transactions_uid , accounts AS account1 ON account1.uid = trans_extra_info.trans_acct_a_uid"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAllTransactions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->fetchAllRecords()Landroid/database/Cursor;

    move-result-object v0

    .line 314
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v1, "transactions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Transaction;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 322
    return-object v1
.end method

.method public getAllTransactionsForAccount(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "accountUID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->fetchAllTransactionsForAccount(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 297
    .local v0, "c":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v1, "transactionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/gnucash/android/model/Transaction;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Transaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 305
    return-object v1
.end method

.method public getBalance(Ljava/lang/String;Ljava/lang/String;)Lorg/gnucash/android/model/Money;
    .locals 2
    .param p1, "transactionUID"    # Ljava/lang/String;
    .param p2, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getSplitsForTransactionInAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 443
    .local v0, "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    invoke-static {p2, v0}, Lorg/gnucash/android/model/Transaction;->computeBalance(Ljava/lang/String;Ljava/util/List;)Lorg/gnucash/android/model/Money;

    move-result-object v1

    return-object v1
.end method

.method public getNumCurrencies(Ljava/lang/String;)I
    .locals 10
    .param p1, "transactionUID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 569
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trans_extra_info"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "trans_currency_count"

    aput-object v3, v2, v6

    const-string v3, "trans_acct_t_uid=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 574
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 576
    .local v9, "numCurrencies":I
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 581
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 583
    return v9

    .line 581
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getRecordsCount()J
    .locals 4

    .prologue
    .line 371
    const-string v1, "SELECT COUNT(*) FROM transactions WHERE is_template =0"

    .line 373
    .local v1, "queryCount":Ljava/lang/String;
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 375
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 376
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 378
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 376
    return-wide v2

    .line 378
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public getRecordsCount(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 11
    .param p1, "where"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "whereArgs"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 389
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "transactions , trans_extra_info ON transactions.uid = trans_extra_info.trans_acct_t_uid"

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "COUNT(*)"

    aput-object v4, v3, v5

    move-object v4, p1

    move-object v5, p2

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 400
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 401
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 403
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 401
    return-wide v0

    .line 403
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getScheduledTransactionsForAccount(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "accountUID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->fetchScheduledTransactionsForAccount(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 499
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v1, "scheduledTransactions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Transaction;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 506
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 504
    return-object v1
.end method

.method public getSplitCount(Ljava/lang/String;)J
    .locals 4
    .param p1, "transactionUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 517
    const-wide/16 v2, 0x0

    .line 521
    :goto_0
    return-wide v2

    .line 518
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(*) FROM splits WHERE transaction_uid= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "sql":Ljava/lang/String;
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 521
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getSplitDbAdapter()Lorg/gnucash/android/db/adapter/SplitsDbAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    return-object v0
.end method

.method public getTemplateTransactionsCount()J
    .locals 4

    .prologue
    .line 487
    const-string v0, "SELECT COUNT(*) FROM transactions WHERE is_template=1"

    .line 489
    .local v0, "sql":Ljava/lang/String;
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 490
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public getTimestampOfEarliestTransaction(Lorg/gnucash/android/model/AccountType;Ljava/lang/String;)J
    .locals 2
    .param p1, "type"    # Lorg/gnucash/android/model/AccountType;
    .param p2, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 603
    const-string v0, "MIN"

    invoke-direct {p0, v0, p1, p2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getTimestamp(Ljava/lang/String;Lorg/gnucash/android/model/AccountType;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestampOfLastModification()Ljava/sql/Timestamp;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 621
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transactions"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "MAX(modified_at)"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 625
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromNow()Ljava/sql/Timestamp;

    move-result-object v10

    .line 626
    .local v10, "timestamp":Ljava/sql/Timestamp;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 628
    .local v9, "timeString":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 629
    invoke-static {v9}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromUtcString(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v10

    .line 632
    .end local v9    # "timeString":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 633
    return-object v10
.end method

.method public getTimestampOfLatestTransaction(Lorg/gnucash/android/model/AccountType;Ljava/lang/String;)J
    .locals 2
    .param p1, "type"    # Lorg/gnucash/android/model/AccountType;
    .param p2, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 613
    const-string v0, "MAX"

    invoke-direct {p0, v0, p1, p2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getTimestamp(Ljava/lang/String;Lorg/gnucash/android/model/AccountType;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransactionsCount(Ljava/lang/String;)I
    .locals 3
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->fetchAllTransactionsForAccount(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 472
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 473
    .local v0, "count":I
    if-nez v2, :cond_0

    move v1, v0

    .line 479
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    return v1

    .line 476
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 477
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v1, v0

    .line 479
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0
.end method

.method public moveTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "transactionUID"    # Ljava/lang/String;
    .param p2, "srcAccountUID"    # Ljava/lang/String;
    .param p3, "dstAccountUID"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving transaction ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " splits from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    invoke-virtual {v2, p1, p2}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getSplitsForTransactionInAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 458
    .local v1, "splits":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Split;

    .line 459
    .local v0, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v0, p3}, Lorg/gnucash/android/model/Split;->setAccountUID(Ljava/lang/String;)V

    goto :goto_0

    .line 461
    .end local v0    # "split":Lorg/gnucash/android/model/Split;
    :cond_0
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    sget-object v3, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->update:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v2, v1, v3}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    .line 462
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    return v2
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
    .line 56
    check-cast p2, Lorg/gnucash/android/model/Transaction;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Transaction;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Transaction;)Landroid/database/sqlite/SQLiteStatement;
    .locals 9
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "transaction"    # Lorg/gnucash/android/model/Transaction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const/16 v8, 0x8

    .line 180
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p2}, Lorg/gnucash/android/model/Transaction;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 182
    const/4 v0, 0x2

    invoke-virtual {p2}, Lorg/gnucash/android/model/Transaction;->getNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 183
    const/4 v0, 0x3

    invoke-virtual {p2}, Lorg/gnucash/android/model/Transaction;->getTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 184
    const/4 v6, 0x4

    invoke-virtual {p2}, Lorg/gnucash/android/model/Transaction;->isExported()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 185
    const/4 v0, 0x5

    invoke-virtual {p2}, Lorg/gnucash/android/model/Transaction;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 186
    const/4 v0, 0x6

    invoke-virtual {p2}, Lorg/gnucash/android/model/Transaction;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/Commodity;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 187
    const/4 v0, 0x7

    invoke-virtual {p2}, Lorg/gnucash/android/model/Transaction;->getCreatedTimestamp()Ljava/sql/Timestamp;

    move-result-object v1

    invoke-static {v1}, Lorg/gnucash/android/util/TimestampHelper;->getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Lorg/gnucash/android/model/Transaction;->getScheduledActionUID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 193
    :goto_1
    const/16 v0, 0x9

    invoke-virtual {p2}, Lorg/gnucash/android/model/Transaction;->isTemplate()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 194
    const/16 v0, 0xa

    invoke-virtual {p2}, Lorg/gnucash/android/model/Transaction;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 196
    return-object p1

    :cond_0
    move-wide v0, v4

    .line 184
    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p2}, Lorg/gnucash/android/model/Transaction;->getScheduledActionUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    move-wide v2, v4

    .line 193
    goto :goto_2
.end method

.method public updateTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 559
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transactions"

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
