.class Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$5;
.super Ljava/lang/Object;
.source "FirstRunWizardActivity.java"

# interfaces
.implements Lorg/gnucash/android/ui/util/TaskDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 270
    iput-object p1, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$5;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskComplete()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity$5;->this$0:Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;->finish()V

    .line 274
    return-void
.end method
