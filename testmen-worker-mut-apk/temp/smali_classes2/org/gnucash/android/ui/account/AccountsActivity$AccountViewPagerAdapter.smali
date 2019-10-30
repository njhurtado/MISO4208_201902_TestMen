.class Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "AccountsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/account/AccountsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/account/AccountsActivity;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/account/AccountsActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 149
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsActivity;

    .line 150
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 151
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/account/AccountsActivity;->access$000(Lorg/gnucash/android/ui/account/AccountsActivity;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 180
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 155
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsActivity;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/AccountsActivity;->access$000(Lorg/gnucash/android/ui/account/AccountsActivity;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/account/AccountsListFragment;

    .line 156
    .local v0, "currentFragment":Lorg/gnucash/android/ui/account/AccountsListFragment;
    if-nez v0, :cond_0

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 168
    :pswitch_0
    sget-object v1, Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;->TOP_LEVEL:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/AccountsListFragment;->newInstance(Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;)Lorg/gnucash/android/ui/account/AccountsListFragment;

    move-result-object v0

    .line 171
    :goto_0
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsActivity;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/AccountsActivity;->access$000(Lorg/gnucash/android/ui/account/AccountsActivity;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    :cond_0
    return-object v0

    .line 159
    :pswitch_1
    sget-object v1, Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;->RECENT:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/AccountsListFragment;->newInstance(Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;)Lorg/gnucash/android/ui/account/AccountsListFragment;

    move-result-object v0

    .line 160
    goto :goto_0

    .line 163
    :pswitch_2
    sget-object v1, Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;->FAVORITES:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/AccountsListFragment;->newInstance(Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;)Lorg/gnucash/android/ui/account/AccountsListFragment;

    move-result-object v0

    .line 164
    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 184
    packed-switch p1, :pswitch_data_0

    .line 193
    :pswitch_0
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsActivity;

    const v1, 0x7f0f01a4

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/account/AccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 186
    :pswitch_1
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsActivity;

    const v1, 0x7f0f01d3

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/account/AccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;->this$0:Lorg/gnucash/android/ui/account/AccountsActivity;

    const v1, 0x7f0f01c5

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/account/AccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
