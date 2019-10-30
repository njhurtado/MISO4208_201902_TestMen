.class public Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "BudgetAmountEditorFragment$BudgetAmountViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    .line 25
    const v0, 0x7f090079

    const-string v1, "field \'currencySymbolTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->currencySymbolTextView:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0900f1

    const-string v1, "field \'amountEditText\'"

    const-class v2, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->amountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .line 27
    const v0, 0x7f09003d

    const-string v1, "field \'removeItemBtn\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->removeItemBtn:Landroid/widget/ImageView;

    .line 28
    const v0, 0x7f0900f0

    const-string v1, "field \'budgetAccountSpinner\'"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->budgetAccountSpinner:Landroid/widget/Spinner;

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
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    .line 35
    .local v0, "target":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    .line 38
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->currencySymbolTextView:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->amountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .line 40
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->removeItemBtn:Landroid/widget/ImageView;

    .line 41
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->budgetAccountSpinner:Landroid/widget/Spinner;

    .line 42
    return-void
.end method
