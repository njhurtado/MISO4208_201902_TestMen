.class public Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;

    .line 24
    const v0, 0x7f090043

    const-string v1, "field \'budgetAccount\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetAccount:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f090045

    const-string v1, "field \'budgetAmount\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetAmount:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f09004f

    const-string v1, "field \'budgetSpent\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetSpent:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f09004b

    const-string v1, "field \'budgetLeft\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetLeft:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f090049

    const-string v1, "field \'budgetIndicator\'"

    const-class v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetIndicator:Landroid/widget/ProgressBar;

    .line 29
    const v0, 0x7f090048

    const-string v1, "field \'budgetChart\'"

    const-class v2, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetChart:Lcom/github/mikephil/charting/charts/BarChart;

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
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;

    .line 36
    .local v0, "target":Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;

    .line 39
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetAccount:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetAmount:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetSpent:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetLeft:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetIndicator:Landroid/widget/ProgressBar;

    .line 44
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter$BudgetAmountViewHolder;->budgetChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 45
    return-void
.end method
