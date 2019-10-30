.class public abstract Lorg/gnucash/android/db/adapter/DatabaseAdapter;
.super Ljava/lang/Object;
.source "DatabaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Lorg/gnucash/android/model/BaseModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected LOG_TAG:Ljava/lang/String;

.field protected final mColumns:[Ljava/lang/String;

.field protected final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field protected volatile mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

.field protected volatile mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

.field protected final mTableName:Ljava/lang/String;

.field protected volatile mUpdateStatement:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "columns"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "DatabaseAdapter"

    iput-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->LOG_TAG:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    iput-object p3, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mColumns:[Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Database not open or is read-only. Require writeable database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    .line 83
    invoke-direct {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->createTempView()V

    .line 85
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->LOG_TAG:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private createTempView()V
    .locals 2

    .prologue
    .line 100
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TEMP VIEW IF NOT EXISTS trans_split_acct AS SELECT transactions.modified_at AS transactions_modified_at , transactions.uid AS transactions_uid , transactions.name AS transactions_name , transactions.description AS transactions_description , transactions.currency_code AS transactions_currency_code , transactions.timestamp AS transactions_timestamp , transactions.is_exported AS transactions_is_exported , transactions.is_template AS transactions_is_template , splits.uid AS splits_uid , splits.type AS splits_type , splits.value_num AS splits_value_num , splits.value_denom AS splits_value_denom , splits.quantity_num AS splits_quantity_num , splits.quantity_denom AS splits_quantity_denom , splits.memo AS splits_memo , accounts.uid AS accounts_uid , accounts.name AS accounts_name , accounts.currency_code AS accounts_currency_code , accounts.parent_account_uid AS accounts_parent_account_uid , accounts.is_placeholder AS accounts_is_placeholder , accounts.color_code AS accounts_color_code , accounts.favorite AS accounts_favorite , accounts.full_name AS accounts_full_name , accounts.type AS accounts_type , accounts.default_transfer_account_uid AS accounts_default_transfer_account_uid FROM transactions , splits ON transactions.uid=splits.transaction_uid , accounts ON splits.account_uid=accounts.uid"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TEMP VIEW IF NOT EXISTS trans_extra_info AS SELECT transactions_uid AS trans_acct_t_uid , SUBSTR ( MIN ( ( CASE WHEN IFNULL ( splits_memo , \'\' ) == \'\' THEN \'a\' ELSE \'b\' END ) || accounts_uid ) , 2 ) AS trans_acct_a_uid , TOTAL ( CASE WHEN splits_type = \'DEBIT\' THEN splits_value_num ELSE - splits_value_num END ) * 1.0 / splits_value_denom AS trans_acct_balance , COUNT ( DISTINCT accounts_currency_code ) AS trans_currency_count , COUNT (*) AS trans_split_count FROM trans_split_acct  GROUP BY transactions_uid"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private doAddModels(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "updateMethod"    # Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;",
            "Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;",
            ")J"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    .local p1, "modelList":Ljava/util/List;, "Ljava/util/List<TModel;>;"
    const-wide/16 v6, 0x1

    .line 249
    const-wide/16 v2, 0x0

    .line 250
    .local v2, "nRow":J
    sget-object v1, Lorg/gnucash/android/db/adapter/DatabaseAdapter$1;->$SwitchMap$org$gnucash$android$db$adapter$DatabaseAdapter$UpdateMethod:[I

    invoke-virtual {p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 268
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getReplaceStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    monitor-enter v4

    .line 269
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/BaseModel;

    .line 270
    .local v0, "model":Lorg/gnucash/android/model/BaseModel;, "TModel;"
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getReplaceStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/BaseModel;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 271
    add-long/2addr v2, v6

    .line 272
    goto :goto_0

    .line 252
    .end local v0    # "model":Lorg/gnucash/android/model/BaseModel;, "TModel;"
    :pswitch_0
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getUpdateStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    monitor-enter v4

    .line 253
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/BaseModel;

    .line 254
    .restart local v0    # "model":Lorg/gnucash/android/model/BaseModel;, "TModel;"
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getUpdateStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/BaseModel;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 255
    add-long/2addr v2, v6

    .line 256
    goto :goto_1

    .line 257
    .end local v0    # "model":Lorg/gnucash/android/model/BaseModel;, "TModel;"
    :cond_0
    monitor-exit v4

    .line 276
    :goto_2
    return-wide v2

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 260
    :pswitch_1
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getInsertStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    monitor-enter v4

    .line 261
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/BaseModel;

    .line 262
    .restart local v0    # "model":Lorg/gnucash/android/model/BaseModel;, "TModel;"
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getInsertStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/BaseModel;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 263
    add-long/2addr v2, v6

    .line 264
    goto :goto_3

    .line 265
    .end local v0    # "model":Lorg/gnucash/android/model/BaseModel;, "TModel;"
    :cond_1
    monitor-exit v4

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 273
    :cond_2
    :try_start_3
    monitor-exit v4

    goto :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addRecord(Lorg/gnucash/android/model/BaseModel;)V
    .locals 1
    .param p1    # Lorg/gnucash/android/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    .local p1, "model":Lorg/gnucash/android/model/BaseModel;, "TModel;"
    sget-object v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->replace:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {p0, p1, v0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 213
    return-void
.end method

.method public addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V
    .locals 5
    .param p1    # Lorg/gnucash/android/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "updateMethod"    # Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;",
            "Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    .local p1, "model":Lorg/gnucash/android/model/BaseModel;, "TModel;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Adding %s record to database: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$1;->$SwitchMap$org$gnucash$android$db$adapter$DatabaseAdapter$UpdateMethod:[I

    invoke-virtual {p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 235
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getReplaceStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    monitor-enter v1

    .line 236
    :try_start_0
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getReplaceStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/BaseModel;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 237
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 240
    :goto_0
    return-void

    .line 225
    :pswitch_0
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getInsertStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    monitor-enter v1

    .line 226
    :try_start_1
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getInsertStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/BaseModel;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 227
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 230
    :pswitch_1
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getUpdateStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    monitor-enter v1

    .line 231
    :try_start_2
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getUpdateStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/BaseModel;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 232
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 237
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public beginTransaction()V
    .locals 1

    .prologue
    .line 773
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 774
    return-void
.end method

.method public abstract buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BaseModel;
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TModel;"
        }
    .end annotation
.end method

.method public bulkAddRecords(Ljava/util/List;)J
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;)J"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    .local p1, "modelList":Ljava/util/List;, "Ljava/util/List<TModel;>;"
    sget-object v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->replace:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {p0, p1, v0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "updateMethod"    # Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TModel;>;",
            "Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;",
            ")J"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    .local p1, "modelList":Ljava/util/List;, "Ljava/util/List<TModel;>;"
    const/4 v7, 0x0

    .line 290
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Empty model list. Cannot bulk add records, returning 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-wide/16 v0, 0x0

    .line 307
    :goto_0
    return-wide v0

    .line 295
    :cond_0
    iget-object v3, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Bulk adding %d %s records to the database"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    const/4 v6, 0x1

    .line 296
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "null"

    :goto_1
    aput-object v2, v5, v6

    .line 295
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-wide/16 v0, 0x0

    .line 299
    .local v0, "nRow":J
    :try_start_0
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 300
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->doAddModels(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    move-result-wide v0

    .line 301
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 296
    .end local v0    # "nRow":J
    :cond_1
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/model/BaseModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 304
    .restart local v0    # "nRow":J
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public deleteAllRecords()I
    .locals 3

    .prologue
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteRecord(J)Z
    .locals 5
    .param p1, "rowId"    # J

    .prologue
    .line 515
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting record with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteRecord(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 713
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->deleteRecord(J)Z

    move-result v0

    return v0
.end method

.method public enableForeignKey(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 790
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    if-eqz p1, :cond_0

    .line 791
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PRAGMA foreign_keys=ON;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 795
    :goto_0
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PRAGMA foreign_keys=OFF;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 801
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 802
    return-void
.end method

.method protected extractBaseModelAttributes(Landroid/content/ContentValues;Lorg/gnucash/android/model/BaseModel;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "contentValues"    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/gnucash/android/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "TModel;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    .local p2, "model":Lorg/gnucash/android/model/BaseModel;, "TModel;"
    const-string v0, "uid"

    invoke-virtual {p2}, Lorg/gnucash/android/model/BaseModel;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v0, "created_at"

    invoke-virtual {p2}, Lorg/gnucash/android/model/BaseModel;->getCreatedTimestamp()Ljava/sql/Timestamp;

    move-result-object v1

    invoke-static {v1}, Lorg/gnucash/android/util/TimestampHelper;->getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-object p1
.end method

.method public fetchAllRecords()Landroid/database/Cursor;
    .locals 1

    .prologue
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    const/4 v0, 0x0

    .line 495
    invoke-virtual {p0, v0, v0, v0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->fetchAllRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAllRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    const/4 v2, 0x0

    .line 506
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchRecord(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "rowId"    # J

    .prologue
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    const/4 v2, 0x0

    .line 476
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchRecord(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    const/4 v2, 0x0

    .line 486
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    const-string v3, "uid=?"

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

.method public getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "accountUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 585
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "currency_code"

    aput-object v3, v2, v6

    const-string v3, "uid= ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 590
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 596
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 591
    return-object v0

    .line 593
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account "

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

    .line 596
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;
    .locals 10
    .param p1, "accountUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 631
    const-string v9, ""

    .line 632
    .local v9, "type":Ljava/lang/String;
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v6

    const-string v3, "uid=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 637
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 643
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 645
    invoke-static {v9}, Lorg/gnucash/android/model/AccountType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v0

    return-object v0

    .line 640
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist in DB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getAllRecords()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TModel;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v1, "modelRecords":Ljava/util/List;, "Ljava/util/List<TModel;>;"
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->fetchAllRecords()Landroid/database/Cursor;

    move-result-object v0

    .line 429
    .local v0, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 435
    return-object v1
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "recordUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "columnName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 726
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "tableName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "recordUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "columnName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 743
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p3, v2, v1

    const-string v3, "uid = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v1

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 749
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-interface {v8, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 755
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 750
    return-object v0

    .line 752
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Record with GUID %s does not exist in the db"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 755
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getCommodityUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 607
    const-string v3, "mnemonic= ?"

    .line 608
    .local v3, "where":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v7

    .line 610
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "commodities"

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "uid"

    aput-object v6, v2, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 614
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    const-string v0, "uid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 620
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 615
    return-object v0

    .line 617
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Currency code not found in commodities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getID(Ljava/lang/String;)J
    .locals 12
    .param p1, "uid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 534
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "uid = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 539
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 541
    .local v10, "result":J
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 547
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 549
    return-wide v10

    .line 544
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with GUID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist in the db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected final getInsertStatement()Landroid/database/sqlite/SQLiteStatement;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 363
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    if-nez v0, :cond_1

    .line 364
    monitor-enter p0

    .line 365
    :try_start_0
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 366
    if-nez v0, :cond_0

    .line 367
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    iget-object v4, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mColumns:[Ljava/lang/String;

    .line 369
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) VALUES ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mColumns:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    const-string v4, "\u0000"

    const-string v5, "? , "

    .line 372
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 375
    :cond_0
    monitor-exit p0

    .line 377
    :cond_1
    return-object v0

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRecord(J)Lorg/gnucash/android/model/BaseModel;
    .locals 1
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TModel;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v0

    return-object v0
.end method

.method public getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TModel;"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching record with GUID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->fetchRecord(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 400
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BaseModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 407
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 401
    return-object v1

    .line 404
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Record with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getRecordsCount()J
    .locals 4

    .prologue
    .line 764
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(*) FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "sql":Ljava/lang/String;
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 766
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    return-wide v2
.end method

.method protected final getReplaceStatement()Landroid/database/sqlite/SQLiteStatement;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 327
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    if-nez v0, :cond_1

    .line 328
    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 330
    if-nez v0, :cond_0

    .line 331
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REPLACE INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    iget-object v4, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mColumns:[Ljava/lang/String;

    .line 333
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) VALUES ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mColumns:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    const-string v4, "\u0000"

    const-string v5, "? , "

    .line 336
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 339
    :cond_0
    monitor-exit p0

    .line 341
    :cond_1
    return-object v0

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUID(J)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # J

    .prologue
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    const/4 v4, 0x0

    .line 559
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

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

    .line 564
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 566
    .local v9, "uid":Ljava/lang/String;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    const-string v0, "uid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 572
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 574
    return-object v9

    .line 569
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Record ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist in the db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected final getUpdateStatement()Landroid/database/sqlite/SQLiteStatement;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 346
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    if-nez v0, :cond_1

    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 349
    if-nez v0, :cond_0

    .line 350
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ? , "

    iget-object v4, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mColumns:[Ljava/lang/String;

    .line 352
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ? WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 356
    :cond_0
    monitor-exit p0

    .line 358
    :cond_1
    return-object v0

    .line 356
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 202
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method protected populateBaseModelAttributes(Landroid/database/Cursor;Lorg/gnucash/android/model/BaseModel;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "model"    # Lorg/gnucash/android/model/BaseModel;

    .prologue
    .line 461
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    const-string v3, "uid"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "uid":Ljava/lang/String;
    const-string v3, "created_at"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "created":Ljava/lang/String;
    const-string v3, "modified_at"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "modified":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/gnucash/android/model/BaseModel;->setUID(Ljava/lang/String;)V

    .line 466
    invoke-static {v0}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromUtcString(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/gnucash/android/model/BaseModel;->setCreatedTimestamp(Ljava/sql/Timestamp;)V

    .line 467
    invoke-static {v1}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromUtcString(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/gnucash/android/model/BaseModel;->setModifiedTimestamp(Ljava/sql/Timestamp;)V

    .line 468
    return-void
.end method

.method protected abstract setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/BaseModel;)Landroid/database/sqlite/SQLiteStatement;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "TModel;)",
            "Landroid/database/sqlite/SQLiteStatement;"
        }
    .end annotation
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 780
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 781
    return-void
.end method

.method protected updateRecord(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "recordId"    # J
    .param p4, "columnKey"    # Ljava/lang/String;
    .param p5, "newValue"    # Ljava/lang/String;

    .prologue
    .line 656
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 657
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-nez p5, :cond_0

    .line 658
    invoke-virtual {v0, p4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 662
    :goto_0
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 660
    :cond_0
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateRecord(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentValues"    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 684
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    const-string v2, "uid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "newValue"    # Ljava/lang/String;

    .prologue
    .line 674
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    const-string v0, "uid= ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->updateRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .param p3, "columnKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "newValue"    # Ljava/lang/String;

    .prologue
    .line 696
    .local p0, "this":Lorg/gnucash/android/db/adapter/DatabaseAdapter;, "Lorg/gnucash/android/db/adapter/DatabaseAdapter<TModel;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 697
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-nez p4, :cond_0

    .line 698
    invoke-virtual {v0, p3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 702
    :goto_0
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 700
    :cond_0
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
