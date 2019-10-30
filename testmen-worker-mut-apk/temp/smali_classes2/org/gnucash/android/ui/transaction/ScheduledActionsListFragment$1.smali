.class Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;
.super Ljava/lang/Object;
.source "ScheduledActionsListFragment.java"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    .line 118
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 150
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-static {v7}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->access$200(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)V

    .line 151
    :goto_0
    return v6

    .line 120
    :pswitch_0
    invoke-static {}, Lorg/gnucash/android/util/BackupManager;->backupActiveBook()Z

    .line 122
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-virtual {v7}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_2

    aget-wide v2, v8, v7

    .line 124
    .local v2, "id":J
    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-static {v10}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->access$000(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)Lorg/gnucash/android/model/ScheduledAction$ActionType;

    move-result-object v10

    sget-object v11, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    if-ne v10, v11, :cond_0

    .line 125
    const-string v10, "ScheduledActionFragment"

    const-string v11, "Cancelling scheduled transaction(s)"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-static {v10}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->access$100(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "trnUID":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getScheduledEventDbAdapter()Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-result-object v4

    .line 128
    .local v4, "scheduledActionDbAdapter":Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;
    invoke-virtual {v4, v5}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getScheduledActionsWithUID(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 130
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/ScheduledAction;>;"
    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-static {v10}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->access$100(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->deleteRecord(J)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 131
    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-virtual {v10}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const v11, 0x7f0f0203

    invoke-static {v10, v11, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    .line 133
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 134
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/ScheduledAction;

    .line 135
    .local v0, "action":Lorg/gnucash/android/model/ScheduledAction;
    invoke-virtual {v0}, Lorg/gnucash/android/model/ScheduledAction;->getUID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->deleteRecord(Ljava/lang/String;)Z

    goto :goto_2

    .line 138
    .end local v0    # "action":Lorg/gnucash/android/model/ScheduledAction;
    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/ScheduledAction;>;"
    .end local v4    # "scheduledActionDbAdapter":Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;
    .end local v5    # "trnUID":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-static {v10}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->access$000(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)Lorg/gnucash/android/model/ScheduledAction$ActionType;

    move-result-object v10

    sget-object v11, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    if-ne v10, v11, :cond_1

    .line 139
    const-string v10, "ScheduledActionFragment"

    const-string v11, "Removing scheduled exports"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->deleteRecord(J)Z

    .line 122
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 143
    .end local v2    # "id":J
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 144
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-static {v7}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->access$200(Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;)V

    .line 145
    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-virtual {v7}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 146
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->refreshList()V

    .line 147
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x7f09006d
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 101
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0c000d

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$1;->this$0:Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;->finishEditMode()V

    .line 114
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method
