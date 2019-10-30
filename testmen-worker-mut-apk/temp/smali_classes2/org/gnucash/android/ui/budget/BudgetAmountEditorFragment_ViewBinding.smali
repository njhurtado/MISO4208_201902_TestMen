.class public Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BudgetAmountEditorFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    .line 22
    const v0, 0x7f090046

    const-string v1, "field \'mBudgetAmountTableLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mBudgetAmountTableLayout:Landroid/widget/LinearLayout;

    .line 23
    const v0, 0x7f090051

    const-string v1, "field \'mKeyboardView\'"

    const-class v2, Landroid/inputmethodservice/KeyboardView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

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
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    .line 30
    .local v0, "target":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    .line 33
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mBudgetAmountTableLayout:Landroid/widget/LinearLayout;

    .line 34
    iput-object v1, v0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 35
    return-void
.end method
