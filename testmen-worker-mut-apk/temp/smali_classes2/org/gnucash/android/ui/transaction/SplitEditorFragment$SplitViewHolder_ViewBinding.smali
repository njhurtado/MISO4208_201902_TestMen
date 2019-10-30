.class public Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SplitEditorFragment$SplitViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    .line 27
    const v0, 0x7f0900fe

    const-string v1, "field \'splitMemoEditText\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitMemoEditText:Landroid/widget/EditText;

    .line 28
    const v0, 0x7f0900fd

    const-string v1, "field \'splitAmountEditText\'"

    const-class v2, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .line 29
    const v0, 0x7f09003e

    const-string v1, "field \'removeSplitButton\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->removeSplitButton:Landroid/widget/ImageView;

    .line 30
    const v0, 0x7f0900ed

    const-string v1, "field \'accountsSpinner\'"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->accountsSpinner:Landroid/widget/Spinner;

    .line 31
    const v0, 0x7f0901d1

    const-string v1, "field \'splitCurrencyTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitCurrencyTextView:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f0901d4

    const-string v1, "field \'splitUidTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitUidTextView:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f090041

    const-string v1, "field \'splitTypeSwitch\'"

    const-class v2, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    .line 34
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    .line 40
    .local v0, "target":Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;

    .line 43
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitMemoEditText:Landroid/widget/EditText;

    .line 44
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitAmountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    .line 45
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->removeSplitButton:Landroid/widget/ImageView;

    .line 46
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->accountsSpinner:Landroid/widget/Spinner;

    .line 47
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitCurrencyTextView:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitUidTextView:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/SplitEditorFragment$SplitViewHolder;->splitTypeSwitch:Lorg/gnucash/android/ui/util/widget/TransactionTypeSwitch;

    .line 50
    return-void
.end method
