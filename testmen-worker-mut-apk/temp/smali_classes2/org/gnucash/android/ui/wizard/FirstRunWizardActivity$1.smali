.class Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$1;
.super Ljava/lang/Object;
.source "FirstRunWizardActivity.java"

# interfaces
.implements Lcom/tech/freak/wizardpager/ui/StepPagerStrip$OnPageSelectedListener;


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
    .line 101
    iput-object p1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$1;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStripSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$1;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->access$000(Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;)Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$MyPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 106
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$1;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    iget-object v0, v0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 107
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$1;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    iget-object v0, v0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 109
    :cond_0
    return-void
.end method
