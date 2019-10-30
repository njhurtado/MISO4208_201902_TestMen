.class Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$1;
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
    .line 513
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$1;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    iput-object p2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$1;->val$accountUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 517
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$1;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    iget-object v1, v1, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string v1, "account_uid"

    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$1;->val$accountUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->TRANSACTION:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter$1;->this$1:Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;

    iget-object v1, v1, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/account/AccountsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 522
    return-void
.end method
