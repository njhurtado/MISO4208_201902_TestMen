.class public Lcom/uservoice/uservoicesdk/ui/SearchExpandListener;
.super Ljava/lang/Object;
.source "SearchExpandListener.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private final searchActivity:Lcom/uservoice/uservoicesdk/activity/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/uservoice/uservoicesdk/activity/SearchActivity;)V
    .locals 0
    .param p1, "searchActivity"    # Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/SearchExpandListener;->searchActivity:Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    .line 15
    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchExpandListener;->searchActivity:Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->getSearchAdapter()Lcom/uservoice/uservoicesdk/ui/SearchAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->setSearchActive(Z)V

    .line 26
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchExpandListener;->searchActivity:Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->hideSearch()V

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 19
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/SearchExpandListener;->searchActivity:Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->getSearchAdapter()Lcom/uservoice/uservoicesdk/ui/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;->setSearchActive(Z)V

    .line 20
    return v1
.end method
