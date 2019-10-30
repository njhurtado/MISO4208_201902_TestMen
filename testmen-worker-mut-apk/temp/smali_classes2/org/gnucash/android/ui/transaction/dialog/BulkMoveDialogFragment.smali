.class public Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BulkMoveDialogFragment.java"


# instance fields
.field mCancelButton:Landroid/widget/Button;

.field mDestinationAccountSpinner:Landroid/widget/Spinner;

.field mOkButton:Landroid/widget/Button;

.field mOriginAccountUID:Ljava/lang/String;

.field mTransactionIds:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 65
    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mTransactionIds:[J

    .line 70
    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    return-void
.end method

.method public static newInstance([JLjava/lang/String;)Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;
    .locals 3
    .param p0, "transactionIds"    # [J
    .param p1, "originAccountUID"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "selected_transactions"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 81
    const-string v2, "origin_acccount_uid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;

    invoke-direct {v1}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;-><init>()V

    .line 83
    .local v1, "bulkMoveDialogFragment":Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;
    invoke-virtual {v1, v0}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setLayout(II)V

    .line 114
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 115
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "selected_transactions"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mTransactionIds:[J

    .line 116
    const-string v6, "origin_acccount_uid"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0f01cc

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mTransactionIds:[J

    array-length v9, v9

    .line 119
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 118
    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    .line 123
    .local v0, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    const-string v2, "(uid != ? AND currency_code = ? AND is_hidden = 0 AND is_placeholder = 0)"

    .line 128
    .local v2, "conditions":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    aput-object v7, v6, v10

    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 128
    invoke-virtual {v0, v2, v6}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccountsOrderedByFullName(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 131
    .local v3, "cursor":Landroid/database/Cursor;
    new-instance v4, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 132
    .local v4, "mCursorAdapter":Landroid/support/v4/widget/SimpleCursorAdapter;
    iget-object v6, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mDestinationAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 133
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->setListeners()V

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const/4 v0, 0x0

    const v1, 0x7f1000b9

    invoke-virtual {p0, v0, v1}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->setStyle(II)V

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const v1, 0x7f0b0046

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mDestinationAccountSpinner:Landroid/widget/Spinner;

    .line 96
    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 97
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mOkButton:Landroid/widget/Button;

    const v2, 0x7f0f0032

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 99
    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mCancelButton:Landroid/widget/Button;

    .line 100
    return-object v0
.end method

.method protected setListeners()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$1;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$1;-><init>(Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment$2;-><init>(Lorg/gnucash/android/ui/transaction/dialog/BulkMoveDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method
