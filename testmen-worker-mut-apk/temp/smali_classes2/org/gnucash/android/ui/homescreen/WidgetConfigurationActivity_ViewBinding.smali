.class public Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WidgetConfigurationActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)V
    .locals 1
    .param p1, "target"    # Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p1}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity_ViewBinding;-><init>(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;Landroid/view/View;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity_ViewBinding;->target:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    .line 28
    const v0, 0x7f0900ed

    const-string v1, "field \'mAccountsSpinner\'"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAccountsSpinner:Landroid/widget/Spinner;

    .line 29
    const v0, 0x7f0900ef

    const-string v1, "field \'mBooksSpinner\'"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mBooksSpinner:Landroid/widget/Spinner;

    .line 30
    const v0, 0x7f0900fa

    const-string v1, "field \'mHideAccountBalance\'"

    const-class v2, Landroid/widget/CheckBox;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mHideAccountBalance:Landroid/widget/CheckBox;

    .line 31
    const v0, 0x7f09003f

    const-string v1, "field \'mOkButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mOkButton:Landroid/widget/Button;

    .line 32
    const v0, 0x7f090038

    const-string v1, "field \'mCancelButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mCancelButton:Landroid/widget/Button;

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
    iget-object v0, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity_ViewBinding;->target:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    .line 39
    .local v0, "target":Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity_ViewBinding;->target:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    .line 42
    iput-object v1, v0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAccountsSpinner:Landroid/widget/Spinner;

    .line 43
    iput-object v1, v0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mBooksSpinner:Landroid/widget/Spinner;

    .line 44
    iput-object v1, v0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mHideAccountBalance:Landroid/widget/CheckBox;

    .line 45
    iput-object v1, v0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mOkButton:Landroid/widget/Button;

    .line 46
    iput-object v1, v0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mCancelButton:Landroid/widget/Button;

    .line 47
    return-void
.end method
