.class public Lorg/gnucash/android/ui/common/FormActivity;
.super Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;
.source "FormActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/common/FormActivity$FormType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccountUID:Ljava/lang/String;

.field private mOnBackListener:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/common/FormActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;-><init>()V

    return-void
.end method

.method private showAccountFormFragment(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-static {}, Lorg/gnucash/android/ui/account/AccountFormFragment;->newInstance()Lorg/gnucash/android/ui/account/AccountFormFragment;

    move-result-object v0

    .line 152
    .local v0, "accountFormFragment":Lorg/gnucash/android/ui/account/AccountFormFragment;
    invoke-virtual {v0, p1}, Lorg/gnucash/android/ui/account/AccountFormFragment;->setArguments(Landroid/os/Bundle;)V

    .line 153
    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/common/FormActivity;->showFormFragment(Landroid/support/v4/app/Fragment;)V

    .line 154
    return-void
.end method

.method private showBudgetAmountEditorFragment(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-static {p1}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->newInstance(Landroid/os/Bundle;)Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    move-result-object v0

    .line 201
    .local v0, "fragment":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;
    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/common/FormActivity;->showFormFragment(Landroid/support/v4/app/Fragment;)V

    .line 202
    return-void
.end method

.method private showBudgetFormFragment(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 190
    new-instance v0, Lorg/gnucash/android/ui/budget/BudgetFormFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;-><init>()V

    .line 191
    .local v0, "budgetFormFragment":Lorg/gnucash/android/ui/budget/BudgetFormFragment;
    invoke-virtual {v0, p1}, Lorg/gnucash/android/ui/budget/BudgetFormFragment;->setArguments(Landroid/os/Bundle;)V

    .line 192
    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/common/FormActivity;->showFormFragment(Landroid/support/v4/app/Fragment;)V

    .line 193
    return-void
.end method

.method private showExportFormFragment(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 171
    new-instance v0, Lorg/gnucash/android/ui/export/ExportFormFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/export/ExportFormFragment;-><init>()V

    .line 172
    .local v0, "exportFragment":Lorg/gnucash/android/ui/export/ExportFormFragment;
    invoke-virtual {v0, p1}, Lorg/gnucash/android/ui/export/ExportFormFragment;->setArguments(Landroid/os/Bundle;)V

    .line 173
    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/common/FormActivity;->showFormFragment(Landroid/support/v4/app/Fragment;)V

    .line 174
    return-void
.end method

.method private showFormFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/FormActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 211
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 213
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0900c8

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 214
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 215
    return-void
.end method

.method private showSplitEditorFragment(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-static {p1}, Lorg/gnucash/android/ui/transaction/SplitEditorFragment;->newInstance(Landroid/os/Bundle;)Lorg/gnucash/android/ui/transaction/SplitEditorFragment;

    move-result-object v0

    .line 182
    .local v0, "splitEditor":Lorg/gnucash/android/ui/transaction/SplitEditorFragment;
    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/common/FormActivity;->showFormFragment(Landroid/support/v4/app/Fragment;)V

    .line 183
    return-void
.end method

.method private showTransactionFormFragment(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 161
    new-instance v0, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;-><init>()V

    .line 162
    .local v0, "transactionFormFragment":Lorg/gnucash/android/ui/transaction/TransactionFormFragment;
    invoke-virtual {v0, p1}, Lorg/gnucash/android/ui/transaction/TransactionFormFragment;->setArguments(Landroid/os/Bundle;)V

    .line 163
    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/common/FormActivity;->showFormFragment(Landroid/support/v4/app/Fragment;)V

    .line 164
    return-void
.end method


# virtual methods
.method public getCurrentAccountUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/gnucash/android/ui/common/FormActivity;->mAccountUID:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, "eventProcessed":Z
    iget-object v1, p0, Lorg/gnucash/android/ui/common/FormActivity;->mOnBackListener:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lorg/gnucash/android/ui/common/FormActivity;->mOnBackListener:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;->onBackPressed()Z

    move-result v0

    .line 229
    :cond_0
    if-nez v0, :cond_1

    .line 230
    invoke-super {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onBackPressed()V

    .line 231
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 59
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v7, 0x7f0b0021

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/common/FormActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/FormActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "book_uid"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "bookUID":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 65
    invoke-static {v1}, Lorg/gnucash/android/util/BookUtils;->activateBook(Ljava/lang/String;)V

    .line 68
    :cond_0
    const v7, 0x7f090206

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/common/FormActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/Toolbar;

    .line 69
    .local v6, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/common/FormActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 71
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/FormActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 72
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    sget-boolean v7, Lorg/gnucash/android/ui/common/FormActivity;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-nez v0, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 73
    :cond_1
    invoke-virtual {v0, v9}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 74
    invoke-virtual {v0, v9}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    const v7, 0x7f0800aa

    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 77
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/FormActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 78
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "form_type"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "formtypeString":Ljava/lang/String;
    invoke-static {v4}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/ui/common/FormActivity$FormType;

    move-result-object v3

    .line 81
    .local v3, "formType":Lorg/gnucash/android/ui/common/FormActivity$FormType;
    const-string v7, "account_uid"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/gnucash/android/ui/common/FormActivity;->mAccountUID:Ljava/lang/String;

    .line 82
    iget-object v7, p0, Lorg/gnucash/android/ui/common/FormActivity;->mAccountUID:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 83
    const-string v7, "parent_account_uid"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/gnucash/android/ui/common/FormActivity;->mAccountUID:Ljava/lang/String;

    .line 85
    :cond_2
    iget-object v7, p0, Lorg/gnucash/android/ui/common/FormActivity;->mAccountUID:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 86
    iget-object v7, p0, Lorg/gnucash/android/ui/common/FormActivity;->mAccountUID:Ljava/lang/String;

    invoke-static {v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getActiveAccountColorResource(Ljava/lang/String;)I

    move-result v2

    .line 87
    .local v2, "colorCode":I
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x14

    if-le v7, v8, :cond_3

    .line 89
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/FormActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {v2}, Lorg/gnucash/android/app/GnuCashApplication;->darken(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 91
    .end local v2    # "colorCode":I
    :cond_3
    sget-object v7, Lorg/gnucash/android/ui/common/FormActivity$1;->$SwitchMap$org$gnucash$android$ui$common$FormActivity$FormType:[I

    invoke-virtual {v3}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 117
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "No form display type specified"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 93
    :pswitch_0
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/gnucash/android/ui/common/FormActivity;->showAccountFormFragment(Landroid/os/Bundle;)V

    .line 121
    :goto_0
    return-void

    .line 97
    :pswitch_1
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/gnucash/android/ui/common/FormActivity;->showTransactionFormFragment(Landroid/os/Bundle;)V

    goto :goto_0

    .line 101
    :pswitch_2
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/gnucash/android/ui/common/FormActivity;->showExportFormFragment(Landroid/os/Bundle;)V

    goto :goto_0

    .line 105
    :pswitch_3
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/gnucash/android/ui/common/FormActivity;->showSplitEditorFragment(Landroid/os/Bundle;)V

    goto :goto_0

    .line 109
    :pswitch_4
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/gnucash/android/ui/common/FormActivity;->showBudgetFormFragment(Landroid/os/Bundle;)V

    goto :goto_0

    .line 113
    :pswitch_5
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/gnucash/android/ui/common/FormActivity;->showBudgetAmountEditorFragment(Landroid/os/Bundle;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 127
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/common/FormActivity;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/FormActivity;->finish()V

    .line 129
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setOnBackListener(Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;)V
    .locals 0
    .param p1, "keyboard"    # Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/gnucash/android/ui/common/FormActivity;->mOnBackListener:Lorg/gnucash/android/ui/util/widget/CalculatorKeyboard;

    .line 220
    return-void
.end method
