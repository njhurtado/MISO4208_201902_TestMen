.class public Lorg/gnucash/android/ui/account/AccountsListFragment;
.super Landroid/support/v4/app/Fragment;
.source "AccountsListFragment.java"

# interfaces
.implements Lorg/gnucash/android/ui/common/Refreshable;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;
.implements Landroid/support/v7/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;,
        Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;,
        Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Lorg/gnucash/android/ui/common/Refreshable;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/support/v7/widget/SearchView$OnQueryTextListener;",
        "Landroid/support/v7/widget/SearchView$OnCloseListener;"
    }
.end annotation


# static fields
.field private static final STATE_DISPLAY_MODE:Ljava/lang/String; = "mDisplayMode"

.field protected static final TAG:Ljava/lang/String; = "AccountsListFragment"


# instance fields
.field mAccountRecyclerAdapter:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

.field private mAccountSelectedListener:Lorg/gnucash/android/ui/account/OnAccountClickedListener;

.field private mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field private mCurrentFilter:Ljava/lang/String;

.field private mDisplayMode:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

.field mEmptyTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900a1
    .end annotation
.end field

.field private mParentAccountUID:Ljava/lang/String;

.field mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09000a
    .end annotation
.end field

.field private mSearchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 101
    sget-object v0, Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;->TOP_LEVEL:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    iput-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mDisplayMode:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mParentAccountUID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/account/AccountsListFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/AccountsListFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lorg/gnucash/android/ui/account/AccountsListFragment;Lorg/gnucash/android/db/adapter/AccountsDbAdapter;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/AccountsListFragment;
    .param p1, "x1"    # Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/account/AccountsListFragment;)Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/AccountsListFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mDisplayMode:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    return-object v0
.end method

