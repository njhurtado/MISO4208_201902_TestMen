.class Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;
.super Ljava/lang/Object;
.source "TransactionFormFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->initTransactionNameAutocomplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .prologue
    .line 429
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 432
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    new-instance v6, Lorg/gnucash/android/model/Transaction;

    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$500(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getRecord(J)Lorg/gnucash/android/model/BaseModel;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Transaction;

    invoke-direct {v6, v3, v1}, Lorg/gnucash/android/model/Transaction;-><init>(Lorg/gnucash/android/model/Transaction;Z)V

    invoke-static {v4, v6}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$602(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;Lorg/gnucash/android/model/Transaction;)Lorg/gnucash/android/model/Transaction;

    .line 433
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$600(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Lorg/gnucash/android/model/Transaction;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/gnucash/android/model/Transaction;->setTime(J)V

    .line 435
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    iget-object v3, v3, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->isInputModified()Z

    move-result v0

    .line 436
    .local v0, "amountEntered":Z
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$700(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)V

    .line 437
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$600(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Lorg/gnucash/android/model/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/Transaction;->getSplits()Ljava/util/List;

    move-result-object v2

    .line 438
    .local v2, "splitList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Split;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/gnucash/android/model/Split;

    invoke-virtual {v3, v4}, Lorg/gnucash/android/model/Split;->isPairOf(Lorg/gnucash/android/model/Split;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    .local v1, "isSplitPair":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 440
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$100(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 441
    if-nez v0, :cond_0

    .line 442
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    iget-object v4, v3, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Split;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->setValue(Ljava/math/BigDecimal;)V

    .line 453
    :cond_0
    :goto_1
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$602(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;Lorg/gnucash/android/model/Transaction;)Lorg/gnucash/android/model/Transaction;

    .line 454
    return-void

    .end local v1    # "isSplitPair":Z
    :cond_1
    move v1, v5

    .line 438
    goto :goto_0

    .line 444
    .restart local v1    # "isSplitPair":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 445
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$100(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 446
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v3, v5}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$800(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;I)V

    goto :goto_1

    .line 448
    :cond_3
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$900(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->access$800(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;I)V

    goto :goto_1
.end method
