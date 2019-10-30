.class public Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;
.super Landroid/support/v4/app/Fragment;
.source "BudgetAmountEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccountCursor:Landroid/database/Cursor;

.field private mAccountCursorAdapter:Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

.field private mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field mBudgetAmountTableLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090046
    .end annotation
.end field

.field private mBudgetAmountViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mKeyboardView:Landroid/inputmethodservice/KeyboardView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090051
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mBudgetAmountViews:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;)Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mAccountCursorAdapter:Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mBudgetAmountViews:Ljava/util/List;

    return-object v0
.end method

.method private addBudgetAmountView(Lorg/gnucash/android/model/BudgetAmount;)Landroid/view/View;
    .locals 6
    .param p1, "budgetAmount"    # Lorg/gnucash/android/model/BudgetAmount;

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 185
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0b006b

    iget-object v4, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mBudgetAmountTableLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "budgetAmountView":Landroid/view/View;
    new-instance v2, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    invoke-direct {v2, p0, v0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;-><init>(Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;Landroid/view/View;)V

    .line 188
    .local v2, "viewHolder":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {v2, p1}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->bindViews(Lorg/gnucash/android/model/BudgetAmount;)V

    .line 191
    :cond_0
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mBudgetAmountTableLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 192
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mBudgetAmountViews:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    return-object v0
.end method

.method private canSave()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mBudgetAmountViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 143
    .local v0, "budgetAmountView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    .line 144
    .local v1, "viewHolder":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
    iget-object v4, v1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->amountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v4}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->evaluate()Ljava/lang/String;

    .line 145
    iget-object v4, v1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->amountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v4}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 155
    .end local v0    # "budgetAmountView":Landroid/view/View;
    .end local v1    # "viewHolder":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
    :goto_0
    return v2

    .line 149
    .restart local v0    # "budgetAmountView":Landroid/view/View;
    .restart local v1    # "viewHolder":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
    :cond_1
    iget-object v4, v1, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->budgetAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "You need an account hierarchy to create a budget!"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 155
    .end local v0    # "budgetAmountView":Landroid/view/View;
    .end local v1    # "viewHolder":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private extractBudgetAmounts()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/BudgetAmount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v4, "budgetAmounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/BudgetAmount;>;"
    iget-object v7, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mBudgetAmountViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 218
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    .line 219
    .local v6, "viewHolder":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
    iget-object v8, v6, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->amountEditText:Lorg/gnucash/android/ui/util/widget/CalculatorEditText;

    invoke-virtual {v8}, Lorg/gnucash/android/ui/util/widget/CalculatorEditText;->getValue()Ljava/math/BigDecimal;

    move-result-object v2

    .line 220
    .local v2, "amountValue":Ljava/math/BigDecimal;
    if-eqz v2, :cond_0

    .line 222
    new-instance v1, Lorg/gnucash/android/model/Money;

    sget-object v8, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    invoke-direct {v1, v2, v8}, Lorg/gnucash/android/model/Money;-><init>(Ljava/math/BigDecimal;Lorg/gnucash/android/model/Commodity;)V

    .line 223
    .local v1, "amount":Lorg/gnucash/android/model/Money;
    iget-object v8, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v9, v6, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->budgetAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "accountUID":Ljava/lang/String;
    new-instance v3, Lorg/gnucash/android/model/BudgetAmount;

    invoke-direct {v3, v1, v0}, Lorg/gnucash/android/model/BudgetAmount;-><init>(Lorg/gnucash/android/model/Money;Ljava/lang/String;)V

    .line 225
    .local v3, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v0    # "accountUID":Ljava/lang/String;
    .end local v1    # "amount":Lorg/gnucash/android/model/Money;
    .end local v2    # "amountValue":Ljava/math/BigDecimal;
    .end local v3    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewHolder":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
    :cond_1
    return-object v4
.end method

.method private loadBudgetAmountViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/BudgetAmount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "budgetAmounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/BudgetAmount;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/BudgetAmount;

    .line 174
    .local v0, "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->addBudgetAmountView(Lorg/gnucash/android/model/BudgetAmount;)Landroid/view/View;

    goto :goto_0

    .line 176
    .end local v0    # "budgetAmount":Lorg/gnucash/android/model/BudgetAmount;
    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 71
    new-instance v0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;-><init>()V

    .line 72
    .local v0, "fragment":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;
    invoke-virtual {v0, p0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v0
.end method

.method private saveBudgetAmounts()V
    .locals 4

    .prologue
    .line 159
    invoke-direct {p0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->canSave()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-direct {p0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->extractBudgetAmounts()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 161
    .local v0, "budgetAmounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/gnucash/android/model/BudgetAmount;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v1, "data":Landroid/content/Intent;
    const-string v2, "budget_amount_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 166
    .end local v0    # "budgetAmounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/gnucash/android/model/BudgetAmount;>;"
    .end local v1    # "data":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setupAccountSpinnerAdapter()V
    .locals 4

    .prologue
    .line 201
    const-string v0, "(is_hidden = 0 )"

    .line 203
    .local v0, "conditions":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mAccountCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mAccountCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccountsOrderedByFavoriteAndFullName(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mAccountCursor:Landroid/database/Cursor;

    .line 208
    new-instance v1, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mAccountCursor:Landroid/database/Cursor;

    invoke-direct {v1, v2, v3}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mAccountCursorAdapter:Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    .line 209
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 97
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    sget-boolean v3, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 98
    :cond_0
    const-string v3, "Edit Budget Amounts"

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->setHasOptionsMenu(Z)V

    .line 101
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "budget_amount_list"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 102
    .local v1, "budgetAmounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/gnucash/android/model/BudgetAmount;>;"
    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    invoke-direct {p0, v6}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->addBudgetAmountView(Lorg/gnucash/android/model/BudgetAmount;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    .line 105
    .local v2, "viewHolder":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
    iget-object v3, v2, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->removeItemBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    .end local v2    # "viewHolder":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-direct {p0, v1}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->loadBudgetAmountViews(Ljava/util/List;)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-direct {p0, v6}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->addBudgetAmountView(Lorg/gnucash/android/model/BudgetAmount;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;

    .line 111
    .restart local v2    # "viewHolder":Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;
    iget-object v3, v2, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment$BudgetAmountViewHolder;->removeItemBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 90
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 118
    const v0, 0x7f0c0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    const v1, 0x7f0b0054

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 82
    invoke-direct {p0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->setupAccountSpinnerAdapter()V

    .line 83
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 133
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 125
    :sswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->addBudgetAmountView(Lorg/gnucash/android/model/BudgetAmount;)Landroid/view/View;

    goto :goto_0

    .line 129
    :sswitch_1
    invoke-direct {p0}, Lorg/gnucash/android/ui/budget/BudgetAmountEditorFragment;->saveBudgetAmounts()V

    goto :goto_0

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x7f090134 -> :sswitch_0
        0x7f090141 -> :sswitch_1
    .end sparse-switch
.end method