.method public static newInstance(Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;)Lorg/gnucash/android/ui/account/AccountsListFragment;
    .locals 1
    .param p0, "displayMode"    # Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    .prologue
    .line 139
    new-instance v0, Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/account/AccountsListFragment;-><init>()V

    .line 140
    .local v0, "fragment":Lorg/gnucash/android/ui/account/AccountsListFragment;
    iput-object p0, v0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mDisplayMode:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    .line 141
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 191
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 194
    .local v0, "actionbar":Landroid/support/v7/app/ActionBar;
    const v1, 0x7f0f01a2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 195
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 196
    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/account/AccountsListFragment;->setHasOptionsMenu(Z)V

    .line 200
    new-instance v1, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;-><init>(Lorg/gnucash/android/ui/account/AccountsListFragment;Landroid/database/Cursor;)V

    iput-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountRecyclerAdapter:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    .line 201
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountRecyclerAdapter:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 203
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 233
    if-nez p2, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->refresh()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 221
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/gnucash/android/ui/account/OnAccountClickedListener;

    move-object v2, v0

    iput-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountSelectedListener:Lorg/gnucash/android/ui/account/OnAccountClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnAccountSelectedListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClose()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 391
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 394
    :cond_0
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 182
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 183
    const-string v1, "parent_account_uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mParentAccountUID:Ljava/lang/String;

    .line 185
    :cond_0
    if-eqz p1, :cond_1

    .line 186
    const-string v1, "mDisplayMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    iput-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mDisplayMode:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    .line 187
    :cond_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 5
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
    .line 344
    const-string v2, "AccountsListFragment"

    const-string v3, "Creating the accounts loader"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 346
    .local v1, "arguments":Landroid/os/Bundle;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 348
    .local v0, "accountUID":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mCurrentFilter:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 349
    new-instance v2, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mCurrentFilter:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 351
    :goto_1
    return-object v2

    .line 346
    .end local v0    # "accountUID":Ljava/lang/String;
    :cond_0
    const-string v2, "parent_account_uid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    .restart local v0    # "accountUID":Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mDisplayMode:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    invoke-direct {v2, v3, v0, v4}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 273
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mParentAccountUID:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 274
    const v1, 0x7f0c000f

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const/high16 v1, 0x7f0c0000

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 280
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 281
    .local v0, "searchManager":Landroid/app/SearchManager;
    const v1, 0x7f090142

    .line 282
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView;

    iput-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 283
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mSearchView:Landroid/support/v7/widget/SearchView;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 287
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 286
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 288
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 289
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/SearchView;->setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x2

    .line 147
    const v3, 0x7f0b0051

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 150
    .local v2, "v":Landroid/view/View;
    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 151
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setHasFixedSize(Z)V

    .line 152
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 154
    sget-object v3, Lorg/gnucash/android/ui/account/AccountsListFragment$1;->$SwitchMap$org$gnucash$android$ui$account$AccountsListFragment$DisplayMode:[I

    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mDisplayMode:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    invoke-virtual {v4}, Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 167
    :goto_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_0

    .line 168
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 169
    .local v0, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-virtual {v3, v0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 174
    .end local v0    # "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    :goto_1
    return-object v2

    .line 157
    :pswitch_0
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v4, 0x7f0f00ed

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v4, 0x7f0f00ef

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mEmptyTextView:Landroid/widget/TextView;

    const v4, 0x7f0f00ee

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 171
    :cond_0
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 172
    .local v1, "mLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mRecyclerView:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-virtual {v3, v1}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 324
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 325
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountRecyclerAdapter:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountRecyclerAdapter:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 327
    :cond_0
    return-void
.end method

.method public onListItemClick(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountSelectedListener:Lorg/gnucash/android/ui/account/OnAccountClickedListener;

    invoke-interface {v0, p1}, Lorg/gnucash/android/ui/account/OnAccountClickedListener;->accountSelected(Ljava/lang/String;)V

    .line 229
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
    .line 357
    .local p1, "loaderCursor":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "AccountsListFragment"

    const-string v1, "Accounts loader finished. Swapping in cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountRecyclerAdapter:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    invoke-virtual {v0, p2}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 359
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountRecyclerAdapter:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->notifyDataSetChanged()V

    .line 360
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/account/AccountsListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 364
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "AccountsListFragment"

    const-string v1, "Resetting the accounts loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountRecyclerAdapter:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 366
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 376
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, p1

    .line 378
    .local v0, "newFilter":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mCurrentFilter:Ljava/lang/String;

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 386
    :cond_0
    :goto_1
    return v4

    .end local v0    # "newFilter":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 376
    goto :goto_0

    .line 381
    .restart local v0    # "newFilter":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mCurrentFilter:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mCurrentFilter:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    :cond_3
    iput-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mCurrentFilter:Ljava/lang/String;

    .line 385
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 214
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->refresh()V

    .line 215
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 316
    const-string v0, "mDisplayMode"

    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mDisplayMode:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 317
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 208
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 209
    return-void
.end method

.method public openCreateOrEditActivity(J)V
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 335
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v0, "editAccountIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v1, "account_uid"

    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v2, p1, p2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->ACCOUNT:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/gnucash/android/ui/account/AccountsListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 340
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 310
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 311
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 2
    .param p1, "parentAccountUID"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "parent_account_uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->refresh()V

    .line 302
    return-void
.end method

.method public showConfirmationDialog(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 265
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 266
    invoke-virtual {v1, p1, p2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->newInstance(Ljava/lang/String;)Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    move-result-object v0

    .line 267
    .local v0, "alertFragment":Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 268
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "delete_confirmation_dialog"

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public tryDeleteAccount(J)V
    .locals 5
    .param p1, "rowId"    # J

    .prologue
    .line 247
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v2, p1, p2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getRecord(J)Lorg/gnucash/android/model/BaseModel;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Account;

    .line 248
    .local v0, "acc":Lorg/gnucash/android/model/Account;
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getTransactionCount()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getSubAccountCount(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 249
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/account/AccountsListFragment;->showConfirmationDialog(J)V

    .line 257
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-static {}, Lorg/gnucash/android/util/BackupManager;->backupActiveBook()Z

    .line 253
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v2, p1, p2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "uid":Ljava/lang/String;
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v2, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->deleteRecord(Ljava/lang/String;)Z

    .line 255
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->refresh()V

    goto :goto_0
.end method
