.class public Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "AccountPreferencesFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final REQUEST_EXPORT_FILE:I = 0xc5


# instance fields
.field mCurrencyEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mCurrencyEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->mCurrencyEntries:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->mCurrencyEntryValues:Ljava/util/List;

    return-void
.end method

.method private selectExportFile()V
    .locals 5

    .prologue
    .line 166
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "createIntent":Landroid/content/Intent;
    const-string v3, "*/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.category.OPENABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "bookName":Ljava/lang/String;
    sget-object v3, Lorg/gnucash/android/export/ExportFormat;->CSVA:Lorg/gnucash/android/export/ExportFormat;

    invoke-static {v3, v0}, Lorg/gnucash/android/export/Exporter;->buildExportFilename(Lorg/gnucash/android/export/ExportFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "filename":Ljava/lang/String;
    const-string v3, "application/text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/16 v3, 0xc5

    invoke-virtual {p0, v1, v3}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 175
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 198
    sparse-switch p1, :sswitch_data_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 200
    :sswitch_0
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p3, v4}, Lorg/gnucash/android/ui/account/AccountsActivity;->importXmlFileFromIntent(Landroid/app/Activity;Landroid/content/Intent;Lorg/gnucash/android/ui/util/TaskDelegate;)V

    goto :goto_0

    .line 206
    :sswitch_1
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 207
    new-instance v1, Lorg/gnucash/android/export/ExportParams;

    sget-object v3, Lorg/gnucash/android/export/ExportFormat;->CSVA:Lorg/gnucash/android/export/ExportFormat;

    invoke-direct {v1, v3}, Lorg/gnucash/android/export/ExportParams;-><init>(Lorg/gnucash/android/export/ExportFormat;)V

    .line 208
    .local v1, "exportParams":Lorg/gnucash/android/export/ExportParams;
    sget-object v3, Lorg/gnucash/android/export/ExportParams$ExportTarget;->URI:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-virtual {v1, v3}, Lorg/gnucash/android/export/ExportParams;->setExportTarget(Lorg/gnucash/android/export/ExportParams$ExportTarget;)V

    .line 209
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/gnucash/android/export/ExportParams;->setExportLocation(Ljava/lang/String;)V

    .line 210
    new-instance v2, Lorg/gnucash/android/export/ExportAsyncTask;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getActiveDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/gnucash/android/export/ExportAsyncTask;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 213
    .local v2, "exportTask":Lorg/gnucash/android/export/ExportAsyncTask;
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Lorg/gnucash/android/export/ExportParams;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lorg/gnucash/android/export/ExportAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 216
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "An error occurred during the Accounts CSV export"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xc5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 75
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    const v4, 0x7f0f01a1

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 77
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v4

    const-string v5, "mnemonic ASC"

    invoke-virtual {v4, v5}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->fetchAllRecords(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 78
    .local v2, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    const-string v4, "mnemonic"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "code":Ljava/lang/String;
    const-string v4, "fullname"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->mCurrencyEntries:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v4, p0, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->mCurrencyEntryValues:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v1    # "code":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 85
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 67
    const v0, 0x7f120003

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->addPreferencesFromResource(I)V

    .line 68
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f009e

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/gnucash/android/app/GnuCashApplication;->setDefaultCurrencyCode(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/Commodity;->getFullname()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "fullname":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    const/4 v1, 0x1

    .line 185
    .end local v0    # "fullname":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 147
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "key":Ljava/lang/String;
    const v2, 0x7f0f00ad

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-static {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->startXmlFileChooser(Landroid/support/v4/app/Fragment;)V

    .line 159
    :goto_0
    return v1

    .line 154
    :cond_0
    const v2, 0x7f0f00a9

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-direct {p0}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->selectExportFile()V

    goto :goto_0

    .line 159
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 89
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onResume()V

    .line 91
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "defaultCurrency":Ljava/lang/String;
    const v6, 0x7f0f009e

    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 93
    .local v4, "pref":Landroid/support/v7/preference/Preference;
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/gnucash/android/model/Commodity;->getFullname()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "currencyName":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v4, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->mCurrencyEntries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/CharSequence;

    .line 98
    .local v2, "entries":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->mCurrencyEntryValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/CharSequence;

    .local v3, "entryValues":[Ljava/lang/CharSequence;
    move-object v6, v4

    .line 99
    check-cast v6, Landroid/support/v7/preference/ListPreference;

    iget-object v7, p0, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->mCurrencyEntries:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 100
    check-cast v4, Landroid/support/v7/preference/ListPreference;

    .end local v4    # "pref":Landroid/support/v7/preference/Preference;
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->mCurrencyEntryValues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 102
    const v6, 0x7f0f00ad

    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 103
    .local v5, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v5, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 105
    const v6, 0x7f0f00a9

    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 106
    invoke-virtual {v5, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 108
    const v6, 0x7f0f00a2

    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 109
    new-instance v6, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$1;

    invoke-direct {v6, p0}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$1;-><init>(Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 117
    const v6, 0x7f0f009d

    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 118
    new-instance v6, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2;

    invoke-direct {v6, p0}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2;-><init>(Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    return-void
.end method

.method public showDeleteAccountsDialog()V
    .locals 3

    .prologue
    .line 192
    invoke-static {}, Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;->newInstance()Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;

    move-result-object v0

    .line 193
    .local v0, "deleteConfirmationDialog":Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "account_settings"

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 194
    return-void
.end method
