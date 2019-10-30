.class public Lorg/gnucash/android/ui/settings/AboutPreferenceFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "AboutPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/AboutPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 47
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 48
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    const v1, 0x7f0f01a0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 51
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    const v0, 0x7f120002

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/settings/AboutPreferenceFragment;->addPreferencesFromResource(I)V

    .line 40
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onResume()V

    .line 56
    const v1, 0x7f0f0099

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/AboutPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/AboutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 57
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    const-string v1, "production"

    const-string v2, "development"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Built: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "20180615 13:41 UTC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    new-instance v1, Lorg/gnucash/android/ui/settings/AboutPreferenceFragment$1;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/settings/AboutPreferenceFragment$1;-><init>(Lorg/gnucash/android/ui/settings/AboutPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    return-void
.end method
