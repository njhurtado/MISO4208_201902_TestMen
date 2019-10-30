.class public Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "ScheduledActionsListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorLoader;,
        Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorLoader;,
        Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;,
        Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "ScheduledActionFragment"


# instance fields
.field private mActionMode:Landroid/support/v7/view/ActionMode;

.field private mActionModeCallbacks:Landroid/support/v7/view/ActionMode$Callback;

.field private mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

.field private mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private mInEditMode:Z

.field private mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mInEditMode:Z

    .line 91
    sget-object v0, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    .line 96
    new-instance v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;-><init>(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionModeCallbacks:Landroid/support/v7/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)Lorg/gnucash/android/model/ScheduledAction$ActionType;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->setDefaultStatusBarColor()V

    return-void
.end method

.method static synthetic access$300(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->startActionMode()V

    return-void
.end method

.method static synthetic access$400(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->stopActionMode()V

    return-void
.end method

.method static synthetic access$500(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mInEditMode:Z

    return v0
.end method

.method public static getInstance(Lorg/gnucash/android/model/ScheduledAction$ActionType;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "actionType"    # Lorg/gnucash/android/model/ScheduledAction$ActionType;

    .prologue
    .line 169
    new-instance v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;-><init>()V

    .line 170
    .local v0, "fragment":Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;
    iput-object p0, v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    .line 171
    return-object v0
.end method

.method private setDefaultStatusBarColor()V
    .locals 3

    .prologue
    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600be

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 161
    :cond_0
    return-void
.end method

.method private startActionMode()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mInEditMode:Z

    .line 369
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionModeCallbacks:Landroid/support/v7/view/ActionMode$Callback;

    .line 370
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 372
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 373
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x1060000

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0
.end method

.method private stopActionMode()V
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v1

    array-length v0, v1

    .line 383
    .local v0, "checkedCount":I
    if-gtz v0, :cond_0

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 385
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->setDefaultStatusBarColor()V

    .line 387
    :cond_0
    return-void
.end method

.method private uncheckAllItems()V
    .locals 5

    .prologue
    .line 350
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 351
    .local v0, "checkedPositions":Landroid/util/SparseBooleanArray;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 352
    .local v2, "listView":Landroid/widget/ListView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 353
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 354
    .local v3, "position":I
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v3    # "position":I
    :cond_0
    return-void
.end method


# virtual methods
.method public finishEditMode()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mInEditMode:Z

    .line 331
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->uncheckAllItems()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 333
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 210
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 212
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 213
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 214
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 215
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 217
    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->setHasOptionsMenu(Z)V

    .line 218
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 219
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 220
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600bc

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    sget-object v2, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    if-ne v1, v2, :cond_1

    .line 222
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f00f0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    sget-object v2, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    if-ne v1, v2, :cond_0

    .line 224
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f00f1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 391
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->refreshList()V

    .line 393
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 395
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0b0078

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 176
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    .line 179
    sget-object v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$2;->$SwitchMap$org$gnucash$android$model$ScheduledAction$ActionType:[I

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    invoke-virtual {v1}, Lorg/gnucash/android/model/ScheduledAction$ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to display scheduled actions for the specified action type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :pswitch_0
    new-instance v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter;

    .line 182
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-array v5, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v5, v7

    new-array v6, v6, [I

    const v1, 0x7f090184

    aput v1, v6, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorAdapter;-><init>(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 199
    :goto_0
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    return-void

    .line 188
    :pswitch_1
    new-instance v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;

    .line 189
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorAdapter;-><init>(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
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
    .line 303
    const-string v0, "ScheduledActionFragment"

    const-string v1, "Creating transactions loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    sget-object v1, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    if-ne v0, v1, :cond_0

    .line 305
    new-instance v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorLoader;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 309
    :goto_0
    return-object v0

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    sget-object v1, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    if-ne v0, v1, :cond_1

    .line 307
    new-instance v0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorLoader;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorLoader;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 244
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    sget-object v1, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    if-ne v0, v1, :cond_0

    .line 245
    const v0, 0x7f0c000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 246
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    const v0, 0x7f0b0061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-super/range {p0 .. p5}, Landroid/support/v4/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 264
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v4, :cond_2

    .line 265
    const v4, 0x7f09005c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 266
    .local v1, "checkbox":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
    .end local v1    # "checkbox":Landroid/widget/CheckBox;
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    sget-object v5, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    if-eq v4, v5, :cond_1

    .line 273
    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v4, p4, p5}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getRecord(J)Lorg/gnucash/android/model/BaseModel;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/model/Transaction;

    .line 276
    .local v2, "transaction":Lorg/gnucash/android/model/Transaction;
    invoke-virtual {v2}, Lorg/gnucash/android/model/Transaction;->getSplits()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 277
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0f0206

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {v2}, Lorg/gnucash/android/model/Transaction;->getSplits()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Split;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "accountUID":Ljava/lang/String;
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v3, p4, p5}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-virtual {p0, v0, v3, v4}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->openTransactionForEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 314
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "ScheduledActionFragment"

    const-string v1, "Transactions loader finished. Swapping in cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 316
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 317
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 321
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "ScheduledActionFragment"

    const-string v1, "Resetting transactions loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 323
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 250
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 257
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 252
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "form_type"

    sget-object v3, Lorg/gnucash/android/ui/common/FormActivity$FormType;->EXPORT:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v0, v1}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x7f090135
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 238
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->refreshList()V

    .line 239
    return-void
.end method

.method public openTransactionForEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accountUID"    # Ljava/lang/String;
    .param p2, "transactionUID"    # Ljava/lang/String;
    .param p3, "scheduledActionUid"    # Ljava/lang/String;

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    .local v0, "createTransactionIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->TRANSACTION:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v1, "account_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v1, "selected_transaction_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v1, "scheduled_action_uid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method public refreshList()V
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 233
    return-void
.end method

.method public setActionModeTitle()V
    .locals 7

    .prologue
    .line 340
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v1

    array-length v0, v1

    .line 341
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 342
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01e0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 344
    :cond_0
    return-void
.end method
