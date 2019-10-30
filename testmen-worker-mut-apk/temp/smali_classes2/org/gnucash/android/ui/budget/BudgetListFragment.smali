.class public Lorg/gnucash/android/ui/budget/BudgetListFragment;
.super Landroid/support/v4/app/Fragment;
.source "BudgetListFragment.java"

# interfaces
.implements Lorg/gnucash/android/ui/common/Refreshable;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetsCursorLoader;,
        Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Lorg/gnucash/android/ui/common/Refreshable;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BudgetListFragment"

.field private static final REQUEST_EDIT_BUDGET:I = 0xb

.field private static final REQUEST_OPEN_ACCOUNT:I = 0xc


# instance fields
.field private mBudgetRecyclerAdapter:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

.field private mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

.field mProposeBudgets:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900a1
    .end annotation
.end field

.field mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09004e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/budget/BudgetListFragment;)Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/budget/BudgetListFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/budget/BudgetListFragment;J)V
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/budget/BudgetListFragment;
    .param p1, "x1"    # J

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->editBudget(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/budget/BudgetListFragment;J)V
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/budget/BudgetListFragment;
    .param p1, "x1"    # J

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->deleteBudget(J)V

    return-void
.end method

.method private deleteBudget(J)V
    .locals 1
    .param p1, "budgetId"    # J

    .prologue
    .line 189
    invoke-static {}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->deleteRecord(J)Z

    .line 190
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->refresh()V

    .line 191
    return-void
.end method

.method private editBudget(J)V
    .locals 3
    .param p1, "budgetId"    # J

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, "addAccountIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->BUDGET:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "budget_uid"

    iget-object v2, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    invoke-virtual {v2, p1, p2}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 182
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    invoke-static {}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    .line 109
    new-instance v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

    invoke-direct {v0, p0, v2}, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;-><init>(Lorg/gnucash/android/ui/budget/BudgetListFragment;Landroid/database/Cursor;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mBudgetRecyclerAdapter:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

    .line 111
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    iget-object v1, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mBudgetRecyclerAdapter:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 113
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 114
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 195
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->refresh()V

    .line 198
    :cond_0
    return-void
.end method

.method public onClickBudget(Ljava/lang/String;)V
    .locals 4
    .param p1, "budgetUID"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 165
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 167
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0900c8

    invoke-static {p1}, Lorg/gnucash/android/ui/budget/BudgetDetailFragment;->newInstance(Ljava/lang/String;)Lorg/gnucash/android/ui/budget/BudgetDetailFragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 168
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 169
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 170
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    const-string v0, "BudgetListFragment"

    const-string v1, "Creating the accounts loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetsCursorLoader;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetsCursorLoader;-><init>(Landroid/content/Context;)V

    return-object v0
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

    .line 88
    const v3, 0x7f0b0057

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "view":Landroid/view/View;
    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 91
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setHasFixedSize(Z)V

    .line 92
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    iget-object v4, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mProposeBudgets:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_0

    .line 95
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 96
    .local v0, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-virtual {v3, v0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    .end local v0    # "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    :goto_0
    return-object v2

    .line 98
    :cond_0
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, "mLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v3, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-virtual {v3, v1}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "loaderCursor":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "BudgetListFragment"

    const-string v1, "Budget loader finished. Swapping in cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mBudgetRecyclerAdapter:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

    invoke-virtual {v0, p2}, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 126
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mBudgetRecyclerAdapter:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "BudgetListFragment"

    const-string v1, "Resetting the accounts loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment;->mBudgetRecyclerAdapter:Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetRecyclerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 133
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 138
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->refresh()V

    .line 139
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, "Budgets"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 146
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment;->refresh()V

    .line 156
    return-void
.end method
