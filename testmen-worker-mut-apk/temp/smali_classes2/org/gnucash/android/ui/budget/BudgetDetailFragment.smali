.class public Lorg/gnucash/android/ui/budget/BudgetDetailFragment;
.super Landroid/support/v4/app/Fragment;
.source "BudgetDetailFragment.java"

# interfaces
.implements Lorg/gnucash/android/ui/common/Refreshable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mBudgetDescriptionTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901b6
    .end annotation
.end field

.field mBudgetNameTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090184
    .end annotation
.end field

.field mBudgetRecurrence:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09004d
    .end annotation
.end field

.field private mBudgetUID:Ljava/lang/String;

.field private mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

.field mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090047
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/budget/BudgetDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/budget/BudgetDetailFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/budget/BudgetDetailFragment;)Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/budget/BudgetDetailFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    return-object v0
.end method

.method private bindViews()V
    .locals 4

    .prologue
    .line 119
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Budget;

    .line 120
    .local v0, "budget":Lorg/gnucash/android/model/Budget;
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Budget;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v0}, Lorg/gnucash/android/model/Budget;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "description":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_0
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetRecurrence:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Budget;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/Recurrence;->getRepeatString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    new-instance v3, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;

    invoke-direct {v3, p0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment$BudgetAmountAdapter;-><init>(Lorg/gnucash/android/ui/budget/BudgetDetailFragment;)V

    invoke-virtual {v2, v3}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 131
    return-void

    .line 126
    :cond_0
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetDescriptionTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/gnucash/android/ui/budget/BudgetDetailFragment;
    .locals 3
    .param p0, "budgetUID"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v1, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;

    invoke-direct {v1}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;-><init>()V

    .line 81
    .local v1, "fragment":Lorg/gnucash/android/ui/budget/BudgetDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "budget_uid"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    invoke-static {}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    .line 112
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "budget_uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetUID:Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->bindViews()V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->setHasOptionsMenu(Z)V

    .line 116
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 182
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->refresh()V

    .line 185
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 161
    const v0, 0x7f0c0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 162
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 90
    const v3, 0x7f0b0055

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 91
    .local v2, "view":Landroid/view/View;
    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 92
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetDescriptionTextView:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 94
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setHasFixedSize(Z)V

    .line 96
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_0

    .line 97
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 98
    .local v0, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-virtual {v3, v0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 103
    .end local v0    # "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    :goto_0
    return-object v2

    .line 100
    :cond_0
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 101
    .local v1, "mLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-virtual {v3, v1}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 166
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 176
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 168
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, "addAccountIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->BUDGET:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, "budget_uid"

    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 173
    const/4 v1, 0x1

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x7f09013a
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 136
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->refresh()V

    .line 138
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0900b8

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 140
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 5

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->bindViews()V

    .line 147
    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetUID:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v3, v4}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "budgetName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 149
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    sget-boolean v2, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 150
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Budget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 0
    .param p1, "budgetUID"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->mBudgetUID:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->refresh()V

    .line 157
    return-void
.end method
