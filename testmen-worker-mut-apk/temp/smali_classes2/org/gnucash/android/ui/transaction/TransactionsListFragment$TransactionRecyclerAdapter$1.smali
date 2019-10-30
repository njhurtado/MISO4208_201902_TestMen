.class Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$1;
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

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;J)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    .prologue
    .line 284
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$1;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iput-wide p2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$1;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v0, v0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    iget-wide v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$1;->val$id:J

    invoke-virtual {v0, v2, v3}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->onListItemClick(J)V

    .line 288
    return-void
.end method
