.class Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2;
.super Ljava/lang/Object;
.source "AccountPreferencesFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2;->this$0:Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2;->this$0:Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01b3

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0134

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800c9

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f002e

    new-instance v2, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2$2;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2$2;-><init>(Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2;)V

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f002d

    new-instance v2, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2$1;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2$1;-><init>(Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2;)V

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 140
    const/4 v0, 0x1

    return v0
.end method
