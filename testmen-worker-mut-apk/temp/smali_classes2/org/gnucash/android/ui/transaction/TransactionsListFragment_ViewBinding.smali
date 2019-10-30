.class public Lorg/gnucash/android/ui/transaction/TransactionsListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "TransactionsListFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/transaction/TransactionsListFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    .line 21
    const v0, 0x7f090213

    const-string v1, "field \'mRecyclerView\'"

    const-class v2, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    .line 22
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    .line 28
    .local v0, "target":Lorg/gnucash/android/ui/transaction/TransactionsListFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    .line 31
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    .line 32
    return-void
.end method
