.class public Lorg/gnucash/android/ui/budget/BudgetListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BudgetListFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/budget/BudgetListFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/budget/BudgetListFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/budget/BudgetListFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetListFragment;

    .line 22
    const v0, 0x7f09004e

    const-string v1, "field \'mRecyclerView\'"

    const-class v2, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    .line 23
    const v0, 0x7f0900a1

    const-string v1, "field \'mProposeBudgets\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mProposeBudgets:Landroid/widget/Button;

    .line 24
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetListFragment;

    .line 30
    .local v0, "target":Lorg/gnucash/android/ui/budget/BudgetListFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetListFragment;

    .line 33
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    .line 34
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mProposeBudgets:Landroid/widget/Button;

    .line 35
    return-void
.end method
