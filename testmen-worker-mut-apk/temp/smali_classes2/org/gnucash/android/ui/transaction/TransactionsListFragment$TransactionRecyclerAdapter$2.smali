.class Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "TransactionsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->onBindViewHolderCursor(Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

.field final synthetic val$transactionUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    .prologue
    .line 313
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$2;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iput-object p2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$2;->val$transactionUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 316
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$2;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v1, v1, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->TRANSACTION:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v1, "selected_transaction_uid"

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$2;->val$transactionUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v1, "account_uid"

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$2;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v2, v2, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->access$100(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$2;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v1, v1, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-virtual {v1, v0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 321
    return-void
.end method
