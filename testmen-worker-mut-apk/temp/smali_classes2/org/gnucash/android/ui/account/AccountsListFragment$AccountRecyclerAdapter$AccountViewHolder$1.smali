.class Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder$1;
.super Ljava/lang/Object;
.source "AccountsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;-><init>(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;

.field final synthetic val$this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;)V
    .locals 0
    .param p1, "this$2"    # Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;

    .prologue
    .line 587
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder$1;->this$2:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;

    iput-object p2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder$1;->val$this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 590
    new-instance v1, Landroid/support/v7/widget/PopupMenu;

    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder$1;->this$2:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;

    iget-object v2, v2, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    iget-object v2, v2, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 591
    .local v1, "popup":Landroid/support/v7/widget/PopupMenu;
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder$1;->this$2:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 592
    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 593
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f0c0001

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 594
    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 595
    return-void
.end method
