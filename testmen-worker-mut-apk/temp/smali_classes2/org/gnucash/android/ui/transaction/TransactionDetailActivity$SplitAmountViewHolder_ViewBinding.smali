.class public Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "TransactionDetailActivity$SplitAmountViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;

    .line 22
    const v0, 0x7f0901ce

    const-string v1, "field \'accountName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;->accountName:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0901d2

    const-string v1, "field \'splitDebit\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;->splitDebit:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f0901d0

    const-string v1, "field \'splitCredit\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;->splitCredit:Landroid/widget/TextView;

    .line 25
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;

    .line 31
    .local v0, "target":Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;

    .line 34
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;->accountName:Landroid/widget/TextView;

    .line 35
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;->splitDebit:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity$SplitAmountViewHolder;->splitCredit:Landroid/widget/TextView;

    .line 37
    return-void
.end method
