.class Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$3;
.super Ljava/lang/Object;
.source "AccountsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->onBindViewHolderCursor(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$AccountViewHolder;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

.field final synthetic val$accountUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    .prologue
    .line 563
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$3;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    iput-object p2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$3;->val$accountUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 566
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$3;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$3;->val$accountUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/account/AccountsListFragment;->onListItemClick(Ljava/lang/String;)V

    .line 567
    return-void
.end method
