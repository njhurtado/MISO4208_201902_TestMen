.class Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "FirstRunWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$2;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$2;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    iget-object v0, v0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mStepPagerStrip:Lcom/tech/freak/wizardpager/ui/StepPagerStrip;

    invoke-virtual {v0, p1}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->setCurrentPage(I)V

    .line 118
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$2;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$100(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$2;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$102(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Z)Z

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$2;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$202(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;Z)Z

    .line 124
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$2;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$300(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)V

    goto :goto_0
.end method
