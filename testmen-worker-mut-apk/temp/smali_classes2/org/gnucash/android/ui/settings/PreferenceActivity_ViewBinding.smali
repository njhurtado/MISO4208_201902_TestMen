.class public Lorg/gnucash/android/ui/settings/PreferenceActivity_ViewBinding;
.super Ljava/lang/Object;
.source "PreferenceActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/settings/PreferenceActivity;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/settings/PreferenceActivity;)V
    .locals 1
    .param p1, "target"    # Lorg/gnucash/android/ui/settings/PreferenceActivity;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p1}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/ui/settings/PreferenceActivity_ViewBinding;-><init>(Lorg/gnucash/android/ui/settings/PreferenceActivity;Landroid/view/View;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/ui/settings/PreferenceActivity;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/settings/PreferenceActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/PreferenceActivity_ViewBinding;->target:Lorg/gnucash/android/ui/settings/PreferenceActivity;

    .line 26
    const v0, 0x7f0901c5

    const-string v1, "field \'mSlidingPaneLayout\'"

    const-class v2, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout;

    iput-object v0, p1, Lorg/gnucash/android/ui/settings/PreferenceActivity;->mSlidingPaneLayout:Landroid/support/v4/widget/SlidingPaneLayout;

    .line 27
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 32
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/PreferenceActivity_ViewBinding;->target:Lorg/gnucash/android/ui/settings/PreferenceActivity;

    .line 33
    .local v0, "target":Lorg/gnucash/android/ui/settings/PreferenceActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/settings/PreferenceActivity_ViewBinding;->target:Lorg/gnucash/android/ui/settings/PreferenceActivity;

    .line 36
    iput-object v1, v0, Lorg/gnucash/android/ui/settings/PreferenceActivity;->mSlidingPaneLayout:Landroid/support/v4/widget/SlidingPaneLayout;

    .line 37
    return-void
.end method
