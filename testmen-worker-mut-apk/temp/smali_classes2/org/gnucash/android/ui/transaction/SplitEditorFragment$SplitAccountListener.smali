.class Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;
.super Ljava/lang/Object;
.source "SplitEditorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/SplitEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitAccountListener"
.end annotation


# instance fields
.field mSplitViewHolder:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

.field mTypeToggleButton:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

.field userInteraction:Z


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;)V
    .locals 1
    .param p2, "typeToggleButton"    # Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;
    .param p3, "viewHolder"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    .prologue
    .line 465
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->userInteraction:Z

    .line 466
    iput-object p2, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->mTypeToggleButton:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    .line 467
    iput-object p3, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->mSplitViewHolder:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    .line 468
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "selectedItemView"    # Landroid/view/View;
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
    .line 472
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-static {v6}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$500(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(J)Lorg/gnucash/android/model/AccountType;

    move-result-object v0

    .line 473
    .local v0, "accountType":Lorg/gnucash/android/model/AccountType;
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->mTypeToggleButton:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-virtual {v6, v0}, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 476
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    iget-object v6, v6, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->mImbalanceWatcher:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$BalanceTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 478
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-static {v6}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$500(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-static {v7}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$700(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, "fromCurrencyCode":Ljava/lang/String;
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-static {v6}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$500(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-static {v7}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->access$500(Lorg/gnucash/android/ui/transaction/SplitEditorFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v7

    invoke-virtual {v7, p4, p5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, "targetCurrencyCode":Ljava/lang/String;
    iget-boolean v6, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->userInteraction:Z

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 483
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->userInteraction:Z

    .line 495
    :cond_1
    :goto_0
    return-void

    .line 487
    :cond_2
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->mSplitViewHolder:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    iget-object v6, v6, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getValue()Ljava/math/BigDecimal;

    move-result-object v2

    .line 488
    .local v2, "amountBigD":Ljava/math/BigDecimal;
    if-eqz v2, :cond_1

    .line 491
    new-instance v1, Lorg/gnucash/android/model/Money;

    invoke-static {v4}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    .line 492
    .local v1, "amount":Lorg/gnucash/android/model/Money;
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->mSplitViewHolder:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    .line 493
    invoke-static {v1, v5, v6}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->getInstance(Lorg/gnucash/android/model/Money;Ljava/lang/String;Lorg/gnucash/android/ui/transaction/OnTransferFundsListener;)Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    move-result-object v3

    .line 494
    .local v3, "fragment":Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitAccountListener;->this$0:Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "tranfer_funds_editor"

    invoke-virtual {v3, v6, v7}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
