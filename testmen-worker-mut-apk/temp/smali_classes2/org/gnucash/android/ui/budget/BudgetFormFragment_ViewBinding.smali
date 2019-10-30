.class public Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BudgetFormFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/budget/BudgetFormFragment;

.field private view2131296309:Landroid/view/View;

.field private view2131296511:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/budget/BudgetFormFragment;Landroid/view/View;)V
    .locals 6
    .param p1, "target"    # Lorg/gnucash/android/ui/budget/BudgetFormFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const v5, 0x7f0900ff

    const v4, 0x7f090035

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetFormFragment;

    .line 33
    const v1, 0x7f0900f2

    const-string v2, "field \'mBudgetNameInput\'"

    const-class v3, Landroid/widget/EditText;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetNameInput:Landroid/widget/EditText;

    .line 34
    const v1, 0x7f0900f8

    const-string v2, "field \'mDescriptionInput\'"

    const-class v3, Landroid/widget/EditText;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mDescriptionInput:Landroid/widget/EditText;

    .line 35
    const v1, 0x7f0900fc

    const-string v2, "field \'mRecurrenceInput\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mRecurrenceInput:Landroid/widget/TextView;

    .line 36
    const v1, 0x7f090153

    const-string v2, "field \'mNameTextInputLayout\'"

    const-class v3, Landroid/support/design/widget/TextInputLayout;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TextInputLayout;

    iput-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mNameTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 37
    const v1, 0x7f090051

    const-string v2, "field \'mKeyboardView\'"

    const-class v3, Landroid/inputmethodservice/KeyboardView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    iput-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 38
    const v1, 0x7f0900f1

    const-string v2, "field \'mBudgetAmountInput\'"

    const-class v3, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iput-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmountInput:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .line 39
    const v1, 0x7f0900f0

    const-string v2, "field \'mBudgetAccountSpinner\'"

    const-class v3, Landroid/widget/Spinner;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAccountSpinner:Landroid/widget/Spinner;

    .line 40
    const-string v1, "field \'mAddBudgetAmount\' and method \'onOpenBudgetAmountEditor\'"

    invoke-static {p2, v4, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'mAddBudgetAmount\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {v0, v4, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mAddBudgetAmount:Landroid/widget/Button;

    .line 42
    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;->view2131296309:Landroid/view/View;

    .line 43
    new-instance v1, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding$1;-><init>(Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;Lorg/gnucash/android/ui/budget/BudgetFormFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const-string v1, "field \'mStartDateInput\' and method \'onClickBudgetStartDate\'"

    invoke-static {p2, v5, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    const-string v1, "field \'mStartDateInput\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v0, v5, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mStartDateInput:Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;->view2131296511:Landroid/view/View;

    .line 52
    new-instance v1, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding$2;-><init>(Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;Lorg/gnucash/android/ui/budget/BudgetFormFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f090046

    const-string v2, "field \'mBudgetAmountLayout\'"

    invoke-static {p2, v1, v2}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmountLayout:Landroid/view/View;

    .line 59
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetFormFragment;

    .line 65
    .local v0, "target":Lorg/gnucash/android/ui/budget/BudgetFormFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    iput-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;->target:Lorg/gnucash/android/ui/budget/BudgetFormFragment;

    .line 68
    iput-object v2, v0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetNameInput:Landroid/widget/EditText;

    .line 69
    iput-object v2, v0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mDescriptionInput:Landroid/widget/EditText;

    .line 70
    iput-object v2, v0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mRecurrenceInput:Landroid/widget/TextView;

    .line 71
    iput-object v2, v0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mNameTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 72
    iput-object v2, v0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 73
    iput-object v2, v0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmountInput:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .line 74
    iput-object v2, v0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAccountSpinner:Landroid/widget/Spinner;

    .line 75
    iput-object v2, v0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mAddBudgetAmount:Landroid/widget/Button;

    .line 76
    iput-object v2, v0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mStartDateInput:Landroid/widget/TextView;

    .line 77
    iput-object v2, v0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->mBudgetAmountLayout:Landroid/view/View;

    .line 79
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;->view2131296309:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;->view2131296309:Landroid/view/View;

    .line 81
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;->view2131296511:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iput-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetFormFragment_ViewBinding;->view2131296511:Landroid/view/View;

    .line 83
    return-void
.end method
