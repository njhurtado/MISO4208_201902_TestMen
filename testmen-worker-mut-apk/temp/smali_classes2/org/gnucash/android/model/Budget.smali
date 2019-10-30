.class public Lorg/gnucash/android/model/Budget;
.super Lorg/gnucash/android/model/BaseModel;
.source "Budget.java"


# instance fields
.field private mBudgetAmounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/BudgetAmount;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumberOfPeriods:J

.field private mRecurrence:Lorg/gnucash/android/model/Recurrence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    .line 42
    const-wide/16 v0, 0xc

    iput-wide v0, p0, Lorg/gnucash/android/model/Budget;->mNumberOfPeriods:J

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    .line 42
    const-wide/16 v0, 0xc

    iput-wide v0, p0, Lorg/gnucash/android/model/Budget;->mNumberOfPeriods:J

    .line 57
    iput-object p1, p0, Lorg/gnucash/android/model/Budget;->mName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/gnucash/android/model/Recurrence;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "recurrence"    # Lorg/gnucash/android/model/Recurrence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    .line 42
    const-wide/16 v0, 0xc

    iput-wide v0, p0, Lorg/gnucash/android/model/Budget;->mNumberOfPeriods:J

    .line 61
    iput-object p1, p0, Lorg/gnucash/android/model/Budget;->mName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lorg/gnucash/android/model/Budget;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    .line 63
    return-void
.end method


