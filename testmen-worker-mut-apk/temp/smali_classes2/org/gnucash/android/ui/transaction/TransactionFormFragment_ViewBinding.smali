.class public Lorg/gnucash/android/ui/transaction/TransactionFormFragment_ViewBinding;
.super Ljava/lang/Object;
.source "TransactionFormFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionFormFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/transaction/TransactionFormFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .line 29
    const v0, 0x7f090103

    const-string v1, "field \'mTransactionTypeSwitch\'"

    const-class v2, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    .line 30
    const v0, 0x7f090102

    const-string v1, "field \'mDescriptionEditText\'"

    const-class v2, Landroid/widget/AutoCompleteTextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDescriptionEditText:Landroid/widget/AutoCompleteTextView;

    .line 31
    const v0, 0x7f090101

    const-string v1, "field \'mAmountEditText\'"

    const-class v2, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .line 32
    const v0, 0x7f090079

    const-string v1, "field \'mCurrencyTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCurrencyTextView:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0900f8

    const-string v1, "field \'mNotesEditText\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mNotesEditText:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f0900f6

    const-string v1, "field \'mDateTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDateTextView:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f090100

    const-string v1, "field \'mTimeTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTimeTextView:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f090104

    const-string v1, "field \'mTransferAccountSpinner\'"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransferAccountSpinner:Landroid/widget/Spinner;

    .line 37
    const v0, 0x7f090062

    const-string v1, "field \'mSaveTemplateCheckbox\'"

    const-class v2, Landroid/widget/CheckBox;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSaveTemplateCheckbox:Landroid/widget/CheckBox;

    .line 38
    const v0, 0x7f0900fc

    const-string v1, "field \'mRecurrenceTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mRecurrenceTextView:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f090051

    const-string v1, "field \'mKeyboardView\'"

    const-class v2, Landroid/inputmethodservice/KeyboardView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 40
    const v0, 0x7f090040

    const-string v1, "field \'mOpenSplitEditor\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mOpenSplitEditor:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f090124

    const-string v1, "field \'mDoubleEntryLayout\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDoubleEntryLayout:Landroid/view/View;

    .line 42
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .line 48
    .local v0, "target":Lorg/gnucash/android/ui/transaction/TransactionFormFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    .line 51
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransactionTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    .line 52
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDescriptionEditText:Landroid/widget/AutoCompleteTextView;

    .line 53
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .line 54
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mCurrencyTextView:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mNotesEditText:Landroid/widget/EditText;

    .line 56
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDateTextView:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTimeTextView:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mTransferAccountSpinner:Landroid/widget/Spinner;

    .line 59
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mSaveTemplateCheckbox:Landroid/widget/CheckBox;

    .line 60
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mRecurrenceTextView:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 62
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mOpenSplitEditor:Landroid/widget/ImageView;

    .line 63
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->mDoubleEntryLayout:Landroid/view/View;

    .line 64
    return-void
.end method
