.class public Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;

    .line 24
    const v0, 0x7f090184

    const-string v1, "field \'budgetName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetName:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0901b6

    const-string v1, "field \'accountName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->accountName:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f090045

    const-string v1, "field \'budgetAmount\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetAmount:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f090170

    const-string v1, "field \'optionsMenu\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->optionsMenu:Landroid/widget/ImageView;

    .line 28
    const v0, 0x7f090049

    const-string v1, "field \'budgetIndicator\'"

    const-class v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetIndicator:Landroid/widget/ProgressBar;

    .line 29
    const v0, 0x7f09004d

    const-string v1, "field \'budgetRecurrence\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetRecurrence:Landroid/widget/TextView;

    .line 30
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;

    .line 36
    .local v0, "target":Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;

    .line 39
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetName:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->accountName:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetAmount:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->optionsMenu:Landroid/widget/ImageView;

    .line 43
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetIndicator:Landroid/widget/ProgressBar;

    .line 44
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter$BudgetViewHolder;->budgetRecurrence:Landroid/widget/TextView;

    .line 45
    return-void
.end method
