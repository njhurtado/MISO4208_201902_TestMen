.class public Lorg/gnucash/android/ui/account/AccountsActivity_ViewBinding;
.super Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;
.source "AccountsActivity_ViewBinding.java"


# instance fields
.field private target:Lorg/gnucash/android/ui/account/AccountsActivity;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/account/AccountsActivity;)V
    .locals 1
    .param p1, "target"    # Lorg/gnucash/android/ui/account/AccountsActivity;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p1}, Lorg/gnucash/android/ui/account/AccountsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/ui/account/AccountsActivity_ViewBinding;-><init>(Lorg/gnucash/android/ui/account/AccountsActivity;Landroid/view/View;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/ui/account/AccountsActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/account/AccountsActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;-><init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;Landroid/view/View;)V

    .line 27
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountsActivity_ViewBinding;->target:Lorg/gnucash/android/ui/account/AccountsActivity;

    .line 29
    const v0, 0x7f090178

    const-string v1, "field \'mViewPager\'"

    const-class v2, Landroid/support/v4/view/ViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 30
    const v0, 0x7f0900b7

    const-string v1, "field \'mFloatingActionButton\'"

    const-class v2, Landroid/support/design/widget/FloatingActionButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountsActivity;->mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 31
    const v0, 0x7f090074

    const-string v1, "field \'mCoordinatorLayout\'"

    const-class v2, Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p1, Lorg/gnucash/android/ui/account/AccountsActivity;->mCoordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    .line 32
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsActivity_ViewBinding;->target:Lorg/gnucash/android/ui/account/AccountsActivity;

    .line 37
    .local v0, "target":Lorg/gnucash/android/ui/account/AccountsActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/account/AccountsActivity_ViewBinding;->target:Lorg/gnucash/android/ui/account/AccountsActivity;

    .line 40
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 41
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountsActivity;->mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 42
    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountsActivity;->mCoordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    .line 44
    invoke-super {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;->unbind()V

    .line 45
    return-void
.end method
