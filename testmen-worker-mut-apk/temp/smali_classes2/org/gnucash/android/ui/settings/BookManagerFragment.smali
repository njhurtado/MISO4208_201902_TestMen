.class public Lorg/gnucash/android/ui/settings/BookManagerFragment;
.super Landroid/support/v4/app/ListFragment;
.source "BookManagerFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lorg/gnucash/android/ui/common/Refreshable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorLoader;,
        Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lorg/gnucash/android/ui/common/Refreshable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG_TAG:Ljava/lang/String; = "BookManagerFragment"


# instance fields
.field private mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/gnucash/android/ui/settings/BookManagerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/settings/BookManagerFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 94
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    sget-boolean v1, Lorg/gnucash/android/ui/settings/BookManagerFragment;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 95
    :cond_0
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 96
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 97
    const v1, 0x7f0f01cb

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 98
    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->setHasOptionsMenu(Z)V

    .line 100
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x2

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    new-instance v0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b002d

    const/4 v4, 0x0

    new-array v5, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "name"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "uri"

    aput-object v6, v5, v1

    new-array v6, v7, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;-><init>(Lorg/gnucash/android/ui/settings/BookManagerFragment;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 86
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    return-void

    .line 82
    nop

    :array_0
    .array-data 4
        0x7f090184
        0x7f0901b6
    .end array-data
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
    .line 139
    const-string v0, "BookManagerFragment"

    const-string v1, "Creating loader for books"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorLoader;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 111
    const v0, 0x7f0c0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 112
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const v0, 0x7f0b0053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
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
    .line 145
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "BookManagerFragment"

    const-string v1, "Finished loading books from database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 147
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 148
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 152
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "BookManagerFragment"

    const-string v1, "Resetting books list loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 154
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 118
    :pswitch_0
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/account/AccountsActivity;->createDefaultAccounts(Ljava/lang/String;Landroid/app/Activity;)V

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x7f090138
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 106
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->refresh()V

    .line 107
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 130
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->refresh()V

    .line 135
    return-void
.end method
