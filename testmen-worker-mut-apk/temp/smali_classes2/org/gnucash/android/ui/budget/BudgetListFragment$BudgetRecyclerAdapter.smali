.class Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;
.super Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;
.source "BudgetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/budget/BudgetListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BudgetRecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter",
        "<",
        "Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/budget/BudgetListFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/budget/BudgetListFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/budget/BudgetListFragment;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 202
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/budget/BudgetListFragment;

    .line 203
    invoke-direct {p0, p2}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;-><init>(Landroid/database/Cursor;)V

    .line 204
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolderCursor(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 200
    check-cast p1, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;->onBindViewHolderCursor(Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;Landroid/database/Cursor;)V

    return-void
.end method

.method public onBindViewHolderCursor(Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;Landroid/database/Cursor;)V
    .locals 20
    .param p1, "holder"    # Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/budget/BudgetListFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->access$000(Lorg/gnucash/android/ui/budget/BudgetListFragment;)Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Budget;

    move-result-object v10

    .line 209
    .local v10, "budget":Lorg/gnucash/android/model/Budget;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/budget/BudgetListFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->access$000(Lorg/gnucash/android/ui/budget/BudgetListFragment;)Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    move-result-object v3

    invoke-virtual {v10}, Lorg/gnucash/android/model/Budget;->getUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetId:J

    .line 211
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetName:Landroid/widget/TextView;

    invoke-virtual {v10}, Lorg/gnucash/android/model/Budget;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    .line 215
    .local v2, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    invoke-virtual {v10}, Lorg/gnucash/android/model/Budget;->getNumberOfAccounts()I

    move-result v16

    .line 216
    .local v16, "numberOfAccounts":I
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_0

    .line 217
    invoke-virtual {v10}, Lorg/gnucash/android/model/Budget;->getBudgetAmounts()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/BudgetAmount;

    invoke-virtual {v3}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 221
    .local v8, "accountString":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->accountName:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetRecurrence:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lorg/gnucash/android/model/Budget;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v5

    invoke-virtual {v5}, Lorg/gnucash/android/model/Recurrence;->getRepeatString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 224
    invoke-virtual {v10}, Lorg/gnucash/android/model/Budget;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v5

    invoke-virtual {v5}, Lorg/gnucash/android/model/Recurrence;->getDaysLeftInCurrentPeriod()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " days left"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    sget-object v17, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 227
    .local v17, "spentAmountValue":Ljava/math/BigDecimal;
    invoke-virtual {v10}, Lorg/gnucash/android/model/Budget;->getCompactedBudgetAmounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/gnucash/android/model/BudgetAmount;

    .line 228
    .local v11, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-virtual {v11}, Lorg/gnucash/android/model/BudgetAmount;->getAccountUID()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {v10}, Lorg/gnucash/android/model/Budget;->getStartofCurrentPeriod()J

    move-result-wide v4

    invoke-virtual {v10}, Lorg/gnucash/android/model/Budget;->getEndOfCurrentPeriod()J

    move-result-wide v6

    .line 228
    invoke-virtual/range {v2 .. v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Ljava/lang/String;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v9

    .line 230
    .local v9, "balance":Lorg/gnucash/android/model/Money;
    invoke-virtual {v9}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v17

    .line 231
    goto :goto_1

    .line 219
    .end local v8    # "accountString":Ljava/lang/String;
    .end local v9    # "balance":Lorg/gnucash/android/model/Money;
    .end local v11    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    .end local v17    # "spentAmountValue":Ljava/math/BigDecimal;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " budgeted accounts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "accountString":Ljava/lang/String;
    goto/16 :goto_0

    .line 233
    .restart local v17    # "spentAmountValue":Ljava/math/BigDecimal;
    :cond_1
    invoke-virtual {v10}, Lorg/gnucash/android/model/Budget;->getAmountSum()Lorg/gnucash/android/model/Money;

    move-result-object v14

    .line 234
    .local v14, "budgetTotal":Lorg/gnucash/android/model/Money;
    invoke-virtual {v14}, Lorg/gnucash/android/model/Money;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v15

    .line 235
    .local v15, "commodity":Lorg/gnucash/android/model/Commodity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lorg/gnucash/android/model/Commodity;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 236
    invoke-virtual {v14}, Lorg/gnucash/android/model/Money;->formattedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 237
    .local v18, "usedAmount":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetAmount:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v14}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v3

    .line 240
    invoke-virtual {v15}, Lorg/gnucash/android/model/Commodity;->getSmallestFractionDigits()I

    move-result v4

    sget-object v5, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 239
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    .line 242
    .local v12, "budgetProgress":D
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetIndicator:Landroid/widget/ProgressBar;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v12

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 244
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetAmount:Landroid/widget/TextView;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v12

    invoke-static {v4, v5}, Lorg/gnucash/android/ui/budget/BudgetsActivity;->getBudgetProgressColor(D)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10}, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$1;-><init>(Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;Lorg/gnucash/android/model/Budget;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b002e

    const/4 v3, 0x0

    .line 257
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;

    invoke-direct {v1, p0, v0}, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;-><init>(Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;Landroid/view/View;)V

    return-object v1
.end method
