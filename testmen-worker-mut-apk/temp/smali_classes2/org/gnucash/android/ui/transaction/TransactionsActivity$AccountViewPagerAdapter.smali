.class Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "TransactionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/TransactionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionsActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    .line 169
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 170
    return-void
.end method

.method private prepareSubAccountsListFragment()Lorg/gnucash/android/ui/account/AccountsListFragment;
    .locals 4

    .prologue
    .line 230
    new-instance v1, Lorg/gnucash/android/ui/account/AccountsListFragment;

    invoke-direct {v1}, Lorg/gnucash/android/ui/account/AccountsListFragment;-><init>()V

    .line 231
    .local v1, "subAccountsListFragment":Lorg/gnucash/android/ui/account/AccountsListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 232
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "parent_account_uid"

    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v3}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$000(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1, v0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 234
    return-object v1
.end method

.method private prepareTransactionsListFragment()Lorg/gnucash/android/ui/transaction/TransactionsListFragment;
    .locals 5

    .prologue
    .line 242
    new-instance v1, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    invoke-direct {v1}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;-><init>()V

    .line 243
    .local v1, "transactionsListFragment":Lorg/gnucash/android/ui/transaction/TransactionsListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "account_uid"

    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v3}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$000(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1, v0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 246
    const-string v2, "TransactionsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening transactions for account:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v4}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$000(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-object v1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 198
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$400(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 200
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$200(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 174
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v2}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$200(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->prepareSubAccountsListFragment()Lorg/gnucash/android/ui/account/AccountsListFragment;

    move-result-object v1

    .line 176
    .local v1, "transactionsListFragment":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v2}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$400(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Landroid/util/SparseArray;

    move-result-object v3

    move-object v2, v1

    check-cast v2, Lorg/gnucash/android/ui/common/Refreshable;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    .end local v1    # "transactionsListFragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v1

    .line 181
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 188
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->prepareTransactionsListFragment()Lorg/gnucash/android/ui/transaction/TransactionsListFragment;

    move-result-object v0

    .line 192
    .local v0, "currentFragment":Landroid/support/v4/app/Fragment;
    :goto_1
    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v2}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$400(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Landroid/util/SparseArray;

    move-result-object v3

    move-object v2, v0

    check-cast v2, Lorg/gnucash/android/ui/common/Refreshable;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 193
    goto :goto_0

    .line 183
    .end local v0    # "currentFragment":Landroid/support/v4/app/Fragment;
    :pswitch_0
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->prepareSubAccountsListFragment()Lorg/gnucash/android/ui/account/AccountsListFragment;

    move-result-object v0

    .line 184
    .restart local v0    # "currentFragment":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const v1, 0x7f0f0174

    .line 204
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->access$200(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 207
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 213
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    const v1, 0x7f0f0175

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_0
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
