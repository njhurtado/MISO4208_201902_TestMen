.class Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;
.super Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;
.source "AccountsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/account/AccountsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountRecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter",
        "<",
        "Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/account/AccountsListFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/account/AccountsListFragment;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 473
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    .line 474
    invoke-direct {p0, p2}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;-><init>(Landroid/database/Cursor;)V

    .line 475
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolderCursor(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 471
    check-cast p1, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->onBindViewHolderCursor(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;Landroid/database/Cursor;)V

    return-void
.end method

.method public onBindViewHolderCursor(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;Landroid/database/Cursor;)V
    .locals 18
    .param p1, "holder"    # Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 487
    const-string v2, "uid"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "accountUID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/gnucash/android/ui/account/AccountsListFragment;->access$002(Lorg/gnucash/android/ui/account/AccountsListFragment;Lorg/gnucash/android/db/adapter/AccountsDbAdapter;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/account/AccountsListFragment;->access$000(Lorg/gnucash/android/ui/account/AccountsListFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->accoundId:J

    .line 491
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->accountName:Landroid/widget/TextView;

    const-string v4, "name"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/account/AccountsListFragment;->access$000(Lorg/gnucash/android/ui/account/AccountsListFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getSubAccountCount(Ljava/lang/String;)I

    move-result v16

    .line 493
    .local v16, "subAccountCount":I
    if-lez v16, :cond_0

    .line 494
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->description:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d000a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move/from16 v0, v16

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 496
    .local v17, "text":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->description:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    .end local v17    # "text":Ljava/lang/String;
    :goto_0
    new-instance v2, Lorg/gnucash/android/ui/util/AccountBalanceTask;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->accountBalance:Landroid/widget/TextView;

    invoke-direct {v2, v4}, Lorg/gnucash/android/ui/util/AccountBalanceTask;-><init>(Landroid/widget/TextView;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/gnucash/android/ui/util/AccountBalanceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 505
    const-string v2, "color_code"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 506
    .local v8, "accountColor":Ljava/lang/String;
    if-nez v8, :cond_1

    const/4 v14, 0x0

    .line 507
    .local v14, "colorCode":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->colorStripView:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/account/AccountsListFragment;->access$000(Lorg/gnucash/android/ui/account/AccountsListFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->isPlaceholderAccount(Ljava/lang/String;)Z

    move-result v15

    .line 510
    .local v15, "isPlaceholderAccount":Z
    if-eqz v15, :cond_2

    .line 511
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->createTransaction:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    :goto_2
    invoke-static {}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getAccountBudgets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 528
    .local v11, "budgets":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Budget;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 529
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/gnucash/android/model/Budget;

    .line 530
    .local v10, "budget":Lorg/gnucash/android/model/Budget;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/account/AccountsListFragment;->access$000(Lorg/gnucash/android/ui/account/AccountsListFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    invoke-virtual {v10}, Lorg/gnucash/android/model/Budget;->getStartofCurrentPeriod()J

    move-result-wide v4

    invoke-virtual {v10}, Lorg/gnucash/android/model/Budget;->getEndOfCurrentPeriod()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Ljava/lang/String;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v9

    .line 531
    .local v9, "balance":Lorg/gnucash/android/model/Money;
    invoke-virtual {v10, v3}, Lorg/gnucash/android/model/Budget;->getAmount(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/gnucash/android/model/Money;->divide(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v12, v4, v6

    .line 533
    .local v12, "budgetProgress":D
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->budgetIndicator:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 534
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->budgetIndicator:Landroid/widget/ProgressBar;

    double-to-int v4, v12

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 540
    .end local v9    # "balance":Lorg/gnucash/android/model/Money;
    .end local v10    # "budget":Lorg/gnucash/android/model/Budget;
    .end local v12    # "budgetProgress":D
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/account/AccountsListFragment;->access$000(Lorg/gnucash/android/ui/account/AccountsListFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->isFavoriteAccount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 541
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->favoriteStatus:Landroid/widget/ImageView;

    const v4, 0x7f0800c3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 546
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->favoriteStatus:Landroid/widget/ImageView;

    new-instance v4, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v3, v1}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$2;-><init>(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;Ljava/lang/String;Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$3;-><init>(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    return-void

    .line 498
    .end local v8    # "accountColor":Ljava/lang/String;
    .end local v11    # "budgets":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Budget;>;"
    .end local v14    # "colorCode":I
    .end local v15    # "isPlaceholderAccount":Z
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->description:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 506
    .restart local v8    # "accountColor":Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    goto/16 :goto_1

    .line 513
    .restart local v14    # "colorCode":I
    .restart local v15    # "isPlaceholderAccount":Z
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->createTransaction:Landroid/widget/ImageView;

    new-instance v4, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$1;-><init>(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 536
    .restart local v11    # "budgets":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Budget;>;"
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->budgetIndicator:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 543
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->favoriteStatus:Landroid/widget/ImageView;

    const v4, 0x7f0800c4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 479
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b002c

    const/4 v3, 0x0

    .line 480
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 482
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;

    invoke-direct {v1, p0, v0}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;-><init>(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;Landroid/view/View;)V

    return-object v1
.end method
