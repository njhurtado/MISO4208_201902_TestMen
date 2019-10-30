.class public Lorg/gnucash/android/ui/report/ReportsActivity_ViewBinding;
.super Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;
.source "ReportsActivity_ViewBinding.java"


# instance fields
.field private target:Lorg/gnucash/android/ui/report/ReportsActivity;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/report/ReportsActivity;)V
    .locals 1
    .param p1, "target"    # Lorg/gnucash/android/ui/report/ReportsActivity;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p1}, Lorg/gnucash/android/ui/report/ReportsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/ui/report/ReportsActivity_ViewBinding;-><init>(Lorg/gnucash/android/ui/report/ReportsActivity;Landroid/view/View;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/ui/report/ReportsActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/report/ReportsActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;-><init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;Landroid/view/View;)V

    .line 25
    iput-object p1, p0, Lorg/gnucash/android/ui/report/ReportsActivity_ViewBinding;->target:Lorg/gnucash/android/ui/report/ReportsActivity;

    .line 27
    const v0, 0x7f0901fd

    const-string v1, "field \'mTimeRangeSpinner\'"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lorg/gnucash/android/ui/report/ReportsActivity;->mTimeRangeSpinner:Landroid/widget/Spinner;

    .line 28
    const v0, 0x7f090198

    const-string v1, "field \'mAccountTypeSpinner\'"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lorg/gnucash/android/ui/report/ReportsActivity;->mAccountTypeSpinner:Landroid/widget/Spinner;

    .line 29
    const v0, 0x7f090209

    const-string v1, "field \'mReportTypeSpinner\'"

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportTypeSpinner:Landroid/widget/Spinner;

    .line 30
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity_ViewBinding;->target:Lorg/gnucash/android/ui/report/ReportsActivity;

    .line 35
    .local v0, "target":Lorg/gnucash/android/ui/report/ReportsActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/report/ReportsActivity_ViewBinding;->target:Lorg/gnucash/android/ui/report/ReportsActivity;

    .line 38
    iput-object v1, v0, Lorg/gnucash/android/ui/report/ReportsActivity;->mTimeRangeSpinner:Landroid/widget/Spinner;

    .line 39
    iput-object v1, v0, Lorg/gnucash/android/ui/report/ReportsActivity;->mAccountTypeSpinner:Landroid/widget/Spinner;

    .line 40
    iput-object v1, v0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportTypeSpinner:Landroid/widget/Spinner;

    .line 42
    invoke-super {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity_ViewBinding;->unbind()V

    .line 43
    return-void
.end method
