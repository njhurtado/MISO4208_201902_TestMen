.class public Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "GeneralPreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final PASSCODE_REQUEST_CODE:I = 0x2

.field public static final REQUEST_CHANGE_PASSCODE:I = 0x4

.field public static final REQUEST_DISABLE_PASSCODE:I = 0x3


# instance fields
.field private mCheckBoxPreference:Landroid/support/v7/preference/CheckBoxPreference;

.field private mEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v5, 0x7f0f0202

    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    iget-object v2, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v2, :cond_0

    .line 136
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 139
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 164
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    return-void

    .line 141
    :pswitch_0
    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_2

    .line 142
    iget-object v2, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "passcode"

    const-string v4, "passcode"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    iget-object v2, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "enabled_passcode"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 146
    :cond_2
    if-nez p2, :cond_1

    .line 147
    iget-object v2, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "enabled_passcode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 148
    iget-object v2, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->mCheckBoxPreference:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 152
    :pswitch_1
    if-eq p2, v3, :cond_3

    .line 153
    .local v0, "flag":Z
    :goto_1
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "enabled_passcode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->mCheckBoxPreference:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .end local v0    # "flag":Z
    :cond_3
    move v0, v1

    .line 152
    goto :goto_1

    .line 157
    :pswitch_2
    if-ne p2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 158
    iget-object v2, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "passcode"

    const-string v4, "passcode"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v2, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "enabled_passcode"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 68
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    const v1, 0x7f0f01c6

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 71
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 60
    const v0, 0x7f120005

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->addPreferencesFromResource(I)V

    .line 61
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const v4, 0x7f0f00b9

    .line 111
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f00a8

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 112
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 126
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 116
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v0, "passIntent":Landroid/content/Intent;
    const-string v1, "disable_passcode"

    const-string v2, "disable_passcode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "key":Ljava/lang/String;
    const v1, 0x7f0f009b

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Landroid/content/Intent;

    .line 101
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x4

    .line 100
    invoke-virtual {p0, v1, v2}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 104
    const/4 v1, 0x1

    .line 106
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onResume()V

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x7f0f00a8

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    iput-object v1, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->mCheckBoxPreference:Landroid/support/v7/preference/CheckBoxPreference;

    .line 80
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->mCheckBoxPreference:Landroid/support/v7/preference/CheckBoxPreference;

    new-instance v2, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment$1;

    invoke-direct {v2, p0, v0}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment$1;-><init>(Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    const v1, 0x7f0f009b

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 94
    return-void
.end method
