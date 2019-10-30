.class public Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "BackupPreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final DROPBOX_APP_KEY:Ljava/lang/String; = "dhjh8ke9wf05948"

.field public static final DROPBOX_APP_SECRET:Ljava/lang/String; = "h2t9fphj3nr4wkw"

.field public static final LOG_TAG:Ljava/lang/String; = "BackupPrefFragment"

.field private static final REQUEST_BACKUP_FILE:I = 0x13

.field private static final REQUEST_LINK_TO_DBX:I = 0x11

.field public static final REQUEST_RESOLVE_CONNECTION:I = 0x12

.field public static mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method public static getGoogleApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    .line 309
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    .line 310
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

    .line 311
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$2;-><init>(Landroid/content/Context;)V

    .line 312
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$1;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$1;-><init>(Landroid/content/Context;)V

    .line 345
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 308
    return-object v0
.end method

.method private restoreBackup()V
    .locals 12

    .prologue
    .line 370
    const-string v7, "Settings"

    const-string v10, "Opening GnuCash XML backups for restore"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "bookUID":Ljava/lang/String;
    invoke-static {v2}, Lorg/gnucash/android/util/BackupManager;->getBookBackupFileUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, "defaultBackupFile":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 375
    new-instance v7, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0f01b0

    .line 376
    invoke-virtual {v7, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v10, 0x7f0f0135

    .line 377
    invoke-virtual {v7, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v10, 0x7f0f002d

    new-instance v11, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$4;

    invoke-direct {v11, p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$4;-><init>(Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;)V

    .line 378
    invoke-virtual {v7, v10, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v10, 0x7f0f0034

    new-instance v11, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$3;

    invoke-direct {v11, p0, v5}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$3;-><init>(Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v7, v10, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 390
    .local v3, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 438
    .end local v3    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-static {v2}, Lorg/gnucash/android/util/BackupManager;->getBackupList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 396
    new-instance v7, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0f01cd

    .line 397
    invoke-virtual {v7, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v10, 0x7f0f0139

    .line 398
    invoke-virtual {v7, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v10, 0x7f0f00d6

    new-instance v11, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$5;

    invoke-direct {v11, p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$5;-><init>(Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;)V

    .line 399
    invoke-virtual {v7, v10, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 405
    .restart local v3    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 410
    .end local v3    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v10, 0x1090012

    invoke-direct {v0, v7, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 411
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    .line 412
    .local v4, "dateFormatter":Ljava/text/DateFormat;
    invoke-static {v2}, Lorg/gnucash/android/util/BackupManager;->getBackupList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 413
    .local v1, "backupFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/gnucash/android/export/Exporter;->getExportTime(Ljava/lang/String;)J

    move-result-wide v8

    .line 414
    .local v8, "time":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_2

    .line 415
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 417
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 420
    .end local v1    # "backupFile":Ljava/io/File;
    .end local v8    # "time":J
    :cond_3
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 421
    .local v6, "restoreDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0f01de

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 422
    const v7, 0x7f0f0021

    new-instance v10, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$6;

    invoke-direct {v10, p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$6;-><init>(Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;)V

    invoke-virtual {v6, v7, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    new-instance v7, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$7;

    invoke-direct {v7, p0, v2}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$7;-><init>(Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private toggleDropboxSync()V
    .locals 5

    .prologue
    const v4, 0x7f0f00a5

    .line 269
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 270
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "accessToken":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f0075

    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dropbox/core/android/Auth;->startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private toggleGoogleDriveSync()V
    .locals 5

    .prologue
    const v4, 0x7f0f00ac

    .line 282
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 283
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "appFolderId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    sget-object v2, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    sget-object v2, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method private toggleOwnCloudSync(Landroid/support/v7/preference/Preference;)V
    .locals 6
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const v5, 0x7f0f0152

    const/4 v4, 0x0

    .line 296
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f014e

    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 298
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-static {p1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->newInstance(Landroid/support/v7/preference/Preference;)Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    move-result-object v1

    .line 302
    .local v1, "ocDialog":Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "owncloud_dialog"

    invoke-virtual {v1, v2, v3}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v5, 0x7f0f00a6

    const/4 v4, -0x1

    .line 442
    packed-switch p1, :pswitch_data_0

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 445
    :pswitch_0
    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 446
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v2, :cond_0

    .line 448
    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->toggleDropboxPreference(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    .line 452
    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    :pswitch_1
    if-ne p2, v4, :cond_0

    .line 453
    sget-object v4, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 454
    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 455
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->toggleDropboxPreference(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    .line 462
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    :pswitch_2
    if-ne p2, v4, :cond_0

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "backupFileUri":Landroid/net/Uri;
    if-eqz p3, :cond_1

    .line 465
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 468
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit8 v3, v4, 0x3

    .line 470
    .local v3, "takeFlags":I
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 472
    invoke-static {}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getActiveBookSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 473
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "book_backup_file_key"

    .line 474
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 475
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 477
    const v4, 0x7f0f009a

    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 478
    .restart local v1    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x11
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

    .line 111
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 114
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 115
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 116
    const v1, 0x7f0f01a7

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 118
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getGoogleApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    sput-object v1, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 120
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 106
    const v0, 0x7f120004

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->addPreferencesFromResource(I)V

    .line 107
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 211
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f009e

    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/gnucash/android/app/GnuCashApplication;->setDefaultCurrencyCode(Ljava/lang/String;)V

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f009f

    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "emailSetting":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    :cond_1
    const v2, 0x7f0f0180

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 223
    .end local v0    # "emailSetting":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f00a0

    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "exportFormat":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 226
    :cond_3
    const v2, 0x7f0f0181

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 229
    .end local v1    # "exportFormat":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v8, 0x0

    .line 169
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "key":Ljava/lang/String;
    const v5, 0x7f0f00b7

    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    invoke-direct {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->restoreBackup()V

    .line 175
    :cond_0
    const v5, 0x7f0f009a

    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "createIntent":Landroid/content/Intent;
    const-string v5, "*/*"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v5, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "bookName":Ljava/lang/String;
    const-string v5, "android.intent.extra.TITLE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/gnucash/android/export/Exporter;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0f00c2

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/16 v5, 0x13

    invoke-virtual {p0, v1, v5}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 184
    .end local v0    # "bookName":Ljava/lang/String;
    .end local v1    # "createIntent":Landroid/content/Intent;
    :cond_1
    const v5, 0x7f0f00a6

    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    invoke-direct {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->toggleDropboxSync()V

    .line 186
    invoke-virtual {p0, p1}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->toggleDropboxPreference(Landroid/support/v7/preference/Preference;)V

    .line 189
    :cond_2
    const v5, 0x7f0f00b3

    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 190
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->toggleOwnCloudSync(Landroid/support/v7/preference/Preference;)V

    .line 191
    invoke-virtual {p0, p1}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->toggleOwnCloudPreference(Landroid/support/v7/preference/Preference;)V

    .line 194
    :cond_3
    const v5, 0x7f0f009c

    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 195
    invoke-static {}, Lorg/gnucash/android/util/BackupManager;->backupActiveBook()Z

    move-result v4

    .line 196
    .local v4, "result":Z
    if-eqz v4, :cond_5

    const v3, 0x7f0f01f1

    .line 197
    .local v3, "msg":I
    :goto_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 200
    .end local v3    # "msg":I
    .end local v4    # "result":Z
    :cond_4
    return v8

    .line 196
    .restart local v4    # "result":Z
    :cond_5
    const v3, 0x7f0f01f0

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 124
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onResume()V

    .line 125
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 129
    .local v6, "sharedPrefs":Landroid/content/SharedPreferences;
    const v7, 0x7f0f009f

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "keyDefaultEmail":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 131
    .local v5, "pref":Landroid/support/v7/preference/Preference;
    invoke-interface {v6, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "defaultEmail":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 133
    invoke-virtual {v5, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    invoke-virtual {v5, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    const v7, 0x7f0f00a0

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "keyDefaultExportFormat":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 139
    invoke-interface {v6, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "defaultExportFormat":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 141
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    invoke-virtual {v5, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    const v7, 0x7f0f00b7

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 146
    invoke-virtual {v5, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 148
    const v7, 0x7f0f009c

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 149
    invoke-virtual {v5, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    const v7, 0x7f0f009a

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 152
    invoke-virtual {v5, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 153
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/gnucash/android/util/BackupManager;->getBookBackupFileUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "defaultBackupLocation":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 155
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    :cond_2
    const v7, 0x7f0f00a6

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 159
    invoke-virtual {v5, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 160
    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->toggleDropboxPreference(Landroid/support/v7/preference/Preference;)V

    .line 162
    const v7, 0x7f0f00b3

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 163
    invoke-virtual {v5, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 164
    invoke-virtual {p0, v5}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->toggleOwnCloudPreference(Landroid/support/v7/preference/Preference;)V

    .line 165
    return-void
.end method

.method public toggleDropboxPreference(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 240
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const v2, 0x7f0f00a5

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "accessToken":Ljava/lang/String;
    check-cast p1, Landroid/support/v7/preference/CheckBoxPreference;

    .end local p1    # "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 242
    return-void

    .line 241
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toggleGoogleDrivePreference(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 259
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const v2, 0x7f0f00ac

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "appFolderId":Ljava/lang/String;
    check-cast p1, Landroid/support/v7/preference/CheckBoxPreference;

    .end local p1    # "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 261
    return-void

    .line 260
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toggleOwnCloudPreference(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f014e

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    check-cast p1, Landroid/support/v7/preference/CheckBoxPreference;

    .end local p1    # "pref":Landroid/support/v7/preference/Preference;
    const v1, 0x7f0f0152

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    return-void
.end method
