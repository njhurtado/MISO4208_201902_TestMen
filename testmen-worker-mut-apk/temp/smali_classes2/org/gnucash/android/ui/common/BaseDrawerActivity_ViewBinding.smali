.class public Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BaseDrawerActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/common/BaseDrawerActivity;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;)V
    .locals 1
    .param p1, "target"    # Lorg/gnucash/android/ui/common/BaseDrawerActivity;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;-><init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;Landroid/view/View;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/common/BaseDrawerActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;->target:Lorg/gnucash/android/ui/common/BaseDrawerActivity;

    .line 29
    const v0, 0x7f09009a

    const-string v1, "field \'mDrawerLayout\'"

    const-class v2, Landroid/support/v4/widget/DrawerLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p1, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 30
    const v0, 0x7f09015e

    const-string v1, "field \'mNavigationView\'"

    const-class v2, Landroid/support/design/widget/NavigationView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p1, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    .line 31
    const v0, 0x7f090206

    const-string v1, "field \'mToolbar\'"

    const-class v2, Landroid/support/v7/widget/Toolbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 32
    const v0, 0x7f090208

    const-string v1, "field \'mToolbarProgress\'"

    const-class v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mToolbarProgress:Landroid/widget/ProgressBar;

    .line 33
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;->target:Lorg/gnucash/android/ui/common/BaseDrawerActivity;

    .line 39
    .local v0, "target":Lorg/gnucash/android/ui/common/BaseDrawerActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;->target:Lorg/gnucash/android/ui/common/BaseDrawerActivity;

    .line 42
    iput-object v1, v0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 43
    iput-object v1, v0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    .line 44
    iput-object v1, v0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 45
    iput-object v1, v0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mToolbarProgress:Landroid/widget/ProgressBar;

    .line 46
    return-void
.end method
