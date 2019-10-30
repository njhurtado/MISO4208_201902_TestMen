.class public Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;
.super Lorg/gnucash/android/db/adapter/DatabaseAdapter;
.source "BudgetsDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/gnucash/android/db/adapter/DatabaseAdapter",
        "<",
        "Lorg/gnucash/android/model/Budget;",
        ">;"
    }
.end annotation


# instance fields
.field private mBudgetAmountsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

.field private mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "budgetAmountsDbAdapter"    # Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;
    .param p3, "recurrenceDbAdapter"    # Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    .prologue
    .line 52
    const-string v0, "budgets"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "recurrence_uid"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "num_periods"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 58
    iput-object p3, p0, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    .line 59
    iput-object p2, p0, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->mBudgetAmountsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

    .line 60
    return-void
.end method

.method public static getInstance()Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getBudgetDbAdapter()Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

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
    .line 40
    check-cast p1, Lorg/gnucash/android/model/Budget;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->addRecord(Lorg/gnucash/android/model/Budget;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    return-void
.end method

.method public addRecord(Lorg/gnucash/android/model/Budget;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V
    .locals 3
    .param p1, "budget"    # Lorg/gnucash/android/model/Budget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "updateMethod"    # Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    .prologue
    .line 72
    invoke-virtual {p1}, Lorg/gnucash/android/model/Budget;->getBudgetAmounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Budgets must have budget amounts"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Budget;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 76
    invoke-super {p0, p1, p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 77
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->mBudgetAmountsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Budget;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->deleteBudgetAmountsForBudget(Ljava/lang/String;)I

    .line 78
    invoke-virtual {p1}, Lorg/gnucash/android/model/Budget;->getBudgetAmounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/BudgetAmount;

    .line 79
    .local v0, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->mBudgetAmountsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

    invoke-virtual {v2, v0, p2}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    goto :goto_0

    .line 81
    .end local v0    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    :cond_1
    return-void
.end method

.method public bridge synthetic buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BaseModel;
    .locals 1
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Budget;

    move-result-object v0

    return-object v0
.end method

.method public buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Budget;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    const-string v6, "name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "name":Ljava/lang/String;
    const-string v6, "description"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "description":Ljava/lang/String;
    const-string v6, "recurrence_uid"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "recurrenceUID":Ljava/lang/String;
    const-string v6, "num_periods"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 116
    .local v4, "numPeriods":J
    new-instance v0, Lorg/gnucash/android/model/Budget;

    invoke-direct {v0, v2}, Lorg/gnucash/android/model/Budget;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "budget":Lorg/gnucash/android/model/Budget;
    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Budget;->setDescription(Ljava/lang/String;)V

    .line 118
    iget-object v6, p0, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    invoke-virtual {v6, v3}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v6

    check-cast v6, Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Budget;->setRecurrence(Lorg/gnucash/android/model/Recurrence;)V

    .line 119
    invoke-virtual {v0, v4, v5}, Lorg/gnucash/android/model/Budget;->setNumberOfPeriods(J)V

    .line 120
    invoke-virtual {p0, p1, v0}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->populateBaseModelAttributes(Landroid/database/Cursor;Lorg/gnucash/android/model/BaseModel;)V

    .line 121
    iget-object v6, p0, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->mBudgetAmountsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Budget;->getUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->getBudgetAmountsForBudget(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/gnucash/android/model/Budget;->setBudgetAmounts(Ljava/util/List;)V

    .line 123
    return-object v0
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
            "<",
            "Lorg/gnucash/android/model/Budget;",
            ">;",
            "Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;",
            ")J"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "budgetList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Budget;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v1, "budgetAmountList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/BudgetAmount;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Budget;

    .line 87
    .local v0, "budget":Lorg/gnucash/android/model/Budget;
    invoke-virtual {v0}, Lorg/gnucash/android/model/Budget;->getBudgetAmounts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 91
    .end local v0    # "budget":Lorg/gnucash/android/model/Budget;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .local v4, "recurrenceList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Recurrence;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Budget;

    .line 93
    .restart local v0    # "budget":Lorg/gnucash/android/model/Budget;
    invoke-virtual {v0}, Lorg/gnucash/android/model/Budget;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    .end local v0    # "budget":Lorg/gnucash/android/model/Budget;
    :cond_1
    iget-object v5, p0, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    invoke-virtual {v5, v4, p2}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    .line 98
    invoke-super {p0, p1, p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    move-result-wide v2

    .line 101
    .local v2, "nRow":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 102
    iget-object v5, p0, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->mBudgetAmountsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

    invoke-virtual {v5, v1, p2}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    .line 105
    :cond_2
    return-wide v2
.end method

.method public fetchBudgetsForAccount(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 145
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 146
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "budgets,budget_amounts ON budgets.uid = budget_amounts.budget_uid"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 151
    new-array v2, v6, [Ljava/lang/String;

    const-string v1, "budgets.*"

    aput-object v1, v2, v8

    .line 152
    .local v2, "projectionIn":[Ljava/lang/String;
    const-string v3, "budget_amounts.account_uid = ?"

    .line 153
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 154
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v7, "budgets.name ASC"

    .line 156
    .local v7, "sortOrder":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getAccountBudgets(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "accountUID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Budget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->fetchBudgetsForAccount(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 166
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "budgets":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Budget;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p0, v1}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Budget;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 171
    return-object v0
.end method

.method public getAccountSum(Ljava/lang/String;JJ)Lorg/gnucash/android/model/Money;
    .locals 8
    .param p1, "budgetUID"    # Ljava/lang/String;
    .param p2, "periodStart"    # J
    .param p4, "periodEnd"    # J

    .prologue
    .line 183
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->mBudgetAmountsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

    invoke-virtual {v0, p1}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;->getBudgetAmountsForBudget(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 184
    .local v7, "budgetAmounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/BudgetAmount;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v1, "accountUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gnucash/android/model/BudgetAmount;

    .line 186
    .local v6, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {v6}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v6    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    :cond_0
    new-instance v0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v2, p0, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountsBalance(Ljava/util/List;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v0

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
    .line 40
    check-cast p2, Lorg/gnucash/android/model/Budget;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Budget;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Budget;)Landroid/database/sqlite/SQLiteStatement;
    .locals 4
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "budget"    # Lorg/gnucash/android/model/Budget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p2}, Lorg/gnucash/android/model/Budget;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Lorg/gnucash/android/model/Budget;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x2

    invoke-virtual {p2}, Lorg/gnucash/android/model/Budget;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 132
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p2}, Lorg/gnucash/android/model/Budget;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/Recurrence;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 133
    const/4 v0, 0x4

    invoke-virtual {p2}, Lorg/gnucash/android/model/Budget;->getNumberOfPeriods()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 134
    const/4 v0, 0x5

    invoke-virtual {p2}, Lorg/gnucash/android/model/Budget;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 136
    return-object p1
.end method
