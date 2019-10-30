.class Lorg/gnucash/android/ui/settings/AboutPreferenceFragment$1;
.super Ljava/lang/Object;
.source "AboutPreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/AboutPreferenceFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/AboutPreferenceFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/AboutPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/AboutPreferenceFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/AboutPreferenceFragment$1;->this$0:Lorg/gnucash/android/ui/settings/AboutPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/AboutPreferenceFragment$1;->this$0:Lorg/gnucash/android/ui/settings/AboutPreferenceFragment;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/settings/AboutPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/gnucash/android/ui/account/AccountsActivity;->showWhatsNewDialog(Landroid/content/Context;)Landroid/app/AlertDialog;

    .line 64
    const/4 v0, 0x1

    return v0
.end method
