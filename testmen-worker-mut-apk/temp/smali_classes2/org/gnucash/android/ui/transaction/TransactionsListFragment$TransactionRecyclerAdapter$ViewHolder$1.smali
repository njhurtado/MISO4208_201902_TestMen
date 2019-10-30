.class Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "TransactionsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;-><init>(Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;

.field final synthetic val$this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;)V
    .locals 0
    .param p1, "this$2"    # Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;

    .prologue
    .line 342
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder$1;->this$2:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;

    iput-object p2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder$1;->val$this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 345
    new-instance v1, Landroid/support/v7/widget/PopupMenu;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder$1;->this$2:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;

    iget-object v2, v2, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v2, v2, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 346
    .local v1, "popup":Landroid/support/v7/widget/PopupMenu;
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder$1;->this$2:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 347
    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 348
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f0c0010

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 349
    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 350
    return-void
.end method
