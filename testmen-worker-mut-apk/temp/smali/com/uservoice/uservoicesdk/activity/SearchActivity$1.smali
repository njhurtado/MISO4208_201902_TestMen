.class Lcom/uservoice/uservoicesdk/activity/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/support/v7/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/activity/SearchActivity;->setupScopedSearch(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/activity/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 84
    return-void
.end method

.method public onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/SearchActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/SearchActivity;

    iget-object v1, v0, Lcom/uservoice/uservoicesdk/activity/SearchActivity;->searchAdapter:Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/uservoice/uservoicesdk/ui/MixedSearchAdapter;->setScope(I)V

    .line 80
    return-void
.end method

.method public onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 75
    return-void
.end method
