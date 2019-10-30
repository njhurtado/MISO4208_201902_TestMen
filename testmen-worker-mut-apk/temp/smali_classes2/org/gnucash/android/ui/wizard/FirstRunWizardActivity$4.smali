.class Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$4;
.super Ljava/lang/Object;
.source "FirstRunWizardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 182
    iput-object p1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$4;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$4;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    iget-object v0, v0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$4;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    iget-object v1, v1, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 186
    return-void
.end method
