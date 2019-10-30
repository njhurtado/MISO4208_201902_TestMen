.class public Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;
.super Lorg/gnucash/android/db/adapter/DatabaseAdapter;
.source "CommoditiesDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/gnucash/android/db/adapter/DatabaseAdapter",
        "<",
        "Lorg/gnucash/android/model/Commodity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 27
    const-string v0, "commodities"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "fullname"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "namespace"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "mnemonic"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "local_symbol"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "cusip"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "fraction"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "quote_flag"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    const-string v0, "USD"

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/model/Commodity;->USD:Lorg/gnucash/android/model/Commodity;

    .line 40
    const-string v0, "EUR"

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/model/Commodity;->EUR:Lorg/gnucash/android/model/Commodity;

    .line 41
    const-string v0, "GBP"

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/model/Commodity;->GBP:Lorg/gnucash/android/model/Commodity;

    .line 42
    const-string v0, "CHF"

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/model/Commodity;->CHF:Lorg/gnucash/android/model/Commodity;

    .line 43
    const-string v0, "CAD"

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/model/Commodity;->CAD:Lorg/gnucash/android/model/Commodity;

    .line 44
    const-string v0, "JPY"

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/model/Commodity;->JPY:Lorg/gnucash/android/model/Commodity;

    .line 45
    const-string v0, "AUD"

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/model/Commodity;->AUD:Lorg/gnucash/android/model/Commodity;

    .line 47
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    .line 48
    return-void
.end method

.method public static getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getCommoditiesDbAdapter()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

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
    .line 20
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    return-object v0
.end method

.method public buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Commodity;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    const-string v8, "fullname"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "fullname":Ljava/lang/String;
    const-string v8, "mnemonic"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "mnemonic":Ljava/lang/String;
    const-string v8, "namespace"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "namespace":Ljava/lang/String;
    const-string v8, "cusip"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "cusip":Ljava/lang/String;
    const-string v8, "local_symbol"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "localSymbol":Ljava/lang/String;
    const-string v8, "fraction"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 78
    .local v2, "fraction":I
    const-string v8, "quote_flag"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 80
    .local v7, "quoteFlag":I
    new-instance v0, Lorg/gnucash/android/model/Commodity;

    invoke-direct {v0, v3, v5, v2}, Lorg/gnucash/android/model/Commodity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    .local v0, "commodity":Lorg/gnucash/android/model/Commodity;
    invoke-static {v6}, Lorg/gnucash/android/model/Commodity$Namespace;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity$Namespace;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/gnucash/android/model/Commodity;->setNamespace(Lorg/gnucash/android/model/Commodity$Namespace;)V

    .line 82
    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Commodity;->setCusip(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v7}, Lorg/gnucash/android/model/Commodity;->setQuoteFlag(I)V

    .line 84
    invoke-virtual {v0, v4}, Lorg/gnucash/android/model/Commodity;->setLocalSymbol(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1, v0}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->populateBaseModelAttributes(Landroid/database/Cursor;Lorg/gnucash/android/model/BaseModel;)V

    .line 87
    return-object v0
.end method

.method public fetchAllRecords()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->mTableName:Ljava/lang/String;

    const-string v7, "fullname ASC"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAllRecords(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "orderBy"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->mTableName:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;
    .locals 6
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v3, "mnemonic=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->fetchAllRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 113
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 114
    .local v0, "commodity":Lorg/gnucash/android/model/Commodity;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {p0, v1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    .line 121
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 122
    return-object v0

    .line 117
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Commodity not found in the database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "msg":Ljava/lang/String;
    iget-object v3, p0, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "guid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 126
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->mTableName:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "mnemonic"

    aput-object v3, v2, v6

    const-string v3, "uid = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 130
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "mnemonic"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 131
    return-object v0

    .line 133
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not exits in commodity db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
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
    .line 20
    check-cast p2, Lorg/gnucash/android/model/Commodity;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Commodity;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Commodity;)Landroid/database/sqlite/SQLiteStatement;
    .locals 4
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "commodity"    # Lorg/gnucash/android/model/Commodity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p2}, Lorg/gnucash/android/model/Commodity;->getFullname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 58
    const/4 v0, 0x2

    invoke-virtual {p2}, Lorg/gnucash/android/model/Commodity;->getNamespace()Lorg/gnucash/android/model/Commodity$Namespace;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/Commodity$Namespace;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 59
    const/4 v0, 0x3

    invoke-virtual {p2}, Lorg/gnucash/android/model/Commodity;->getMnemonic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 60
    const/4 v0, 0x4

    invoke-virtual {p2}, Lorg/gnucash/android/model/Commodity;->getLocalSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    const/4 v0, 0x5

    invoke-virtual {p2}, Lorg/gnucash/android/model/Commodity;->getCusip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 62
    const/4 v0, 0x6

    invoke-virtual {p2}, Lorg/gnucash/android/model/Commodity;->getSmallestFraction()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 63
    const/4 v0, 0x7

    invoke-virtual {p2}, Lorg/gnucash/android/model/Commodity;->getQuoteFlag()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 64
    const/16 v0, 0x8

    invoke-virtual {p2}, Lorg/gnucash/android/model/Commodity;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 66
    return-object p1
.end method
