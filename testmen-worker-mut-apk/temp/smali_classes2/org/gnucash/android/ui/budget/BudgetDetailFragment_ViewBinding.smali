.class public Lorg/gnucash/android/ui/budget/BudgetDetailFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BudgetDetailFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/budget/BudgetDetailFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/budget/BudgetDetailFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/budget/BudgetDetailFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetDetailFragment;

    .line 22
    const v0, 0x7f090184

    const-string v1, "field \'mBudgetNameTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetNameTextView:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0901b6

    const-string v1, "field \'mBudgetDescriptionTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetDescriptionTextView:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f09004d

    const-string v1, "field \'mBudgetRecurrence\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetRecurrence:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f090047

    const-string v1, "field \'mRecyclerView\'"

    const-class v2, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    .line 26
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetDetailFragment;

    .line 32
    .local v0, "target":Lorg/gnucash/android/ui/budget/BudgetDetailFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetDetailFragment;

    .line 35
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetNameTextView:Landroid/widget/TextView;

    .line 36
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetDescriptionTextView:Landroid/widget/TextView;

    .line 37
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetRecurrence:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    .line 39
    return-void
.end method
