.class Lorg/gnucash/android/ui/settings/PreferenceActivity$1;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/PreferenceActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/gnucash/android/ui/settings/PreferenceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/settings/PreferenceActivity$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/gnucash/android/ui/settings/PreferenceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/PreferenceActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/PreferenceActivity$1;->this$0:Lorg/gnucash/android/ui/settings/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelClosed(Landroid/view/View;)V
    .locals 0
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 77
    return-void
.end method

.method public onPanelOpened(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/PreferenceActivity$1;->this$0:Lorg/gnucash/android/ui/settings/PreferenceActivity;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 70
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    sget-boolean v1, Lorg/gnucash/android/ui/settings/PreferenceActivity$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 71
    :cond_0
    const v1, 0x7f0f01e1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 72
    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 0
    .param p1, "panel"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 65
    return-void
.end method
