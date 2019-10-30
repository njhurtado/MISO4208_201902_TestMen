.class public Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "TransactionsPreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private setImbalanceAccountsHidden(Z)V
    .locals 7
    .param p1, "useDoubleEntry"    # Z

    .prologue
    .line 125
    if-eqz p1, :cond_1

    const-string v3, "0"

    .line 126
    .local v3, "isHidden":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    .line 127
    .local v0, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    invoke-virtual {v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getCommoditiesInUse()Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, "commodities":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Commodity;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/model/Commodity;

    .line 129
    .local v2, "commodity":Lorg/gnucash/android/model/Commodity;
    invoke-virtual {v0, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getImbalanceAccountUID(Lorg/gnucash/android/model/Commodity;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "uid":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 131
    const-string v6, "is_hidden"

    invoke-virtual {v0, v4, v6, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->updateRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 125
    .end local v0    # "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .end local v1    # "commodities":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Commodity;>;"
    .end local v2    # "commodity":Lorg/gnucash/android/model/Commodity;
    .end local v3    # "isHidden":Ljava/lang/String;
    .end local v4    # "uid":Ljava/lang/String;
    :cond_1
    const-string v3, "1"

    goto :goto_0

    .line 134
    .restart local v0    # "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .restart local v1    # "commodities":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Commodity;>;"
    .restart local v3    # "isHidden":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setLocalizedSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v1, "DEBIT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f00ce

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "localizedLabel":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    return-void

    .line 141
    .end local v0    # "localizedLabel":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f00cc

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 52
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    const v1, 0x7f0f01e4

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 55
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 59
    const v0, 0x7f120006

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 60
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f00bb

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 103
    .local v0, "useDoubleEntry":Z
    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->setImbalanceAccountsHidden(Z)V

    .line 107
    .end local v0    # "useDoubleEntry":Z
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 105
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->setLocalizedSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const v12, 0x7f0f00bb

    const v11, 0x7f0f00a1

    const/4 v10, 0x0

    .line 64
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onResume()V

    .line 66
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 68
    .local v6, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0, v11}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0f00ce

    .line 69
    invoke-virtual {p0, v9}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 67
    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "defaultTransactionType":Ljava/lang/String;
    invoke-virtual {p0, v11}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 71
    .local v4, "pref":Landroid/support/v7/preference/Preference;
    invoke-direct {p0, v4, v0}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->setLocalizedSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v4, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    invoke-virtual {p0, v12}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 75
    invoke-virtual {v4, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    const v8, 0x7f0f00ba

    invoke-virtual {p0, v8}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "keyCompactView":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 79
    .local v7, "switchPref":Landroid/support/v7/preference/SwitchPreferenceCompat;
    invoke-interface {v6, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    .line 81
    const v8, 0x7f0f00b8

    invoke-virtual {p0, v8}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "keySaveBalance":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .end local v7    # "switchPref":Landroid/support/v7/preference/SwitchPreferenceCompat;
    check-cast v7, Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 83
    .restart local v7    # "switchPref":Landroid/support/v7/preference/SwitchPreferenceCompat;
    invoke-interface {v6, v3, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    .line 85
    invoke-virtual {p0, v12}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "keyDoubleEntry":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .end local v7    # "switchPref":Landroid/support/v7/preference/SwitchPreferenceCompat;
    check-cast v7, Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 87
    .restart local v7    # "switchPref":Landroid/support/v7/preference/SwitchPreferenceCompat;
    const/4 v8, 0x1

    invoke-interface {v6, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    .line 89
    const v8, 0x7f0f00a3

    invoke-virtual {p0, v8}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 90
    .local v5, "preference":Landroid/support/v7/preference/Preference;
    new-instance v8, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment$1;

    invoke-direct {v8, p0}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment$1;-><init>(Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;)V

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    return-void
.end method

.method public showDeleteTransactionsDialog()V
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;->newInstance()Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;

    move-result-object v0

    .line 116
    .local v0, "deleteTransactionsConfirmationDialog":Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/TransactionsPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "transaction_settings"

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/ui/settings/dialog/DeleteAllTransactionsConfirmationDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 117
    return-void
.end method
