.class public Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;
.super Lorg/gnucash/android/db/adapter/DatabaseAdapter;
.source "BudgetAmountsDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/gnucash/android/db/adapter/DatabaseAdapter",
        "<",
        "Lorg/gnucash/android/model/BudgetAmount;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 44
    const-string v0, "budget_amounts"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "budget_uid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "account_uid"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "amount_num"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "amount_denom"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "period_num"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static getInstance()Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getBudgetAmountsDbAdapter()Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

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
    .line 35
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BudgetAmount;

    move-result-object v0

    return-object v0
.end method

.method public buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BudgetAmount;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    const-string v1, "budget_uid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "budgetUID":Ljava/lang/String;
    const-string v1, "account_uid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "accountUID":Ljava/lang/String;
    const-string v1, "amount_num"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 62
    .local v2, "amountNum":J
    const-string v1, "amount_denom"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 63
    .local v4, "amountDenom":J
    const-string v1, "period_num"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 65
    .local v10, "periodNum":J
    new-instance v7, Lorg/gnucash/android/model/BudgetAmount;

    invoke-direct {v7, v8, v0}, Lorg/gnucash/android/model/BudgetAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v7, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    new-instance v1, Lorg/gnucash/android/model/Money;

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/gnucash/android/model/Money;-><init>(JJLjava/lang/String;)V

    invoke-virtual {v7, v1}, Lorg/gnucash/android/model/BudgetAmount;->setAmount(Lorg/gnucash/android/model/Money;)V

    .line 67
    invoke-virtual {v7, v10, v11}, Lorg/gnucash/android/model/BudgetAmount;->setPeriodNum(J)V

    .line 68
    invoke-virtual {p0, p1, v7}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->populateBaseModelAttributes(Landroid/database/Cursor;Lorg/gnucash/android/model/BaseModel;)V

    .line 70
    return-object v7
.end method

.method public deleteBudgetAmountsForBudget(Ljava/lang/String;)I
    .locals 5
    .param p1, "budgetUID"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->mTableName:Ljava/lang/String;

    const-string v2, "budget_uid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBudgetAmountSum(Ljava/lang/String;)Lorg/gnucash/android/model/Money;
    .locals 5
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->getBudgetAmounts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "budgetAmounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/BudgetAmount;>;"
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/gnucash/android/model/Money;->createZeroInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v2

    .line 136
    .local v2, "sum":Lorg/gnucash/android/model/Money;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/BudgetAmount;

    .line 137
    .local v0, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {v0}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/gnucash/android/model/Money;->add(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v2

    .line 138
    goto :goto_0

    .line 139
    .end local v0    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    :cond_0
    return-object v2
.end method

.method public getBudgetAmounts(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "accountUID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/BudgetAmount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    const-string v2, "account_uid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->fetchAllRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 120
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "budgetAmounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/BudgetAmount;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {p0, v1}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BudgetAmount;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 125
    return-object v0
.end method

.method public getBudgetAmountsForBudget(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "budgetUID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/BudgetAmount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const-string v2, "budget_uid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->fetchAllRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 95
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "budgetAmounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/BudgetAmount;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {p0, v1}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BudgetAmount;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 100
    return-object v0
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
    .line 35
    check-cast p2, Lorg/gnucash/android/model/BudgetAmount;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/BudgetAmount;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/BudgetAmount;)Landroid/database/sqlite/SQLiteStatement;
    .locals 4
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "budgetAmount"    # Lorg/gnucash/android/model/BudgetAmount;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p2}, Lorg/gnucash/android/model/BudgetAmount;->getBudgetUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 77
    const/4 v0, 0x2

    invoke-virtual {p2}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 78
    const/4 v0, 0x3

    invoke-virtual {p2}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/Money;->getNumerator()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 79
    const/4 v0, 0x4

    invoke-virtual {p2}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/Money;->getDenominator()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 80
    const/4 v0, 0x5

    invoke-virtual {p2}, Lorg/gnucash/android/model/BudgetAmount;->getPeriodNum()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 81
    const/4 v0, 0x6

    invoke-virtual {p2}, Lorg/gnucash/android/model/BudgetAmount;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 83
    return-object p1
.end method
