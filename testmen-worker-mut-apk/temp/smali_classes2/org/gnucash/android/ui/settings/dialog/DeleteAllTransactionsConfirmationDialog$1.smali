.class Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog$1;
.super Ljava/lang/Object;
.source "DeleteAllTransactionsConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v10, 0x0

    .line 60
    invoke-static {}, Lorg/gnucash/android/util/BackupManager;->backupActiveBook()Z

    .line 62
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 63
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    .line 64
    .local v0, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v3, "openingBalances":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    invoke-static {v10}, Lorg/gnucash/android/app/GnuCashApplication;->shouldSaveOpeningBalances(Z)Z

    move-result v4

    .line 66
    .local v4, "preserveOpeningBalances":Z
    if-eqz v4, :cond_0

    .line 67
    invoke-virtual {v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAllOpeningBalanceTransactions()Ljava/util/List;

    move-result-object v3

    .line 69
    :cond_0
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v5

    .line 70
    .local v5, "transactionsDbAdapter":Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    invoke-virtual {v5}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->deleteAllNonTemplateTransactions()I

    move-result v2

    .line 71
    .local v2, "count":I
    const-string v6, "DeleteDialog"

    const-string v7, "Deleted %d transactions successfully"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz v4, :cond_1

    .line 74
    sget-object v6, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v5, v3, v6}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    .line 76
    :cond_1
    const v6, 0x7f0f01ef

    invoke-static {v1, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 77
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;

    invoke-virtual {v6}, Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->updateAllWidgets(Landroid/content/Context;)V

    .line 78
    return-void
.end method
