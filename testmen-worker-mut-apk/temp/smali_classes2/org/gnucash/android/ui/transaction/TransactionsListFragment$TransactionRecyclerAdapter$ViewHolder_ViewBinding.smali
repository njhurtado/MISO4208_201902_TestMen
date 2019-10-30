.class public Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;

    .line 23
    const v0, 0x7f090184

    const-string v1, "field \'primaryText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->primaryText:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f0901b6

    const-string v1, "field \'secondaryText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->secondaryText:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f090211

    const-string v1, "field \'transactionAmount\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->transactionAmount:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f090170

    const-string v1, "field \'optionsMenu\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->optionsMenu:Landroid/widget/ImageView;

    .line 27
    const v0, 0x7f090212

    const-string v1, "field \'transactionDate\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->transactionDate:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f09009e

    const-string v1, "field \'editTransaction\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->editTransaction:Landroid/widget/ImageView;

    .line 29
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;

    .line 35
    .local v0, "target":Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;

    .line 38
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->primaryText:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->secondaryText:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->transactionAmount:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->optionsMenu:Landroid/widget/ImageView;

    .line 42
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->transactionDate:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->editTransaction:Landroid/widget/ImageView;

    .line 44
    return-void
.end method
