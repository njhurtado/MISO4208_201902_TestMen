.class Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$2;
.super Ljava/lang/Object;
.source "TransactionsDeleteConfirmationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;

.field final synthetic val$rowId:J


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;

    iput-wide p2, p0, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$2;->val$rowId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 66
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v2

    .line 67
    .local v2, "transactionsDbAdapter":Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    iget-wide v4, p0, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$2;->val$rowId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 68
    invoke-static {}, Lorg/gnucash/android/util/BackupManager;->backupActiveBook()Z

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "openingBalances":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/gnucash/android/app/GnuCashApplication;->shouldSaveOpeningBalances(Z)Z

    move-result v1

    .line 71
    .local v1, "preserveOpeningBalances":Z
    if-eqz v1, :cond_0

    .line 72
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAllOpeningBalanceTransactions()Ljava/util/List;

    move-result-object v0

    .line 75
    :cond_0
    invoke-virtual {v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->deleteAllRecords()I

    .line 77
    if-eqz v1, :cond_1

    .line 78
    sget-object v3, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v2, v0, v3}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    .line 83
    .end local v0    # "openingBalances":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    .end local v1    # "preserveOpeningBalances":Z
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    instance-of v3, v3, Lorg/gnucash/android/ui/common/Refreshable;

    if-eqz v3, :cond_2

    .line 84
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/ui/common/Refreshable;

    invoke-interface {v3}, Lorg/gnucash/android/ui/common/Refreshable;->refresh()V

    .line 86
    :cond_2
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->updateAllWidgets(Landroid/content/Context;)V

    .line 87
    return-void

    .line 81
    :cond_3
    iget-wide v4, p0, Lorg/gnucash/android/ui/transaction/dialog/TransactionsDeleteConfirmationDialogFragment$2;->val$rowId:J

    invoke-virtual {v2, v4, v5}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->deleteRecord(J)Z

    goto :goto_0
.end method