# virtual methods
.method public addBudgetAmount(Lorg/gnucash/android/model/BudgetAmount;)V
    .locals 1
    .param p1, "budgetAmount"    # Lorg/gnucash/android/model/BudgetAmount;

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/gnucash/android/model/Budget;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/gnucash/android/model/BudgetAmount;->setBudgetUID(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public getAmount(Ljava/lang/String;)Lorg/gnucash/android/model/Money;
    .locals 3
    .param p1, "accountUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 147
    iget-object v1, p0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/BudgetAmount;

    .line 148
    .local v0, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {v0}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {v0}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v1

    .line 151
    .end local v0    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAmount(Ljava/lang/String;I)Lorg/gnucash/android/model/Money;
    .locals 6
    .param p1, "accountUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "periodNum"    # I

    .prologue
    .line 161
    iget-object v1, p0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/BudgetAmount;

    .line 162
    .local v0, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {v0}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {v0}, Lorg/gnucash/android/model/BudgetAmount;->getPeriodNum()J

    move-result-wide v2

    int-to-long v4, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/gnucash/android/model/BudgetAmount;->getPeriodNum()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 164
    :cond_1
    invoke-virtual {v0}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v1

    .line 167
    .end local v0    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    :goto_0
    return-object v1

    :cond_2
    invoke-static {}, Lorg/gnucash/android/model/Money;->getZeroInstance()Lorg/gnucash/android/model/Money;

    move-result-object v1

    goto :goto_0
.end method

.method public getAmountSum()Lorg/gnucash/android/model/Money;
    .locals 6

    .prologue
    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, "sum":Lorg/gnucash/android/model/Money;
    iget-object v3, p0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/BudgetAmount;

    .line 178
    .local v0, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    if-nez v2, :cond_0

    .line 179
    invoke-virtual {v0}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v2

    goto :goto_0

    .line 182
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v4

    invoke-virtual {v4}, Lorg/gnucash/android/model/Money;->abs()Lorg/gnucash/android/model/Money;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/gnucash/android/model/Money;->add(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;
    :try_end_0
    .catch Lorg/gnucash/android/model/Money$CurrencyMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "ex":Lorg/gnucash/android/model/Money$CurrencyMismatchException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Skip some budget amounts with different currency"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v0    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    .end local v1    # "ex":Lorg/gnucash/android/model/Money$CurrencyMismatchException;
    :cond_1
    return-object v2
.end method

.method public getBudgetAmounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/BudgetAmount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    return-object v0
.end method

.method public getCompactedBudgetAmounts()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/BudgetAmount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v2, "accountAmountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/math/BigDecimal;>;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/gnucash/android/model/BudgetAmount;

    .line 339
    .local v9, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {v9}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "accountUID":Ljava/lang/String;
    invoke-virtual {v9}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v13

    invoke-virtual {v13}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v5

    .line 341
    .local v5, "amount":Ljava/math/BigDecimal;
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 342
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v6, "amounts":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigDecimal;>;"
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 350
    .end local v3    # "accountUID":Ljava/lang/String;
    .end local v5    # "amount":Ljava/math/BigDecimal;
    .end local v6    # "amounts":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigDecimal;>;"
    .end local v9    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v10, "compactBudgetAmounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/BudgetAmount;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 352
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/math/BigDecimal;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 353
    .restart local v6    # "amounts":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigDecimal;>;"
    const/4 v13, 0x0

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/math/BigDecimal;

    .line 354
    .local v12, "first":Ljava/math/BigDecimal;
    const/4 v4, 0x1

    .line 355
    .local v4, "allSame":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/math/BigDecimal;

    .line 356
    .local v8, "bigDecimal":Ljava/math/BigDecimal;
    invoke-virtual {v8, v12}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v15

    and-int/2addr v4, v15

    .line 357
    goto :goto_2

    .line 359
    .end local v8    # "bigDecimal":Ljava/math/BigDecimal;
    :cond_3
    if-eqz v4, :cond_6

    .line 360
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_5

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/gnucash/android/model/BudgetAmount;

    .line 362
    .local v7, "bgtAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {v7}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 363
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 368
    .end local v7    # "bgtAmount":Lorg/gnucash/android/model/BudgetAmount;
    :cond_5
    new-instance v7, Lorg/gnucash/android/model/BudgetAmount;

    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/model/Budget;->getUID()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v7, v15, v13}, Lorg/gnucash/android/model/BudgetAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .restart local v7    # "bgtAmount":Lorg/gnucash/android/model/BudgetAmount;
    new-instance v13, Lorg/gnucash/android/model/Money;

    sget-object v15, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v13, v12, v15}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    invoke-virtual {v7, v13}, Lorg/gnucash/android/model/BudgetAmount;->setAmount(Lorg/gnucash/android/model/Money;)V

    .line 370
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Lorg/gnucash/android/model/BudgetAmount;->setPeriodNum(J)V

    .line 371
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 375
    .end local v7    # "bgtAmount":Lorg/gnucash/android/model/BudgetAmount;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/gnucash/android/model/BudgetAmount;

    .line 376
    .restart local v7    # "bgtAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {v7}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 377
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 383
    .end local v4    # "allSame":Z
    .end local v6    # "amounts":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigDecimal;>;"
    .end local v7    # "bgtAmount":Lorg/gnucash/android/model/BudgetAmount;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/math/BigDecimal;>;>;"
    .end local v12    # "first":Ljava/math/BigDecimal;
    :cond_8
    return-object v10
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/gnucash/android/model/Budget;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEndOfCurrentPeriod()J
    .locals 4

    .prologue
    .line 231
    new-instance v1, Lorg/joda/time/LocalDateTime;

    invoke-direct {v1}, Lorg/joda/time/LocalDateTime;-><init>()V

    .line 232
    .local v1, "localDate":Lorg/joda/time/LocalDateTime;
    iget-object v2, p0, Lorg/gnucash/android/model/Budget;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v2}, Lorg/gnucash/android/model/Recurrence;->getMultiplier()I

    move-result v0

    .line 233
    .local v0, "interval":I
    sget-object v2, Lorg/gnucash/android/model/Budget$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    iget-object v3, p0, Lorg/gnucash/android/model/Budget;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Recurrence;->getPeriodType()Lorg/gnucash/android/model/PeriodType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 250
    :goto_0
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2

    .line 235
    :pswitch_0
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->millisOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusHours(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 236
    goto :goto_0

    .line 238
    :pswitch_1
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->millisOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusDays(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 239
    goto :goto_0

    .line 241
    :pswitch_2
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->dayOfWeek()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusWeeks(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 242
    goto :goto_0

    .line 244
    :pswitch_3
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->dayOfMonth()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusMonths(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 245
    goto :goto_0

    .line 247
    :pswitch_4
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->dayOfYear()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusYears(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getEndOfPeriod(I)J
    .locals 4
    .param p1, "periodNum"    # I

    .prologue
    .line 282
    new-instance v1, Lorg/joda/time/LocalDateTime;

    invoke-direct {v1}, Lorg/joda/time/LocalDateTime;-><init>()V

    .line 283
    .local v1, "localDate":Lorg/joda/time/LocalDateTime;
    iget-object v2, p0, Lorg/gnucash/android/model/Budget;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v2}, Lorg/gnucash/android/model/Recurrence;->getMultiplier()I

    move-result v2

    mul-int v0, v2, p1

    .line 284
    .local v0, "interval":I
    sget-object v2, Lorg/gnucash/android/model/Budget$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    iget-object v3, p0, Lorg/gnucash/android/model/Budget;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Recurrence;->getPeriodType()Lorg/gnucash/android/model/PeriodType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 301
    :goto_0
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2

    .line 286
    :pswitch_0
    invoke-virtual {v1, v0}, Lorg/joda/time/LocalDateTime;->plusHours(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 287
    goto :goto_0

    .line 289
    :pswitch_1
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->millisOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusDays(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 290
    goto :goto_0

    .line 292
    :pswitch_2
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->dayOfWeek()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusWeeks(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 293
    goto :goto_0

    .line 295
    :pswitch_3
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->dayOfMonth()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusMonths(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 296
    goto :goto_0

    .line 298
    :pswitch_4
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->dayOfYear()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusYears(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getExpandedBudgetAmounts()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/BudgetAmount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v1, "amountsToAdd":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/BudgetAmount;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v2, "amountsToRemove":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/BudgetAmount;>;"
    iget-object v7, p0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/gnucash/android/model/BudgetAmount;

    .line 396
    .local v4, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {v4}, Lorg/gnucash/android/model/BudgetAmount;->getPeriodNum()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 397
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {v4}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "accountUID":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "period":I
    :goto_0
    int-to-long v8, v6

    iget-wide v10, p0, Lorg/gnucash/android/model/Budget;->mNumberOfPeriods:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 400
    new-instance v3, Lorg/gnucash/android/model/BudgetAmount;

    invoke-virtual {p0}, Lorg/gnucash/android/model/Budget;->getUID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v0}, Lorg/gnucash/android/model/BudgetAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .local v3, "bgtAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {v4}, Lorg/gnucash/android/model/BudgetAmount;->getAmount()Lorg/gnucash/android/model/Money;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/gnucash/android/model/BudgetAmount;->setAmount(Lorg/gnucash/android/model/Money;)V

    .line 402
    int-to-long v8, v6

    invoke-virtual {v3, v8, v9}, Lorg/gnucash/android/model/BudgetAmount;->setPeriodNum(J)V

    .line 403
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "accountUID":Ljava/lang/String;
    .end local v3    # "bgtAmount":Lorg/gnucash/android/model/BudgetAmount;
    .end local v4    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    .end local v6    # "period":I
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 409
    .local v5, "expandedBudgetAmounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/BudgetAmount;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/BudgetAmount;

    .line 410
    .restart local v3    # "bgtAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 413
    .end local v3    # "bgtAmount":Lorg/gnucash/android/model/BudgetAmount;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/BudgetAmount;

    .line 414
    .restart local v3    # "bgtAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 416
    .end local v3    # "bgtAmount":Lorg/gnucash/android/model/BudgetAmount;
    :cond_3
    return-object v5
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/gnucash/android/model/Budget;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfAccounts()I
    .locals 4

    .prologue
    .line 317
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 318
    .local v0, "accountSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/model/BudgetAmount;

    .line 319
    .local v1, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {v1}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    .end local v1    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    return v2
.end method

.method public getNumberOfPeriods()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lorg/gnucash/android/model/Budget;->mNumberOfPeriods:J

    return-wide v0
.end method

.method public getRecurrence()Lorg/gnucash/android/model/Recurrence;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/gnucash/android/model/Budget;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    return-object v0
.end method

.method public getStartOfPeriod(I)J
    .locals 4
    .param p1, "periodNum"    # I

    .prologue
    .line 254
    new-instance v1, Lorg/joda/time/LocalDateTime;

    iget-object v2, p0, Lorg/gnucash/android/model/Budget;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v2}, Lorg/gnucash/android/model/Recurrence;->getPeriodStart()Ljava/sql/Timestamp;

    move-result-object v2

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 255
    .local v1, "localDate":Lorg/joda/time/LocalDateTime;
    iget-object v2, p0, Lorg/gnucash/android/model/Budget;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v2}, Lorg/gnucash/android/model/Recurrence;->getMultiplier()I

    move-result v2

    mul-int v0, v2, p1

    .line 256
    .local v0, "interval":I
    sget-object v2, Lorg/gnucash/android/model/Budget$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    iget-object v3, p0, Lorg/gnucash/android/model/Budget;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Recurrence;->getPeriodType()Lorg/gnucash/android/model/PeriodType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 273
    :goto_0
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2

    .line 258
    :pswitch_0
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->millisOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusHours(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 259
    goto :goto_0

    .line 261
    :pswitch_1
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->millisOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusDays(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 262
    goto :goto_0

    .line 264
    :pswitch_2
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->dayOfWeek()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->minusDays(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 265
    goto :goto_0

    .line 267
    :pswitch_3
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->dayOfMonth()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->minusMonths(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 268
    goto :goto_0

    .line 270
    :pswitch_4
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->dayOfYear()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->minusYears(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getStartofCurrentPeriod()J
    .locals 4

    .prologue
    .line 204
    new-instance v1, Lorg/joda/time/LocalDateTime;

    invoke-direct {v1}, Lorg/joda/time/LocalDateTime;-><init>()V

    .line 205
    .local v1, "localDate":Lorg/joda/time/LocalDateTime;
    iget-object v2, p0, Lorg/gnucash/android/model/Budget;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v2}, Lorg/gnucash/android/model/Recurrence;->getMultiplier()I

    move-result v0

    .line 206
    .local v0, "interval":I
    sget-object v2, Lorg/gnucash/android/model/Budget$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    iget-object v3, p0, Lorg/gnucash/android/model/Budget;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Recurrence;->getPeriodType()Lorg/gnucash/android/model/PeriodType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 223
    :goto_0
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2

    .line 208
    :pswitch_0
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->millisOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusHours(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 209
    goto :goto_0

    .line 211
    :pswitch_1
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->millisOfDay()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusDays(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 212
    goto :goto_0

    .line 214
    :pswitch_2
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->dayOfWeek()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->minusDays(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 215
    goto :goto_0

    .line 217
    :pswitch_3
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->dayOfMonth()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->minusMonths(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 218
    goto :goto_0

    .line 220
    :pswitch_4
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->dayOfYear()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime$Property;->withMinimumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->minusYears(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setBudgetAmounts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/BudgetAmount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "budgetAmounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/BudgetAmount;>;"
    iput-object p1, p0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    .line 127
    iget-object v1, p0, Lorg/gnucash/android/model/Budget;->mBudgetAmounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/BudgetAmount;

    .line 128
    .local v0, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {p0}, Lorg/gnucash/android/model/Budget;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/gnucash/android/model/BudgetAmount;->setBudgetUID(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .end local v0    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    :cond_0
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/gnucash/android/model/Budget;->mDescription:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    iput-object p1, p0, Lorg/gnucash/android/model/Budget;->mName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setNumberOfPeriods(J)V
    .locals 1
    .param p1, "numberOfPeriods"    # J

    .prologue
    .line 309
    iput-wide p1, p0, Lorg/gnucash/android/model/Budget;->mNumberOfPeriods:J

    .line 310
    return-void
.end method

.method public setRecurrence(Lorg/gnucash/android/model/Recurrence;)V
    .locals 0
    .param p1, "recurrence"    # Lorg/gnucash/android/model/Recurrence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    iput-object p1, p0, Lorg/gnucash/android/model/Budget;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    .line 111
    return-void
.end method
