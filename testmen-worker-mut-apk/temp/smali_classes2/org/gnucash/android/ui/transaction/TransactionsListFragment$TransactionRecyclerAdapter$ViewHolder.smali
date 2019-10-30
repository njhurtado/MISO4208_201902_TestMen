.class public Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TransactionsListFragment.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public editTransaction:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lbutterknife/BindView;
        value = 0x7f09009e
    .end annotation
.end field

.field public optionsMenu:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090170
    .end annotation
.end field

.field public primaryText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090184
    .end annotation
.end field

.field public secondaryText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901b6
    .end annotation
.end field

.field final synthetic this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

.field public transactionAmount:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090211
    .end annotation
.end field

.field public transactionDate:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lbutterknife/BindView;
        value = 0x7f090212
    .end annotation
.end field

.field transactionId:J


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$1"    # Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 338
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    .line 339
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 340
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 341
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->primaryText:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 342
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->optionsMenu:Landroid/widget/ImageView;

    new-instance v1, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder$1;-><init>(Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 356
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move v4, v5

    .line 380
    :goto_0
    return v4

    .line 358
    :pswitch_1
    invoke-static {}, Lorg/gnucash/android/util/BackupManager;->backupActiveBook()Z

    .line 359
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v5, v5, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-static {v5}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->access$200(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;)Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v5

    iget-wide v6, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->transactionId:J

    invoke-virtual {v5, v6, v7}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->deleteRecord(J)Z

    .line 360
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v5, v5, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-virtual {v5}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->updateAllWidgets(Landroid/content/Context;)V

    .line 361
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v5, v5, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-virtual {v5}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->refresh()V

    goto :goto_0

    .line 365
    :pswitch_2
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v5, v5, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-static {v5}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->access$200(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;)Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v5

    iget-wide v6, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->transactionId:J

    invoke-virtual {v5, v6, v7}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getRecord(J)Lorg/gnucash/android/model/BaseModel;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Transaction;

    .line 366
    .local v3, "transaction":Lorg/gnucash/android/model/Transaction;
    new-instance v0, Lorg/gnucash/android/model/Transaction;

    invoke-direct {v0, v3, v4}, Lorg/gnucash/android/model/Transaction;-><init>(Lorg/gnucash/android/model/Transaction;Z)V

    .line 367
    .local v0, "duplicate":Lorg/gnucash/android/model/Transaction;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lorg/gnucash/android/model/Transaction;->setTime(J)V

    .line 368
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v5, v5, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-static {v5}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->access$200(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;)Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v5

    sget-object v6, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v5, v0, v6}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->addRecord(Lorg/gnucash/android/model/Transaction;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 369
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v5, v5, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-virtual {v5}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->refresh()V

    goto :goto_0

    .line 373
    .end local v0    # "duplicate":Lorg/gnucash/android/model/Transaction;
    .end local v3    # "transaction":Lorg/gnucash/android/model/Transaction;
    :pswitch_3
    new-array v2, v4, [J

    iget-wide v6, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->transactionId:J

    aput-wide v6, v2, v5

    .line 374
    .local v2, "ids":[J
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v6, v6, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-static {v6}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->access$100(Lorg/gnucash/android/ui/transaction/TransactionsListFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->newInstance([JLjava/lang/String;)Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    move-result-object v1

    .line 375
    .local v1, "fragment":Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v6, v6, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "bulk_move_transactions"

    invoke-virtual {v1, v6, v7}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 376
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter$ViewHolder;->this$1:Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;

    iget-object v6, v6, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionRecyclerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-virtual {v1, v6, v5}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x7f09006d
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
