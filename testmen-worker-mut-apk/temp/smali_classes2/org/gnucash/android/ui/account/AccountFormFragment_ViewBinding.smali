.class public Lorg/gnucash/android/ui/account/AccountFormFragment_ViewBinding;
.super Ljava/lang/Object;
.source "AccountFormFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/account/AccountFormFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/account/AccountFormFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/account/AccountFormFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment_ViewBinding;->target:Lorg/gnucash/android/ui/account/AccountFormFragment;

    .line 25
    const v0, 0x7f0900eb

    const-string v1, "field \'mNameEditText\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountFormFragment;->mNameEditText:Landroid/widget/EditText;

    .line 26
    const v0, 0x7f090153

    const-string v1, "field \'mTextInputLayout\'"

    const-class v2, Landroid/support/design/widget/TextInputLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountFormFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 27
    const v0, 0x7f0900f5

    const-string v1, "field \'mCurrencySpinner\'"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountFormFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    .line 28
    const v0, 0x7f0900fb

    const-string v1, "field \'mParentAccountSpinner\'"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountSpinner:Landroid/widget/Spinner;

    .line 29
    const v0, 0x7f09005f

    const-string v1, "field \'mParentCheckBox\'"

    const-class v2, Landroid/widget/CheckBox;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentCheckBox:Landroid/widget/CheckBox;

    .line 30
    const v0, 0x7f0900ec

    const-string v1, "field \'mAccountTypeSpinner\'"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountTypeSpinner:Landroid/widget/Spinner;

    .line 31
    const v0, 0x7f09005e

    const-string v1, "field \'mDefaultTransferAccountCheckBox\'"

    const-class v2, Landroid/widget/CheckBox;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountCheckBox:Landroid/widget/CheckBox;

    .line 32
    const v0, 0x7f0900f7

    const-string v1, "field \'mDefaultTransferAccountSpinner\'"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountSpinner:Landroid/widget/Spinner;

    .line 33
    const v0, 0x7f0900ea

    const-string v1, "field \'mDescriptionEditText\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDescriptionEditText:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f090060

    const-string v1, "field \'mPlaceholderCheckBox\'"

    const-class v2, Landroid/widget/CheckBox;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountFormFragment;->mPlaceholderCheckBox:Landroid/widget/CheckBox;

    .line 35
    const v0, 0x7f0900f3

    const-string v1, "field \'mColorSquare\'"

    const-class v2, Lorg/gnucash/android/ui/colorpicker/ColorSquare;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/colorpicker/ColorSquare;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountFormFragment;->mColorSquare:Lorg/gnucash/android/ui/colorpicker/ColorSquare;

    .line 36
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment_ViewBinding;->target:Lorg/gnucash/android/ui/account/AccountFormFragment;

    .line 42
    .local v0, "target":Lorg/gnucash/android/ui/account/AccountFormFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment_ViewBinding;->target:Lorg/gnucash/android/ui/account/AccountFormFragment;

    .line 45
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mNameEditText:Landroid/widget/EditText;

    .line 46
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 47
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    .line 48
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountSpinner:Landroid/widget/Spinner;

    .line 49
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentCheckBox:Landroid/widget/CheckBox;

    .line 50
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountTypeSpinner:Landroid/widget/Spinner;

    .line 51
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountCheckBox:Landroid/widget/CheckBox;

    .line 52
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountSpinner:Landroid/widget/Spinner;

    .line 53
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDescriptionEditText:Landroid/widget/EditText;

    .line 54
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mPlaceholderCheckBox:Landroid/widget/CheckBox;

    .line 55
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mColorSquare:Lorg/gnucash/android/ui/colorpicker/ColorSquare;

    .line 56
    return-void
.end method
