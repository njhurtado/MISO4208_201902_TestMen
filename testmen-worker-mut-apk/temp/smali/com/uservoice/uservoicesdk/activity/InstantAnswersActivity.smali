.class public abstract Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;
.super Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;
.source "InstantAnswersActivity.java"


# instance fields
.field private adapter:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method protected abstract createAdapter()Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;
.end method

.method protected abstract getDiscardDialogMessage()I
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->adapter:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_confirm:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->getDiscardDialogMessage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 52
    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_yes:I

    new-instance v2, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity$2;

    invoke-direct {v2, p0}, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity$2;-><init>(Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_no:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 63
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/compatibility/FragmentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->createAdapter()Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->adapter:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    .line 29
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->adapter:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    invoke-virtual {p0, v0}, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->adapter:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->adapter:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 32
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 33
    new-instance v0, Lcom/uservoice/uservoicesdk/flow/InitManager;

    new-instance v1, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity$1;

    invoke-direct {v1, p0}, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity$1;-><init>(Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/uservoice/uservoicesdk/flow/InitManager;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/flow/InitManager;->init()V

    .line 39
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 40
    return-void
.end method

.method protected onInitialize()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/InstantAnswersActivity;->adapter:Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/InstantAnswersAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method
