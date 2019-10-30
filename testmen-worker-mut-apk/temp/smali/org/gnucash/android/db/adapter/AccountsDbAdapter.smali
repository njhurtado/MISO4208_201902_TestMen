.class public Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
.super Lorg/gnucash/android/db/adapter/DatabaseAdapter;
.source "AccountsDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/gnucash/android/db/adapter/DatabaseAdapter",
        "<",
        "Lorg/gnucash/android/model/Account;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME_SEPARATOR:Ljava/lang/String; = ":"

.field public static final ROOT_ACCOUNT_FULL_NAME:Ljava/lang/String; = " "


# instance fields
.field private final mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

.field private final mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 116
    const-string v0, "accounts"

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "currency_code"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "color_code"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "favorite"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "full_name"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "is_placeholder"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "created_at"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "is_hidden"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "commodity_uid"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "parent_account_uid"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "default_transfer_account_uid"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 132
    new-instance v0, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    new-instance v1, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    invoke-direct {v1, p1}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v0, p1, v1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/SplitsDbAdapter;)V

    iput-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    .line 133
    new-instance v0, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    invoke-direct {v0, p1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "transactionsDbAdapter"    # Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    .prologue
    .line 89
    const-string v0, "accounts"

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "currency_code"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "color_code"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "favorite"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "full_name"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "is_placeholder"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "created_at"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "is_hidden"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "commodity_uid"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "parent_account_uid"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "default_transfer_account_uid"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 104
    iput-object p2, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    .line 105
    new-instance v0, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    invoke-direct {v0, p1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    .line 106
    return-void
.end method

.method private buildSimpleAccountInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Account;
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 431
    new-instance v0, Lorg/gnucash/android/model/Account;

    const-string v4, "name"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/gnucash/android/model/Account;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "account":Lorg/gnucash/android/model/Account;
    invoke-virtual {p0, p1, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->populateBaseModelAttributes(Landroid/database/Cursor;Lorg/gnucash/android/model/BaseModel;)V

    .line 434
    const-string v4, "description"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "description":Ljava/lang/String;
    if-nez v3, :cond_0

    const-string v3, ""

    .end local v3    # "description":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v3}, Lorg/gnucash/android/model/Account;->setDescription(Ljava/lang/String;)V

    .line 436
    const-string v4, "parent_account_uid"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/gnucash/android/model/Account;->setParentUID(Ljava/lang/String;)V

    .line 437
    const-string v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/gnucash/android/model/AccountType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/gnucash/android/model/Account;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 438
    const-string v4, "currency_code"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "currencyCode":Ljava/lang/String;
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    invoke-virtual {v4, v2}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/gnucash/android/model/Account;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 440
    const-string v4, "is_placeholder"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Lorg/gnucash/android/model/Account;->setPlaceHolderFlag(Z)V

    .line 441
    const-string v4, "default_transfer_account_uid"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/gnucash/android/model/Account;->setDefaultTransferAccountUID(Ljava/lang/String;)V

    .line 442
    const-string v4, "color_code"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "color":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 444
    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Account;->setColor(Ljava/lang/String;)V

    .line 445
    :cond_1
    const-string v4, "favorite"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Lorg/gnucash/android/model/Account;->setFavorite(Z)V

    .line 446
    const-string v4, "full_name"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/gnucash/android/model/Account;->setFullName(Ljava/lang/String;)V

    .line 447
    const-string v4, "is_hidden"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_4

    :goto_2
    invoke-virtual {v0, v5}, Lorg/gnucash/android/model/Account;->setHidden(Z)V

    .line 448
    return-object v0

    .end local v1    # "color":Ljava/lang/String;
    :cond_2
    move v4, v6

    .line 440
    goto :goto_0

    .restart local v1    # "color":Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 445
    goto :goto_1

    :cond_4
    move v5, v6

    .line 447
    goto :goto_2
.end method

.method private computeBalance(Ljava/lang/String;JJ)Lorg/gnucash/android/model/Money;
    .locals 10
    .param p1, "accountUID"    # Ljava/lang/String;
    .param p2, "startTimestamp"    # J
    .param p4, "endTimestamp"    # J

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    .line 827
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Computing account balance for account ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v4, p1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 829
    .local v2, "currencyCode":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/gnucash/android/model/AccountType;->hasDebitNormalBalance()Z

    move-result v3

    .line 831
    .local v3, "hasDebitNormalBalance":Z
    invoke-virtual {p0, p1, v7, v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getDescendantAccountUIDs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 834
    .local v1, "accountsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-interface {v1, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 836
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "all account list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v4}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getSplitDbAdapter()Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    move-result-object v0

    .line 838
    .local v0, "splitsDbAdapter":Lorg/gnucash/android/db/adapter/SplitsDbAdapter;
    cmp-long v4, p2, v8

    if-nez v4, :cond_0

    cmp-long v4, p4, v8

    if-nez v4, :cond_0

    .line 839
    invoke-virtual {v0, v1, v2, v3}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->computeSplitBalance(Ljava/util/List;Ljava/lang/String;Z)Lorg/gnucash/android/model/Money;

    move-result-object v4

    .line 838
    :goto_0
    return-object v4

    :cond_0
    move-wide v4, p2

    move-wide v6, p4

    .line 840
    invoke-virtual/range {v0 .. v7}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->computeSplitBalance(Ljava/util/List;Ljava/lang/String;ZJJ)Lorg/gnucash/android/model/Money;

    move-result-object v4

    goto :goto_0
.end method

.method public static getActiveAccountColorResource(Ljava/lang/String;)I
    .locals 6
    .param p0, "accountUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1218
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    .line 1220
    .local v0, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    const/4 v1, 0x0

    .line 1221
    .local v1, "colorCode":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1222
    .local v2, "iColor":I
    move-object v3, p0

    .line 1223
    .local v3, "parentAccountUID":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 1224
    invoke-virtual {v0, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountColorCode(J)Ljava/lang/String;

    move-result-object v1

    .line 1225
    if-eqz v1, :cond_2

    .line 1226
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 1232
    :cond_0
    if-nez v1, :cond_1

    .line 1233
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1236
    :cond_1
    return v2

    .line 1229
    :cond_2
    invoke-virtual {v0, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getParentAccountUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getImbalanceAccountName(Lorg/gnucash/android/model/Commodity;)Ljava/lang/String;
    .locals 2
    .param p0, "commodity"    # Lorg/gnucash/android/model/Commodity;

    .prologue
    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getImbalanceAccountPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImbalanceAccountPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0096

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAccountsDbAdapter()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getOpeningBalanceAccountFullName()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f0f001f

    .line 1198
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 1199
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f0f001e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1201
    .local v1, "parentEquity":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1203
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1205
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public addRecord(Lorg/gnucash/android/model/Account;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V
    .locals 7
    .param p1, "account"    # Lorg/gnucash/android/model/Account;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "updateMethod"    # Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    .prologue
    .line 151
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Replace account to db"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getScheduledTransactionsForAccount(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 154
    .local v2, "templateTransactions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    invoke-super {p0, p1, p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 155
    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "accountUID":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v4

    sget-object v5, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    if-eq v4, v5, :cond_1

    .line 159
    const-string v4, "full_name"

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getFullyQualifiedAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->updateRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getTransactions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/model/Transaction;

    .line 161
    .local v1, "t":Lorg/gnucash/android/model/Transaction;
    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/gnucash/android/model/Transaction;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 162
    iget-object v5, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v5, v1, p2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->addRecord(Lorg/gnucash/android/model/Transaction;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    goto :goto_0

    .line 164
    .end local v1    # "t":Lorg/gnucash/android/model/Transaction;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Transaction;

    .line 165
    .local v3, "transaction":Lorg/gnucash/android/model/Transaction;
    iget-object v5, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    sget-object v6, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->update:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v5, v3, v6}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->addRecord(Lorg/gnucash/android/model/Transaction;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    goto :goto_1

    .line 168
    .end local v3    # "transaction":Lorg/gnucash/android/model/Transaction;
    :cond_1
    return-void
.end method

.method public bridge synthetic addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V
    .locals 0
    .param p1    # Lorg/gnucash/android/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    check-cast p1, Lorg/gnucash/android/model/Account;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->addRecord(Lorg/gnucash/android/model/Account;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    return-void
.end method

.method public buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Account;
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->buildSimpleAccountInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Account;

    move-result-object v0

    .line 416
    .local v0, "account":Lorg/gnucash/android/model/Account;
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getAllTransactionsForAccount(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Account;->setTransactions(Ljava/util/List;)V

    .line 418
    return-object v0
.end method

.method public bridge synthetic buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BaseModel;
    .locals 1
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Account;

    move-result-object v0

    return-object v0
.end method

.method public bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J
    .locals 7
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
            "Lorg/gnucash/android/model/Account;",
            ">;",
            "Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;",
            ")J"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "accountList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Account;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    .local v1, "transactionList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Account;

    .line 189
    .local v0, "account":Lorg/gnucash/android/model/Account;
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getTransactions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    iget-object v5, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getScheduledTransactionsForAccount(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 192
    .end local v0    # "account":Lorg/gnucash/android/model/Account;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    move-result-wide v2

    .line 194
    .local v2, "nRow":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 195
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v4, v1, p2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    .line 197
    :cond_1
    return-wide v2
.end method

.method public createAccountHierarchy(Ljava/lang/String;Lorg/gnucash/android/model/AccountType;)Ljava/lang/String;
    .locals 11
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "accountType"    # Lorg/gnucash/android/model/AccountType;

    .prologue
    .line 620
    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 621
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "fullName cannot be empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 623
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 624
    .local v5, "tokens":[Ljava/lang/String;
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateGnuCashRootAccountUID()Ljava/lang/String;

    move-result-object v6

    .line 625
    .local v6, "uid":Ljava/lang/String;
    const-string v2, ""

    .line 626
    .local v2, "parentName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v1, "accountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/gnucash/android/model/Account;>;"
    array-length v8, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v4, v5, v7

    .line 628
    .local v4, "token":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-virtual {p0, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->findAccountUidByFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "parentUID":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 631
    move-object v6, v3

    .line 640
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 627
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 633
    :cond_1
    new-instance v0, Lorg/gnucash/android/model/Account;

    invoke-direct {v0, v4}, Lorg/gnucash/android/model/Account;-><init>(Ljava/lang/String;)V

    .line 634
    .local v0, "account":Lorg/gnucash/android/model/Account;
    invoke-virtual {v0, p2}, Lorg/gnucash/android/model/Account;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 635
    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Account;->setParentUID(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0, v2}, Lorg/gnucash/android/model/Account;->setFullName(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 642
    .end local v0    # "account":Lorg/gnucash/android/model/Account;
    .end local v3    # "parentUID":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 643
    sget-object v7, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {p0, v1, v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    .line 647
    :cond_3
    return-object v6
.end method

.method public deleteAllRecords()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1271
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "prices"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1272
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "splits"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transactions"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1274
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "scheduled_actions"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1275
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "budget_amounts"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1276
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "budgets"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1277
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recurrences"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1279
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteRecord(Ljava/lang/String;)Z
    .locals 7
    .param p1, "uid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1284
    invoke-super {p0, p1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->deleteRecord(Ljava/lang/String;)Z

    move-result v1

    .line 1285
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 1286
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1287
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "default_transfer_account_uid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1288
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTableName:Ljava/lang/String;

    const-string v4, "default_transfer_account_uid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1292
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    return v1
.end method

.method public fetchAccounts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "where"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "whereArgs"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "orderBy"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 725
    if-nez p3, :cond_0

    .line 726
    const-string p3, "name ASC"

    .line 728
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching all accounts from db where "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " order by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAccountsOrderedByFavoriteAndFullName(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 758
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching all accounts from db where "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " order by Favorite then Name"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    const-string v7, "favorite DESC, full_name ASC"

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAccountsOrderedByFullName(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 743
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching all accounts from db where "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    const-string v7, "full_name ASC"

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAllRecords()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 690
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Fetching all accounts from db"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v3, "is_hidden = 0 AND type != ?"

    .line 692
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    .line 695
    invoke-virtual {v6}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v7, "name ASC"

    move-object v5, v2

    move-object v6, v2

    .line 692
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAllRecordsOrderedByFullName()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 706
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Fetching all accounts from db"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v3, "is_hidden = 0 AND type != ?"

    .line 708
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    .line 711
    invoke-virtual {v6}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v7, "full_name ASC"

    move-object v5, v2

    move-object v6, v2

    .line 708
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchFavoriteAccounts()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 966
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Fetching favorite accounts from db"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const-string v3, "favorite = 1"

    .line 968
    .local v3, "condition":Ljava/lang/String;
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    const-string v7, "name ASC"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchRecentAccounts(I)Landroid/database/Cursor;
    .locals 9
    .param p1, "numberOfRecent"    # I

    .prologue
    const/4 v4, 0x0

    .line 945
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transactions LEFT OUTER JOIN splits ON transactions.uid = splits.transaction_uid , accounts ON splits.account_uid = accounts.uid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "accounts.*"

    aput-object v5, v2, v3

    const-string v3, "is_hidden = 0"

    const-string v5, "splits.account_uid"

    const-string v7, "MAX ( transactions.timestamp ) DESC"

    .line 957
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, v4

    .line 945
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchSubAccounts(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 917
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetching sub accounts for account id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const-string v3, "is_hidden = 0 AND parent_account_uid = ?"

    .line 920
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v7, "name ASC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchTopLevelAccounts()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 932
    const-string v0, "(parent_account_uid IS NULL OR parent_account_uid = ?) AND is_hidden = 0 AND type != ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 936
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateGnuCashRootAccountUID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v3}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "name ASC"

    .line 932
    invoke-virtual {p0, v0, v1, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccounts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public findAccountUidByFullName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "fullName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 669
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "uid"

    aput-object v3, v2, v6

    const-string v3, "full_name= ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v8, "1"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 673
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    const-string v0, "uid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 679
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 676
    :goto_0
    return-object v5

    .line 679
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getAccountBalance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;
    .locals 6
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 769
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->computeBalance(Ljava/lang/String;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v0

    return-object v0
.end method

.method public getAccountBalance(Ljava/lang/String;JJ)Lorg/gnucash/android/model/Money;
    .locals 2
    .param p1, "accountUID"    # Ljava/lang/String;
    .param p2, "startTimestamp"    # J
    .param p4, "endTimestamp"    # J

    .prologue
    .line 780
    invoke-direct/range {p0 .. p5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->computeBalance(Ljava/lang/String;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v0

    return-object v0
.end method

.method public getAccountBalance(Ljava/util/List;JJ)Lorg/gnucash/android/model/Money;
    .locals 8
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/AccountType;",
            ">;JJ)",
            "Lorg/gnucash/android/model/Money;"
        }
    .end annotation

    .prologue
    .line 819
    .local p1, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/AccountType;>;"
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/gnucash/android/model/Money;->createZeroInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v6

    .line 820
    .local v6, "balance":Lorg/gnucash/android/model/Money;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/model/AccountType;

    .local v1, "accountType":Lorg/gnucash/android/model/AccountType;
    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 821
    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Lorg/gnucash/android/model/AccountType;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/gnucash/android/model/Money;->add(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v6

    .line 822
    goto :goto_0

    .line 823
    .end local v1    # "accountType":Lorg/gnucash/android/model/AccountType;
    :cond_0
    return-object v6
.end method

.method public getAccountBalance(Lorg/gnucash/android/model/AccountType;JJ)Lorg/gnucash/android/model/Money;
    .locals 10
    .param p1, "accountType"    # Lorg/gnucash/android/model/AccountType;
    .param p2, "startTimestamp"    # J
    .param p4, "endTimestamp"    # J

    .prologue
    .line 791
    const-string v4, "type= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 792
    invoke-virtual {p1}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    .line 791
    invoke-virtual {p0, v4, v5, v6}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccounts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 793
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v1, "accountUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 795
    const-string v4, "uid"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 796
    .local v8, "accountUID":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 798
    .end local v8    # "accountUID":Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 800
    invoke-virtual {p1}, Lorg/gnucash/android/model/AccountType;->hasDebitNormalBalance()Z

    move-result v3

    .line 801
    .local v3, "hasDebitNormalBalance":Z
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "currencyCode":Ljava/lang/String;
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "all account list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v4}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getSplitDbAdapter()Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    move-result-object v0

    .line 806
    .local v0, "splitsDbAdapter":Lorg/gnucash/android/db/adapter/SplitsDbAdapter;
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-nez v4, :cond_1

    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-nez v4, :cond_1

    .line 807
    invoke-virtual {v0, v1, v2, v3}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->computeSplitBalance(Ljava/util/List;Ljava/lang/String;Z)Lorg/gnucash/android/model/Money;

    move-result-object v4

    .line 806
    :goto_1
    return-object v4

    :cond_1
    move-wide v4, p2

    move-wide v6, p4

    .line 808
    invoke-virtual/range {v0 .. v7}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->computeSplitBalance(Ljava/util/List;Ljava/lang/String;ZJJ)Lorg/gnucash/android/model/Money;

    move-result-object v4

    goto :goto_1
.end method

.method public getAccountColorCode(J)Ljava/lang/String;
    .locals 9
    .param p1, "accountId"    # J

    .prologue
    const/4 v4, 0x0

    .line 481
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "color_code"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

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

    .line 486
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const-string v0, "color_code"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 493
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 490
    :goto_0
    return-object v4

    .line 493
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getAccountFullName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1096
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "full_name"

    aput-object v3, v2, v6

    const-string v3, "uid = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1100
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    const-string v0, "full_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1105
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1101
    return-object v0

    .line 1105
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account UID: "

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

    .line 1105
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getAccountName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 1043
    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType(J)Lorg/gnucash/android/model/AccountType;
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    .line 503
    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsBalance(Ljava/util/List;JJ)Lorg/gnucash/android/model/Money;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startTimestamp"    # J
    .param p4, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JJ)",
            "Lorg/gnucash/android/model/Money;"
        }
    .end annotation

    .prologue
    .local p1, "accountUIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v4, -0x1

    .line 853
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 854
    .local v2, "currencyCode":Ljava/lang/String;
    invoke-static {v2}, Lorg/gnucash/android/model/Money;->createZeroInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v8

    .line 856
    .local v8, "balance":Lorg/gnucash/android/model/Money;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    .end local v8    # "balance":Lorg/gnucash/android/model/Money;
    :goto_0
    return-object v8

    .line 859
    .restart local v8    # "balance":Lorg/gnucash/android/model/Money;
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/AccountType;->hasDebitNormalBalance()Z

    move-result v3

    .line 861
    .local v3, "hasDebitNormalBalance":Z
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getSplitDbAdapter()Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    move-result-object v0

    .line 862
    .local v0, "splitsDbAdapter":Lorg/gnucash/android/db/adapter/SplitsDbAdapter;
    cmp-long v1, p2, v4

    if-nez v1, :cond_1

    cmp-long v1, p4, v4

    if-nez v1, :cond_1

    .line 863
    invoke-virtual {v0, p1, v2, v3}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->computeSplitBalance(Ljava/util/List;Ljava/lang/String;Z)Lorg/gnucash/android/model/Money;

    move-result-object v9

    .line 866
    .local v9, "splitSum":Lorg/gnucash/android/model/Money;
    :goto_1
    invoke-virtual {v8, v9}, Lorg/gnucash/android/model/Money;->add(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v8

    goto :goto_0

    .end local v9    # "splitSum":Lorg/gnucash/android/model/Money;
    :cond_1
    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 864
    invoke-virtual/range {v0 .. v7}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->computeSplitBalance(Ljava/util/List;Ljava/lang/String;ZJJ)Lorg/gnucash/android/model/Money;

    move-result-object v9

    goto :goto_1
.end method

.method public getAllOpeningBalanceTransactions()Ljava/util/List;
    .locals 15
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
    const/4 v12, 0x0

    .line 1145
    invoke-virtual {p0, v12, v12, v12}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccounts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1146
    .local v4, "cursor":Landroid/database/Cursor;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v5, "openingTransactions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    :try_start_0
    iget-object v12, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v12}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getSplitDbAdapter()Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    move-result-object v9

    .line 1149
    .local v9, "splitsDbAdapter":Lorg/gnucash/android/db/adapter/SplitsDbAdapter;
    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1150
    const-string v12, "_id"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1151
    .local v6, "id":J
    invoke-virtual {p0, v6, v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v1

    .line 1152
    .local v1, "accountUID":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1153
    .local v3, "currencyCode":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .local v0, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    invoke-virtual {p0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v12

    invoke-virtual {v12}, Lorg/gnucash/android/model/AccountType;->hasDebitNormalBalance()Z

    move-result v12

    .line 1155
    invoke-virtual {v9, v0, v3, v12}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->computeSplitBalance(Ljava/util/List;Ljava/lang/String;Z)Lorg/gnucash/android/model/Money;

    move-result-object v2

    .line 1157
    .local v2, "balance":Lorg/gnucash/android/model/Money;
    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v12

    new-instance v13, Ljava/math/BigDecimal;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v12

    if-eqz v12, :cond_0

    .line 1160
    new-instance v10, Lorg/gnucash/android/model/Transaction;

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0f001f

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Lorg/gnucash/android/model/Transaction;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v10, "transaction":Lorg/gnucash/android/model/Transaction;
    invoke-virtual {p0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/gnucash/android/model/Transaction;->setNote(Ljava/lang/String;)V

    .line 1162
    invoke-static {v3}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/gnucash/android/model/Transaction;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 1163
    invoke-virtual {p0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v12

    .line 1164
    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->isNegative()Z

    move-result v13

    .line 1163
    invoke-static {v12, v13}, Lorg/gnucash/android/model/Transaction;->getTypeForBalance(Lorg/gnucash/android/model/AccountType;Z)Lorg/gnucash/android/model/TransactionType;

    move-result-object v11

    .line 1165
    .local v11, "transactionType":Lorg/gnucash/android/model/TransactionType;
    new-instance v8, Lorg/gnucash/android/model/Split;

    invoke-direct {v8, v2, v1}, Lorg/gnucash/android/model/Split;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 1166
    .local v8, "split":Lorg/gnucash/android/model/Split;
    invoke-virtual {v8, v11}, Lorg/gnucash/android/model/Split;->setType(Lorg/gnucash/android/model/TransactionType;)V

    .line 1167
    invoke-virtual {v10, v8}, Lorg/gnucash/android/model/Transaction;->addSplit(Lorg/gnucash/android/model/Split;)V

    .line 1168
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateOpeningBalanceAccountUID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/gnucash/android/model/Split;->createPair(Ljava/lang/String;)Lorg/gnucash/android/model/Split;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/gnucash/android/model/Transaction;->addSplit(Lorg/gnucash/android/model/Split;)V

    .line 1169
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lorg/gnucash/android/model/Transaction;->setExported(Z)V

    .line 1170
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1173
    .end local v0    # "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "accountUID":Ljava/lang/String;
    .end local v2    # "balance":Lorg/gnucash/android/model/Money;
    .end local v3    # "currencyCode":Ljava/lang/String;
    .end local v6    # "id":J
    .end local v8    # "split":Lorg/gnucash/android/model/Split;
    .end local v9    # "splitsDbAdapter":Lorg/gnucash/android/db/adapter/SplitsDbAdapter;
    .end local v10    # "transaction":Lorg/gnucash/android/model/Transaction;
    .end local v11    # "transactionType":Lorg/gnucash/android/model/TransactionType;
    :catchall_0
    move-exception v12

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v12

    .restart local v9    # "splitsDbAdapter":Lorg/gnucash/android/db/adapter/SplitsDbAdapter;
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1175
    return-object v5
.end method

.method public getCommoditiesInUse()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Commodity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1247
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "accounts"

    new-array v3, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "currency_code"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1249
    .local v12, "cursor":Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .local v10, "commodityList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Commodity;>;"
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    const-string v0, "currency_code"

    .line 1253
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1254
    .local v11, "currencyCode":Ljava/lang/String;
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    invoke-virtual {v0, v11}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1257
    .end local v11    # "currencyCode":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1259
    return-object v10
.end method

.method public getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1032
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTransferAccountID(J)J
    .locals 13
    .param p1, "accountID"    # J

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    .line 1052
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "default_transfer_account_uid"

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

    .line 1057
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    const-string v0, "default_transfer_account_uid"

    .line 1059
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1058
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1060
    .local v9, "uid":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 1068
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-wide v0, v10

    .line 1065
    .end local v9    # "uid":Ljava/lang/String;
    :goto_0
    return-wide v0

    .line 1063
    .restart local v9    # "uid":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 1068
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "uid":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-wide v0, v10

    .line 1065
    goto :goto_0

    .line 1068
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getDescendantAccountUIDs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "accountUID"    # Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 881
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .local v8, "accountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v9, "accountsListLevel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    :goto_0
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "uid"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parent_account_uid IN ( \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' , \'"

    .line 887
    invoke-static {v4, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_0

    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    .line 885
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 890
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 891
    if-eqz v11, :cond_2

    .line 893
    :try_start_0
    const-string v0, "uid"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 894
    .local v10, "columnIndex":I
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 898
    .end local v10    # "columnIndex":I
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 887
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 898
    .restart local v10    # "columnIndex":I
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 901
    .end local v10    # "columnIndex":I
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 902
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 908
    :cond_3
    return-object v8
.end method

.method public getExportableAccounts(Ljava/sql/Timestamp;)Ljava/util/List;
    .locals 10
    .param p1, "lastExportTimeStamp"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/Timestamp;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 550
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 551
    .local v8, "accountsList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/gnucash/android/model/Account;>;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transactions , splits ON transactions.uid = splits.transaction_uid , accounts ON accounts.uid = splits.account_uid"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "accounts.*"

    aput-object v3, v2, v7

    const-string v3, "transactions.modified_at > ?"

    new-array v4, v4, [Ljava/lang/String;

    .line 560
    invoke-static {p1}, Lorg/gnucash/android/util/TimestampHelper;->getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "accounts.uid"

    move-object v7, v6

    .line 551
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 566
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0, v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Account;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 573
    return-object v8
.end method

.method public getFullyQualifiedAccountName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 1078
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, "accountName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getParentAccountUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1081
    .local v2, "parentAccountUID":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateGnuCashRootAccountUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1087
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1085
    .restart local v0    # "accountName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getFullyQualifiedAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1087
    .local v1, "parentAccountName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getImbalanceAccountUID(Lorg/gnucash/android/model/Commodity;)Ljava/lang/String;
    .locals 2
    .param p1, "commodity"    # Lorg/gnucash/android/model/Commodity;

    .prologue
    .line 607
    invoke-static {p1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getImbalanceAccountName(Lorg/gnucash/android/model/Commodity;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "imbalanceAccountName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->findAccountUidByFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOrCreateGnuCashRootAccountUID()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 980
    const-string v6, "type= ?"

    new-array v7, v4, [Ljava/lang/String;

    sget-object v8, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    .line 981
    invoke-virtual {v8}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 980
    invoke-virtual {p0, v6, v7, v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccounts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 983
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 984
    const-string v4, "uid"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 987
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1006
    :goto_0
    return-object v4

    .line 987
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 990
    new-instance v3, Lorg/gnucash/android/model/Account;

    const-string v6, "ROOT Account"

    new-instance v7, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    iget-object v8, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v7, v8}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v8, "USD"

    invoke-virtual {v7, v8}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lorg/gnucash/android/model/Account;-><init>(Ljava/lang/String;Lorg/gnucash/android/model/Commodity;)V

    .line 991
    .local v3, "rootAccount":Lorg/gnucash/android/model/Account;
    sget-object v6, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v3, v6}, Lorg/gnucash/android/model/Account;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 992
    const-string v6, " "

    invoke-virtual {v3, v6}, Lorg/gnucash/android/model/Account;->setFullName(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v3, v4}, Lorg/gnucash/android/model/Account;->setHidden(Z)V

    .line 994
    invoke-virtual {v3, v4}, Lorg/gnucash/android/model/Account;->setPlaceHolderFlag(Z)V

    .line 995
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 996
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v6, "uid"

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v6, "name"

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string v6, "full_name"

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string v6, "type"

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v6, "is_hidden"

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->isHidden()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1001
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 1002
    .local v2, "defaultCurrencyCode":Ljava/lang/String;
    const-string v4, "currency_code"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v4, "commodity_uid"

    invoke-virtual {p0, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCommodityUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Creating ROOT account"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "accounts"

    invoke-virtual {v4, v5, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1006
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 987
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "defaultCurrencyCode":Ljava/lang/String;
    .end local v3    # "rootAccount":Lorg/gnucash/android/model/Account;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v4

    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v3    # "rootAccount":Lorg/gnucash/android/model/Account;
    :cond_1
    move v4, v5

    .line 1000
    goto :goto_1
.end method

.method public getOrCreateImbalanceAccountUID(Lorg/gnucash/android/model/Commodity;)Ljava/lang/String;
    .locals 4
    .param p1, "commodity"    # Lorg/gnucash/android/model/Commodity;

    .prologue
    .line 583
    invoke-static {p1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getImbalanceAccountName(Lorg/gnucash/android/model/Commodity;)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "imbalanceAccountName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->findAccountUidByFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, "uid":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 586
    new-instance v0, Lorg/gnucash/android/model/Account;

    invoke-direct {v0, v1, p1}, Lorg/gnucash/android/model/Account;-><init>(Ljava/lang/String;Lorg/gnucash/android/model/Commodity;)V

    .line 587
    .local v0, "account":Lorg/gnucash/android/model/Account;
    sget-object v3, Lorg/gnucash/android/model/AccountType;->BANK:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v0, v3}, Lorg/gnucash/android/model/Account;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 588
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateGnuCashRootAccountUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/gnucash/android/model/Account;->setParentUID(Ljava/lang/String;)V

    .line 589
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->isDoubleEntryEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Lorg/gnucash/android/model/Account;->setHidden(Z)V

    .line 590
    const-string v3, "#964B00"

    invoke-virtual {v0, v3}, Lorg/gnucash/android/model/Account;->setColor(Ljava/lang/String;)V

    .line 591
    sget-object v3, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {p0, v0, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->addRecord(Lorg/gnucash/android/model/Account;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 592
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v2

    .line 594
    .end local v0    # "account":Lorg/gnucash/android/model/Account;
    :cond_0
    return-object v2

    .line 589
    .restart local v0    # "account":Lorg/gnucash/android/model/Account;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getOrCreateOpeningBalanceAccountUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 655
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOpeningBalanceAccountFullName()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "openingBalanceAccountName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->findAccountUidByFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "uid":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 658
    sget-object v2, Lorg/gnucash/android/model/AccountType;->EQUITY:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {p0, v0, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->createAccountHierarchy(Ljava/lang/String;Lorg/gnucash/android/model/AccountType;)Ljava/lang/String;

    move-result-object v1

    .line 660
    :cond_0
    return-object v1
.end method

.method public getParentAccountUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "uid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 458
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "parent_account_uid"

    aput-object v3, v2, v6

    const-string v3, "uid = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 464
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Found parent account UID, returning value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v0, "parent_account_uid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 471
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 468
    :goto_0
    return-object v5

    .line 471
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getSimpleAccountList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 512
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 513
    .local v0, "accounts":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/gnucash/android/model/Account;>;"
    const-string v2, "full_name ASC"

    invoke-virtual {p0, v3, v3, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccounts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 516
    .local v1, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-direct {p0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->buildSimpleAccountInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Account;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 523
    return-object v0
.end method

.method public getSimpleAccountList(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 533
    .local v0, "accounts":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/gnucash/android/model/Account;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccounts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 535
    .local v1, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    invoke-direct {p0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->buildSimpleAccountInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Account;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 542
    return-object v0
.end method

.method public getSubAccountCount(Ljava/lang/String;)I
    .locals 6
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1017
    const-string v2, "SELECT COUNT(*) FROM accounts WHERE parent_account_uid = ?"

    .line 1019
    .local v2, "queryCount":Ljava/lang/String;
    iget-object v3, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1020
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1021
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1022
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1023
    return v0
.end method

.method public getTransactionMaxSplitNum(Ljava/lang/String;)I
    .locals 10
    .param p1, "accountUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 1296
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "trans_extra_info"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "MAX(trans_split_count)"

    aput-object v3, v2, v9

    const-string v3, "trans_acct_t_uid IN ( SELECT DISTINCT transactions_uid FROM trans_split_acct WHERE accounts_uid = ? )"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1307
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    .line 1314
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1310
    :goto_0
    return v0

    .line 1314
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1310
    goto :goto_0

    .line 1314
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isFavoriteAccount(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1137
    const-string v2, "favorite"

    invoke-virtual {p0, p1, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "isFavorite":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHiddenAccount(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1127
    const-string v2, "is_hidden"

    invoke-virtual {p0, p1, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1128
    .local v0, "isHidden":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlaceholderAccount(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1117
    const-string v2, "is_placeholder"

    invoke-virtual {p0, p1, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "isPlaceholder":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public markAsExported(Ljava/lang/String;)I
    .locals 6
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 239
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "is_exported"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "transactions"

    const-string v3, "uid IN ( SELECT DISTINCT transactions.uid FROM transactions , splits ON transactions.uid = splits.transaction_uid , accounts ON splits.account_uid = accounts.uid WHERE accounts.uid = ?  ) "

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public reassignDescendantAccounts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "accountUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newParentAccountUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 294
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getDescendantAccountUIDs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 295
    .local v6, "descendantAccountUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 296
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uid IN (\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\',\'"

    .line 297
    invoke-static {v11, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\')"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 296
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getSimpleAccountList(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 301
    .local v7, "descendantAccounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Account;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 302
    .local v8, "mapAccounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/gnucash/android/model/Account;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/model/Account;

    .line 303
    .local v2, "account":Lorg/gnucash/android/model/Account;
    invoke-virtual {v2}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 305
    .end local v2    # "account":Lorg/gnucash/android/model/Account;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v10

    sget-object v11, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    if-ne v10, v11, :cond_2

    .line 306
    const-string v9, ""

    .line 310
    .local v9, "parentAccountFullName":Ljava/lang/String;
    :goto_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v5, "contentValues":Landroid/content/ContentValues;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 312
    .local v4, "acctUID":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Account;

    .line 313
    .local v3, "acct":Lorg/gnucash/android/model/Account;
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getParentUID()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 315
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/gnucash/android/model/Account;->setParentUID(Ljava/lang/String;)V

    .line 316
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 317
    :cond_1
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/gnucash/android/model/Account;->setFullName(Ljava/lang/String;)V

    .line 322
    :goto_3
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 323
    const-string v10, "parent_account_uid"

    move-object/from16 v0, p2

    invoke-virtual {v5, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v10, "full_name"

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getFullName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "accounts"

    const-string v13, "uid = ?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 328
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 325
    invoke-virtual {v10, v12, v5, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 308
    .end local v3    # "acct":Lorg/gnucash/android/model/Account;
    .end local v4    # "acctUID":Ljava/lang/String;
    .end local v5    # "contentValues":Landroid/content/ContentValues;
    .end local v9    # "parentAccountFullName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "parentAccountFullName":Ljava/lang/String;
    goto :goto_1

    .line 319
    .restart local v3    # "acct":Lorg/gnucash/android/model/Account;
    .restart local v4    # "acctUID":Ljava/lang/String;
    .restart local v5    # "contentValues":Landroid/content/ContentValues;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/gnucash/android/model/Account;->setFullName(Ljava/lang/String;)V

    goto :goto_3

    .line 332
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getParentUID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/gnucash/android/model/Account;

    invoke-virtual {v10}, Lorg/gnucash/android/model/Account;->getFullName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 334
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 332
    invoke-virtual {v3, v10}, Lorg/gnucash/android/model/Account;->setFullName(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 338
    const-string v10, "full_name"

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getFullName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "accounts"

    const-string v13, "uid = ?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 342
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 339
    invoke-virtual {v10, v12, v5, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 347
    .end local v3    # "acct":Lorg/gnucash/android/model/Account;
    .end local v4    # "acctUID":Ljava/lang/String;
    .end local v5    # "contentValues":Landroid/content/ContentValues;
    .end local v7    # "descendantAccounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Account;>;"
    .end local v8    # "mapAccounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/gnucash/android/model/Account;>;"
    .end local v9    # "parentAccountFullName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public recursiveDeleteAccount(J)Z
    .locals 11
    .param p1, "accountId"    # J

    .prologue
    const/4 v10, 0x0

    .line 364
    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "accountUID":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v7

    sget-object v8, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    if-ne v7, v8, :cond_0

    .line 367
    const/4 v7, 0x0

    .line 400
    :goto_0
    return v7

    .line 370
    :cond_0
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delete account with rowId with its transactions and sub-accounts: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0, v0, v10, v10}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getDescendantAccountUIDs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 373
    .local v6, "descendantAccountUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 375
    :try_start_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 377
    .local v3, "descendantAccountUID":Ljava/lang/String;
    iget-object v8, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTransactionsAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v8, v3}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->deleteTransactionsForAccount(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 403
    .end local v3    # "descendantAccountUID":Ljava/lang/String;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 380
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\',\'"

    invoke-static {v8, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "accountUIDList":Ljava/lang/String;
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "accounts"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uid IN ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    int-to-long v4, v7

    .line 391
    .local v4, "deletedCount":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_2

    .line 392
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 393
    .local v2, "contentValues":Landroid/content/ContentValues;
    const-string v7, "default_transfer_account_uid"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 394
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mTableName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "default_transfer_account_uid IN ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v2, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 399
    .end local v2    # "contentValues":Landroid/content/ContentValues;
    :cond_2
    iget-object v7, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    const/4 v7, 0x1

    .line 403
    iget-object v8, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0
.end method

.method protected setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Account;)Landroid/database/sqlite/SQLiteStatement;
    .locals 8
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "account"    # Lorg/gnucash/android/model/Account;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    .line 202
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 203
    const/4 v1, 0x1

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    const/4 v1, 0x2

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 206
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 207
    const/4 v1, 0x4

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getColor()I

    move-result v1

    const v2, -0x333334

    if-eq v1, v2, :cond_1

    .line 209
    const/4 v1, 0x5

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getColorHexString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 211
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->isFavorite()Z

    move-result v2

    if-eqz v2, :cond_5

    move-wide v2, v4

    :goto_0
    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 212
    const/4 v1, 0x7

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 213
    const/16 v1, 0x8

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->isPlaceholderAccount()Z

    move-result v2

    if-eqz v2, :cond_6

    move-wide v2, v4

    :goto_1
    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 214
    const/16 v1, 0x9

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getCreatedTimestamp()Ljava/sql/Timestamp;

    move-result-object v2

    invoke-static {v2}, Lorg/gnucash/android/util/TimestampHelper;->getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 215
    const/16 v1, 0xa

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_2
    invoke-virtual {p1, v1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 216
    const/16 v1, 0xb

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/Commodity;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getParentUID()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "parentAccountUID":Ljava/lang/String;
    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v1

    sget-object v2, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    if-eq v1, v2, :cond_2

    .line 220
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateGnuCashRootAccountUID()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_2
    if-eqz v0, :cond_3

    .line 223
    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 225
    :cond_3
    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getDefaultTransferAccountUID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 226
    const/16 v1, 0xd

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getDefaultTransferAccountUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 228
    :cond_4
    const/16 v1, 0xe

    invoke-virtual {p2}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 230
    return-object p1

    .end local v0    # "parentAccountUID":Ljava/lang/String;
    :cond_5
    move-wide v2, v6

    .line 211
    goto :goto_0

    :cond_6
    move-wide v2, v6

    .line 213
    goto :goto_1

    :cond_7
    move-wide v4, v6

    .line 215
    goto :goto_2
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
    .line 61
    check-cast p2, Lorg/gnucash/android/model/Account;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Account;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public updateAccount(JLjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "columnKey"    # Ljava/lang/String;
    .param p4, "newValue"    # Ljava/lang/String;

    .prologue
    .line 284
    const-string v1, "accounts"

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->updateRecord(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateAllAccounts(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "columnKey"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 267
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-nez p2, :cond_0

    .line 269
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 273
    :goto_0
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "accounts"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 271
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
