.class public Lorg/gnucash/android/ui/transaction/TransactionsListFragment;
.super Landroid/support/v4/app/Fragment;
.source "TransactionsListFragment.java"

# interfaces
.implements Lorg/gnucash/android/ui/common/Refreshable;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;,
        Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionsCursorLoader;
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
.field protected static final LOG_TAG:Ljava/lang/String; = "TransactionListFragment"


# instance fields
.field private mAccountUID:Ljava/lang/String;

.field mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090213
    .end annotation
.end field

.field private mTransactionRecyclerAdapter:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

.field private mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

.field private mUseCompactView:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mUseCompactView:Z

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mUseCompactView:Z

    return v0
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mAccountUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;)Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 135
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 138
    .local v0, "aBar":Landroid/support/v7/app/ActionBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 139
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 141
    new-instance v1, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;-><init>(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;Landroid/database/Cursor;)V

    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mTransactionRecyclerAdapter:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    .line 142
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mTransactionRecyclerAdapter:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 144
    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->setHasOptionsMenu(Z)V

    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0f00ba

    const/4 v1, 0x1

    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->setHasOptionsMenu(Z)V

    .line 96
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account_uid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mAccountUID:Ljava/lang/String;

    .line 99
    invoke-static {}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getActiveBookSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->isDoubleEntryEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mUseCompactView:Z

    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mUseCompactView:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mUseCompactView:Z

    .line 105
    :cond_0
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    .line 106
    return-void

    .line 100
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
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
    .line 208
    const-string v0, "TransactionListFragment"

    const-string v1, "Creating transactions loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionsCursorLoader;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mAccountUID:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionsCursorLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 182
    const v0, 0x7f0c0011

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 183
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x2

    .line 117
    const v3, 0x7f0b0065

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 118
    .local v2, "view":Landroid/view/View;
    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 120
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setHasFixedSize(Z)V

    .line 121
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_0

    .line 122
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 123
    .local v0, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-virtual {v3, v0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 128
    .end local v0    # "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    :goto_0
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    const v4, 0x7f0900a1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 130
    return-object v2

    .line 125
    :cond_0
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 126
    .local v1, "mLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-virtual {v3, v1}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0
.end method

.method public onListItemClick(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/transaction/TransactionDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "selected_transaction_uid"

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v2, p1, p2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "account_uid"

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
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
    .line 214
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "TransactionListFragment"

    const-string v1, "Transactions loader finished. Swapping in cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mTransactionRecyclerAdapter:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    invoke-virtual {v0, p2}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 216
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mTransactionRecyclerAdapter:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->notifyDataSetChanged()V

    .line 217
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 221
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "TransactionListFragment"

    const-string v1, "Resetting transactions loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mTransactionRecyclerAdapter:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 223
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 202
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 197
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 198
    iget-boolean v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mUseCompactView:Z

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mUseCompactView:Z

    .line 199
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->refresh()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 197
    goto :goto_1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x7f090137
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 188
    const v1, 0x7f090137

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 189
    .local v0, "item":Landroid/view/MenuItem;
    iget-boolean v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mUseCompactView:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 190
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->isDoubleEntryEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 191
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 168
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->updateNavigationSelection()V

    .line 169
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->refresh()V

    .line 170
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f0f00ba

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mUseCompactView:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 163
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->mAccountUID:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->refresh()V

    .line 155
    return-void
.end method
