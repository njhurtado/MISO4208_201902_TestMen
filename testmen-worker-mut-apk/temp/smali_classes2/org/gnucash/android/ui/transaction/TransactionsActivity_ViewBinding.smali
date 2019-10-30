.class public Lorg/gnucash/android/ui/transaction/TransactionsActivity_ViewBinding;
.super Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;
.source "TransactionsActivity_ViewBinding.java"


# instance fields
.field private target:Lorg/gnucash/android/ui/transaction/TransactionsActivity;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)V
    .locals 1
    .param p1, "target"    # Lorg/gnucash/android/ui/transaction/TransactionsActivity;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity_ViewBinding;-><init>(Lorg/gnucash/android/ui/transaction/TransactionsActivity;Landroid/view/View;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/ui/transaction/TransactionsActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/transaction/TransactionsActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;-><init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;Landroid/view/View;)V

    .line 29
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    .line 31
    const v0, 0x7f090178

    const-string v1, "field \'mViewPager\'"

    const-class v2, Landroid/support/v4/view/ViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 32
    const v0, 0x7f090209

    const-string v1, "field \'mToolbarSpinner\'"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mToolbarSpinner:Landroid/widget/Spinner;

    .line 33
    const v0, 0x7f0901e1

    const-string v1, "field \'mTabLayout\'"

    const-class v2, Landroid/support/design/widget/TabLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 34
    const v0, 0x7f090215

    const-string v1, "field \'mSumTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mSumTextView:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0900b9

    const-string v1, "field \'mCreateFloatingButton\'"

    const-class v2, Landroid/support/design/widget/FloatingActionButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p1, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mCreateFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    .line 36
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    .line 41
    .local v0, "target":Lorg/gnucash/android/ui/transaction/TransactionsActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity_ViewBinding;->target:Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    .line 44
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 45
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mToolbarSpinner:Landroid/widget/Spinner;

    .line 46
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 47
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mSumTextView:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mCreateFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    .line 50
    invoke-super {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;->unbind()V

    .line 51
    return-void
.end method
