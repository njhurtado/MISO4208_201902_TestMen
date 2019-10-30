.class Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment$1;
.super Ljava/lang/Object;
.source "GeneralPreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment$1;->this$0:Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;

    iput-object p2, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment$1;->this$0:Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment$1;->val$intent:Landroid/content/Intent;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 86
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment$1;->this$0:Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "passIntent":Landroid/content/Intent;
    const-string v1, "disable_passcode"

    const-string v2, "disable_passcode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment$1;->this$0:Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
