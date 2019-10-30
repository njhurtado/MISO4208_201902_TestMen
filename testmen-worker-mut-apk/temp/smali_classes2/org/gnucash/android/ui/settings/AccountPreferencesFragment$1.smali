.class Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$1;
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
    .line 109
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$1;->this$0:Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$1;->this$0:Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->showDeleteAccountsDialog()V

    .line 113
    const/4 v0, 0x1

    return v0
.end method
