.class Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;
.super Ljava/lang/Object;
.source "TransactionDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplitAmountViewHolder"
.end annotation


# instance fields
.field accountName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ce
    .end annotation
.end field

.field itemView:Landroid/view/View;

.field splitCredit:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d0
    .end annotation
.end field

.field splitDebit:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d2
    .end annotation
.end field

.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;Landroid/view/View;Lorg/gnucash/android/model/Split;)V
    .locals 5
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "split"    # Lorg/gnucash/android/model/Split;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;->this$0:Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;->itemView:Landroid/view/View;

    .line 104
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 106
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    .line 107
    .local v0, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;->accountName:Landroid/widget/TextView;

    invoke-virtual {p3}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p3}, Lorg/gnucash/android/model/Split;->getFormattedQuantity()Lorg/gnucash/android/model/Money;

    move-result-object v2

    .line 109
    .local v2, "quantity":Lorg/gnucash/android/model/Money;
    invoke-virtual {v2}, Lorg/gnucash/android/model/Money;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;->splitDebit:Landroid/widget/TextView;

    .line 110
    .local v1, "balanceView":Landroid/widget/TextView;
    :goto_0
    invoke-static {v1, v2}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V

    .line 111
    return-void

    .line 109
    .end local v1    # "balanceView":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;->splitCredit:Landroid/widget/TextView;

    goto :goto_0
.end method
