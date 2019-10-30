.class public Lcom/uservoice/uservoicesdk/activity/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field protected actionBar:Landroid/support/v7/app/ActionBar;

.field protected allTab:Landroid/support/v7/app/ActionBar$Tab;

.field protected articlesTab:Landroid/support/v7/app/ActionBar$Tab;

.field protected ideasTab:Landroid/support/v7/app/ActionBar$Tab;

.field protected searchAdapter:Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public hasActionBar()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/BaseActivity;->hasActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/activity/BaseActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 27
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/BaseActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 29
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 33
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/activity/BaseActivity;->onBackPressed()V

    .line 35
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
