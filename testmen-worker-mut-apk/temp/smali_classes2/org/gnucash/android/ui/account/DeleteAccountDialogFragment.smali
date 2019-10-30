.class public Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DeleteAccountDialogFragment.java"


# instance fields
.field private mAccountsDestinationAccountSpinner:Landroid/widget/Spinner;

.field private mCancelButton:Landroid/widget/Button;

.field private mDeleteAccountsRadioButton:Landroid/widget/RadioButton;

.field private mDeleteTransactionsRadioButton:Landroid/widget/RadioButton;

.field private mMoveAccountsRadioButton:Landroid/widget/RadioButton;

.field private mMoveTransactionsRadioButton:Landroid/widget/RadioButton;

.field private mOkButton:Landroid/widget/Button;

.field private mOriginAccountUID:Ljava/lang/String;

.field private mSubAccountCount:I

.field private mTransactionCount:I

.field private mTransactionsDestinationAccountSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mAccountsDestinationAccountSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mTransactionsDestinationAccountSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    .prologue
    .line 55
    iget v0, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mTransactionCount:I

    return v0
.end method

.method static synthetic access$300(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mMoveTransactionsRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$400(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    .prologue
    .line 55
    iget v0, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mSubAccountCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mMoveAccountsRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;
    .locals 2
    .param p0, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;-><init>()V

    .line 94
    .local v0, "fragment":Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;
    iput-object p0, v0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    .line 95
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getSubAccountCount(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mSubAccountCount:I

    .line 96
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getTransactionsCount(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mTransactionCount:I

    .line 97
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v9

    iget-object v10, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "accountName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0f0022

    invoke-virtual {p0, v11}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v3

    .line 140
    .local v3, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    iget-object v9, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v10, v11}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getDescendantAccountUIDs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 142
    .local v6, "descendantAccountUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "currencyCode":Ljava/lang/String;
    iget-object v9, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v2

    .line 145
    .local v2, "accountType":Lorg/gnucash/android/model/AccountType;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(uid != ? AND currency_code = ? AND type = ? AND is_placeholder = 0 AND uid NOT IN (\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\',\'"

    .line 149
    invoke-static {v10, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'))"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "transactionDeleteConditions":Ljava/lang/String;
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    .line 152
    invoke-virtual {v2}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 151
    invoke-virtual {v3, v8, v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccountsOrderedByFullName(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 154
    .local v5, "cursor":Landroid/database/Cursor;
    new-instance v7, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v7, v9, v5}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 155
    .local v7, "mCursorAdapter":Landroid/support/v4/widget/SimpleCursorAdapter;
    iget-object v9, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mTransactionsDestinationAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 158
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(uid != ? AND currency_code = ? AND type = ? AND uid NOT IN (\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\',\'"

    .line 161
    invoke-static {v10, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'))"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "accountMoveConditions":Ljava/lang/String;
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mOriginAccountUID:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    .line 164
    invoke-virtual {v2}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 163
    invoke-virtual {v3, v0, v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccountsOrderedByFullName(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 165
    new-instance v7, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    .end local v7    # "mCursorAdapter":Landroid/support/v4/widget/SimpleCursorAdapter;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v7, v9, v5}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 166
    .restart local v7    # "mCursorAdapter":Landroid/support/v4/widget/SimpleCursorAdapter;
    iget-object v9, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mAccountsDestinationAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 168
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->setListeners()V

    .line 171
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 172
    iget-object v9, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mMoveAccountsRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 173
    iget-object v9, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mMoveAccountsRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 174
    iget-object v9, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mDeleteAccountsRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 175
    iget-object v9, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mMoveTransactionsRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 176
    iget-object v9, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mMoveTransactionsRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 177
    iget-object v9, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mDeleteTransactionsRadioButton:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 178
    iget-object v9, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mAccountsDestinationAccountSpinner:Landroid/widget/Spinner;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 179
    iget-object v9, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mTransactionsDestinationAccountSpinner:Landroid/widget/Spinner;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 181
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v0, 0x0

    const v1, 0x7f1000b9

    invoke-virtual {p0, v0, v1}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->setStyle(II)V

    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v9, 0x7f09018d

    const v8, 0x7f09018b

    const v7, 0x7f090090

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 108
    const v3, 0x7f0b0045

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 109
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f090214

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, "transactionOptionsView":Landroid/view/View;
    const v3, 0x7f090203

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f0f0175

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 111
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f0f00d2

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 112
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mDeleteTransactionsRadioButton:Landroid/widget/RadioButton;

    .line 113
    iget-object v3, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mDeleteTransactionsRadioButton:Landroid/widget/RadioButton;

    const v6, 0x7f0f00d4

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setText(I)V

    .line 114
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mMoveTransactionsRadioButton:Landroid/widget/RadioButton;

    .line 115
    const v3, 0x7f0901e6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mTransactionsDestinationAccountSpinner:Landroid/widget/Spinner;

    .line 117
    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "accountOptionsView":Landroid/view/View;
    const v3, 0x7f090203

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f0f0174

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 119
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f0f00d1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 120
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mDeleteAccountsRadioButton:Landroid/widget/RadioButton;

    .line 121
    iget-object v3, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mDeleteAccountsRadioButton:Landroid/widget/RadioButton;

    const v6, 0x7f0f00d3

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setText(I)V

    .line 122
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mMoveAccountsRadioButton:Landroid/widget/RadioButton;

    .line 123
    const v3, 0x7f0901e6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mAccountsDestinationAccountSpinner:Landroid/widget/Spinner;

    .line 125
    iget v3, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mTransactionCount:I

    if-lez v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget v3, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mSubAccountCount:I

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    const v3, 0x7f090038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mCancelButton:Landroid/widget/Button;

    .line 129
    const v3, 0x7f09003f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 130
    iget-object v3, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mOkButton:Landroid/widget/Button;

    const v4, 0x7f0f0022

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 131
    return-object v2

    :cond_0
    move v3, v5

    .line 125
    goto :goto_0

    :cond_1
    move v4, v5

    .line 126
    goto :goto_1
.end method

.method protected setListeners()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mMoveAccountsRadioButton:Landroid/widget/RadioButton;

    new-instance v1, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$1;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$1;-><init>(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 194
    iget-object v0, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mMoveTransactionsRadioButton:Landroid/widget/RadioButton;

    new-instance v1, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$2;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$2;-><init>(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 201
    iget-object v0, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$3;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$3;-><init>(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment$4;-><init>(Lorg/gnucash/android/ui/account/DeleteAccountDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-void
.end method
