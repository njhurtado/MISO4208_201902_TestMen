.class public Lorg/gnucash/android/ui/settings/PreferenceHeadersFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "PreferenceHeadersFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 32
    const v0, 0x7f120007

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/settings/PreferenceHeadersFragment;->addPreferencesFromResource(I)V

    .line 33
    return-void
.end method
