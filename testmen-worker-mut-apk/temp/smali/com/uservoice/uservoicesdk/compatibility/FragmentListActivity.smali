.class public abstract Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;
.super Lcom/uservoice/uservoicesdk/activity/BaseActivity;
.source "FragmentListActivity.java"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field private mList:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/activity/BaseActivity;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mHandler:Landroid/os/Handler;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mFinishedStart:Z

    .line 32
    new-instance v0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity$1;

    invoke-direct {v0, p0}, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity$1;-><init>(Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;)V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 133
    new-instance v0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity$2;

    invoke-direct {v0, p0}, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity$2;-><init>(Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;)V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private declared-synchronized ensureList()V
    .locals 3

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mList:Landroid/widget/ListView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 131
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mList:Landroid/widget/ListView;

    .line 120
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mList:Landroid/widget/ListView;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setId(I)V

    .line 121
    new-instance v0, Landroid/widget/ViewFlipper;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, "viewFlipper":Landroid/widget/ViewFlipper;
    sget v1, Lcom/uservoice/uservoicesdk/R$id;->uv_view_flipper:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setId(I)V

    .line 123
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->setContentView(Landroid/view/View;)V

    .line 125
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    iget-boolean v1, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mFinishedStart:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    .end local v0    # "viewFlipper":Landroid/widget/ViewFlipper;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->ensureList()V

    .line 105
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 50
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->ensureList()V

    .line 61
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/activity/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->ensureList()V

    .line 71
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 72
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 84
    return-void
.end method
