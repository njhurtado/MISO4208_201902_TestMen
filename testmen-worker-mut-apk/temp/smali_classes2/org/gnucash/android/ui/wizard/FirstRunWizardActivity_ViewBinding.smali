.class public Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity_ViewBinding;
.super Ljava/lang/Object;
.source "FirstRunWizardActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)V
    .locals 1
    .param p1, "target"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p1}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity_ViewBinding;-><init>(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Landroid/view/View;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity_ViewBinding;->target:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .line 29
    const v0, 0x7f090178

    const-string v1, "field \'mPager\'"

    const-class v2, Landroid/support/v4/view/ViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 30
    const v0, 0x7f09003f

    const-string v1, "field \'mNextButton\'"

    const-class v2, Landroid/support/v7/widget/AppCompatButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatButton;

    iput-object v0, p1, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mNextButton:Landroid/support/v7/widget/AppCompatButton;

    .line 31
    const v0, 0x7f090038

    const-string v1, "field \'mPrevButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPrevButton:Landroid/widget/Button;

    .line 32
    const v0, 0x7f0901db

    const-string v1, "field \'mStepPagerStrip\'"

    const-class v2, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;

    iput-object v0, p1, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mStepPagerStrip:Lcom/tech/freak/wizardpager/ui/StepPagerStrip;

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
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity_ViewBinding;->target:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .line 39
    .local v0, "target":Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity_ViewBinding;->target:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .line 42
    iput-object v1, v0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 43
    iput-object v1, v0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mNextButton:Landroid/support/v7/widget/AppCompatButton;

    .line 44
    iput-object v1, v0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPrevButton:Landroid/widget/Button;

    .line 45
    iput-object v1, v0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mStepPagerStrip:Lcom/tech/freak/wizardpager/ui/StepPagerStrip;

    .line 46
    return-void
.end method
