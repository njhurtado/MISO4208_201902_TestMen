.class Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;
.super Ljava/lang/Object;
.source "DeleteAccountDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    .prologue
    .line 209
    iput-object p1, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    invoke-static {}, Lorg/gnucash/android/util/BackupManager;->backupActiveBook()Z

    .line 215
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    .line 217
    .local v0, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    iget-object v1, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->access$200(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->access$300(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->access$100(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v2

    .line 220
    .local v2, "targetAccountId":J
    invoke-static {}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    move-result-object v1

    const-string v4, "account_uid = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    .line 221
    invoke-static {v7}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->access$400(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "account_uid"

    invoke-virtual {v0, v2, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v7

    .line 220
    invoke-virtual {v1, v4, v5, v6, v7}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->updateRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v2    # "targetAccountId":J
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->access$500(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->access$600(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->access$000(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v2

    .line 226
    .restart local v2    # "targetAccountId":J
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v1

    iget-object v4, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-static {v4}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->access$400(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->reassignDescendantAccounts(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v2    # "targetAccountId":J
    :cond_1
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->isDoubleEntryEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v1

    iget-object v4, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-static {v4}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->access$400(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->deleteTransactionsForAccount(Ljava/lang/String;)V

    .line 234
    :cond_2
    iget-object v1, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->access$400(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->recursiveDeleteAccount(J)Z

    .line 236
    iget-object v1, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->updateAllWidgets(Landroid/content/Context;)V

    .line 237
    iget-object v1, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/ui/common/Refreshable;

    invoke-interface {v1}, Lorg/gnucash/android/ui/common/Refreshable;->refresh()V

    .line 238
    iget-object v1, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;->this$0:Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->dismiss()V

    .line 239
    return-void
.end method
