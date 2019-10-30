.class Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;
.super Ljava/lang/Object;
.source "BulkMoveDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    iget-object v5, v5, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mTransactionIds:[J

    if-nez v5, :cond_0

    .line 153
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    invoke-virtual {v5}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->dismiss()V

    .line 156
    :cond_0
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    iget-object v5, v5, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mDestinationAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    .line 157
    .local v0, "dstAccountId":J
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "dstAccountUID":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v4

    .line 159
    .local v4, "trxnAdapter":Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    invoke-virtual {v4, v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    iget-object v8, v8, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getAccountCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 160
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    invoke-virtual {v5}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v8, 0x7f0f01fb

    const/4 v9, 0x1

    invoke-static {v5, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 172
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    invoke-virtual {v5}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-virtual {v5}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getCurrentAccountUID()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "srcAccountUID":Ljava/lang/String;
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    iget-object v8, v5, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mTransactionIds:[J

    array-length v9, v8

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v9, :cond_2

    aget-wide v6, v8, v5

    .line 166
    .local v6, "trxnId":J
    invoke-virtual {v4, v6, v7}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10, v3, v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->moveTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 169
    .end local v6    # "trxnId":J
    :cond_2
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    invoke-virtual {v5}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->updateAllWidgets(Landroid/content/Context;)V

    .line 170
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    invoke-virtual {v5}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lorg/gnucash/android/ui/common/Refreshable;

    invoke-interface {v5}, Lorg/gnucash/android/ui/common/Refreshable;->refresh()V

    .line 171
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;->this$0:Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    invoke-virtual {v5}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->dismiss()V

    goto :goto_0
.end method
