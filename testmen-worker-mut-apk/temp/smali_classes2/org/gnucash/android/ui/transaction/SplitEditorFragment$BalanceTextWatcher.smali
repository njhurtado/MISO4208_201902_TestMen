.class Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;
.super Ljava/lang/Object;
.source "SplitEditorFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/SplitEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BalanceTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;


# direct methods
.method private constructor <init>(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;Lorg/gnucash/android/ui/transaction/SplitEditorFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment;
    .param p2, "x1"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment$1;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;-><init>(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 425
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 427
    .local v4, "imbalance":Ljava/math/BigDecimal;
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-static {v7}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$100(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 428
    .local v5, "splitItem":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    .line 429
    .local v6, "viewHolder":Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;
    invoke-virtual {v6}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->getAmountValue()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v2

    .line 430
    .local v2, "amount":Ljava/math/BigDecimal;
    iget-object v8, v6, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->accountsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    .line 431
    .local v0, "accountId":J
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v8

    .line 432
    invoke-virtual {v8, v0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(J)Lorg/gnucash/android/model/AccountType;

    move-result-object v8

    invoke-virtual {v8}, Lorg/gnucash/android/model/AccountType;->hasDebitNormalBalance()Z

    move-result v3

    .line 434
    .local v3, "hasDebitNormalBalance":Z
    iget-object v8, v6, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v8}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 435
    if-eqz v3, :cond_0

    .line 436
    invoke-virtual {v4, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {v4, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    goto :goto_0

    .line 440
    :cond_1
    if-eqz v3, :cond_2

    .line 441
    invoke-virtual {v4, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {v4, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    goto :goto_0

    .line 448
    .end local v0    # "accountId":J
    .end local v2    # "amount":Ljava/math/BigDecimal;
    .end local v3    # "hasDebitNormalBalance":Z
    .end local v5    # "splitItem":Landroid/view/View;
    .end local v6    # "viewHolder":Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;
    :cond_3
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    iget-object v7, v7, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mImbalanceTextView:Landroid/widget/TextView;

    new-instance v8, Lorg/gnucash/android/model/Money;

    iget-object v9, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-static {v9}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$300(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Lorg/gnucash/android/model/Commodity;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    invoke-static {v7, v8}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V

    .line 449
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 416
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 421
    return-void
.end method
