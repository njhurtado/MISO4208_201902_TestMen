.class public Lorg/gnucash/android/export/ExportAsyncTask;
.super Landroid/os/AsyncTask;
.source "ExportAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/gnucash/android/export/ExportParams;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ExportAsyncTask"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mExportParams:Lorg/gnucash/android/export/ExportParams;

.field private mExportedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExporter:Lorg/gnucash/android/export/Exporter;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportedFiles:Ljava/util/List;

    .line 114
    iput-object p1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/export/ExportAsyncTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/export/ExportAsyncTask;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gnucash/android/export/ExportAsyncTask;)Lorg/gnucash/android/export/ExportParams;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/export/ExportAsyncTask;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    return-object v0
.end method

.method private backupAndDeleteTransactions()V
    .locals 6

    .prologue
    .line 461
    const-string v3, "ExportAsyncTask"

    const-string v4, "Backup and deleting transactions after export"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {}, Lorg/gnucash/android/util/BackupManager;->backupActiveBook()Z

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v0, "openingBalances":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/gnucash/android/app/GnuCashApplication;->shouldSaveOpeningBalances(Z)Z

    move-result v1

    .line 466
    .local v1, "preserveOpeningBalances":Z
    new-instance v2, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    iget-object v3, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    iget-object v5, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v4, v5}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v2, v3, v4}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/SplitsDbAdapter;)V

    .line 467
    .local v2, "transactionsDbAdapter":Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    if-eqz v1, :cond_0

    .line 468
    new-instance v3, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v4, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v3, v4, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;)V

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAllOpeningBalanceTransactions()Ljava/util/List;

    move-result-object v0

    .line 470
    :cond_0
    invoke-virtual {v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->deleteAllNonTemplateTransactions()I

    .line 472
    if-eqz v1, :cond_1

    .line 473
    sget-object v3, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v2, v0, v3}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    .line 475
    :cond_1
    return-void
.end method

.method private convertFilePathsToUris(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v1, "exportFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 526
    .local v3, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v2, "file":Ljava/io/File;
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "org.gnucash.android.fileprovider"

    invoke-static {v5, v6, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 528
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 530
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 215
    :cond_1
    return-void
.end method

.method private getExporter()Lorg/gnucash/android/export/Exporter;
    .locals 3

    .prologue
    .line 222
    sget-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportFormat:[I

    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportParams;->getExportFormat()Lorg/gnucash/android/export/ExportFormat;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 233
    new-instance v0, Lorg/gnucash/android/export/xml/GncXmlExporter;

    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    iget-object v2, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/export/xml/GncXmlExporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-object v0

    .line 224
    :pswitch_0
    new-instance v0, Lorg/gnucash/android/export/qif/QifExporter;

    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    iget-object v2, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/export/qif/QifExporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 226
    :pswitch_1
    new-instance v0, Lorg/gnucash/android/export/ofx/OfxExporter;

    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    iget-object v2, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/export/ofx/OfxExporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 228
    :pswitch_2
    new-instance v0, Lorg/gnucash/android/export/csv/CsvAccountExporter;

    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    iget-object v2, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/export/csv/CsvAccountExporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 230
    :pswitch_3
    new-instance v0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;

    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    iget-object v2, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFileLastModifiedTimestamp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 422
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 423
    .local v0, "timeStampLong":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private moveExportToDropbox()V
    .locals 10

    .prologue
    .line 353
    const-string v6, "ExportAsyncTask"

    const-string v7, "Uploading exported files to DropBox"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Lorg/gnucash/android/export/DropboxHelper;->getClient()Lcom/dropbox/core/v2/DbxClientV2;

    move-result-object v0

    .line 357
    .local v0, "dbxClient":Lcom/dropbox/core/v2/DbxClientV2;
    iget-object v6, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportedFiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 358
    .local v3, "exportedFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    .local v2, "exportedFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 361
    .local v4, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Lcom/dropbox/core/v2/DbxClientV2;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 362
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadBuilder;

    move-result-object v7

    .line 363
    invoke-virtual {v7, v4}, Lcom/dropbox/core/v2/files/UploadBuilder;->uploadAndFinish(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dropbox/core/v2/files/FileMetadata;

    .line 364
    .local v5, "metadata":Lcom/dropbox/core/v2/files/FileMetadata;
    const-string v7, "ExportAsyncTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Successfully uploaded file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/dropbox/core/v2/files/FileMetadata;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to DropBox"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 366
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 367
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "metadata":Lcom/dropbox/core/v2/files/FileMetadata;
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 369
    const-string v7, "ExportAsyncTask"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 371
    .local v1, "e":Lcom/dropbox/core/DbxException;
    invoke-virtual {v1}, Lcom/dropbox/core/DbxException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v1    # "e":Lcom/dropbox/core/DbxException;
    .end local v2    # "exportedFile":Ljava/io/File;
    .end local v3    # "exportedFilePath":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private moveExportToGoogleDrive()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gnucash/android/export/Exporter$ExporterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    const-string v19, "ExportAsyncTask"

    const-string v20, "Moving exported file to Google Drive"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getGoogleApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v16

    .line 304
    .local v16, "googleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 307
    .local v18, "sharedPreferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0f00ac

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 308
    .local v15, "folderId":Ljava/lang/String;
    invoke-static {v15}, Lcom/google/android/gms/drive/DriveId;->decodeFromString(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/drive/DriveId;->asDriveFolder()Lcom/google/android/gms/drive/DriveFolder;

    move-result-object v14

    .line 310
    .local v14, "folder":Lcom/google/android/gms/drive/DriveFolder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportedFiles:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 311
    .local v12, "exportedFilePath":Ljava/lang/String;
    sget-object v20, Lcom/google/android/gms/drive/Drive;->DriveApi:Lcom/google/android/gms/drive/DriveApi;

    .line 312
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/DriveApi;->newDriveContents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v20

    const-wide/16 v22, 0x1

    sget-object v21, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;

    .line 313
    .local v8, "driveContentsResult":Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;
    invoke-interface {v8}, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v20

    if-nez v20, :cond_0

    .line 314
    new-instance v19, Lorg/gnucash/android/export/Exporter$ExporterException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    move-object/from16 v20, v0

    const-string v21, "Error while trying to create new file contents"

    invoke-direct/range {v19 .. v21}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v8    # "driveContentsResult":Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;
    .end local v12    # "exportedFilePath":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 345
    .local v10, "e":Ljava/io/IOException;
    new-instance v19, Lorg/gnucash/android/export/Exporter$ExporterException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v19

    .line 317
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v8    # "driveContentsResult":Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;
    .restart local v12    # "exportedFilePath":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;->getDriveContents()Lcom/google/android/gms/drive/DriveContents;

    move-result-object v7

    .line 318
    .local v7, "driveContents":Lcom/google/android/gms/drive/DriveContents;
    invoke-interface {v7}, Lcom/google/android/gms/drive/DriveContents;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 319
    .local v17, "outputStream":Ljava/io/OutputStream;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v11, "exportedFile":Ljava/io/File;
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 321
    .local v13, "fileInputStream":Ljava/io/FileInputStream;
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v4, v0, [B

    .line 324
    .local v4, "buffer":[B
    :goto_1
    invoke-virtual {v13, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "count":I
    if-ltz v6, :cond_1

    .line 325
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 327
    :cond_1
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 328
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    .line 329
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 331
    new-instance v20, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;-><init>()V

    .line 332
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mExporter:Lorg/gnucash/android/export/Exporter;

    move-object/from16 v21, v0

    .line 333
    invoke-virtual/range {v21 .. v21}, Lorg/gnucash/android/export/Exporter;->getExportMimeType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/gms/drive/MetadataChangeSet$Builder;

    move-result-object v20

    .line 334
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->build()Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v5

    .line 337
    .local v5, "changeSet":Lcom/google/android/gms/drive/MetadataChangeSet;
    move-object/from16 v0, v16

    invoke-interface {v14, v0, v5, v7}, Lcom/google/android/gms/drive/DriveFolder;->createFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v20

    const-wide/16 v22, 0x1

    sget-object v21, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 338
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;

    .line 339
    .local v9, "driveFileResult":Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;
    invoke-interface {v9}, Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v20

    if-nez v20, :cond_2

    .line 340
    new-instance v19, Lorg/gnucash/android/export/Exporter$ExporterException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    move-object/from16 v20, v0

    const-string v21, "Error creating file in Google Drive"

    invoke-direct/range {v19 .. v21}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/String;)V

    throw v19

    .line 342
    :cond_2
    const-string v20, "ExportAsyncTask"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Created file with id: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v9}, Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;->getDriveFile()Lcom/google/android/gms/drive/DriveFile;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/drive/DriveFile;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 347
    .end local v4    # "buffer":[B
    .end local v5    # "changeSet":Lcom/google/android/gms/drive/MetadataChangeSet;
    .end local v6    # "count":I
    .end local v7    # "driveContents":Lcom/google/android/gms/drive/DriveContents;
    .end local v8    # "driveContentsResult":Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;
    .end local v9    # "driveFileResult":Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;
    .end local v11    # "exportedFile":Ljava/io/File;
    .end local v12    # "exportedFilePath":Ljava/lang/String;
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v17    # "outputStream":Ljava/io/OutputStream;
    :cond_3
    return-void
.end method

.method private moveExportToOwnCloud()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gnucash/android/export/Exporter$ExporterException;
        }
    .end annotation

    .prologue
    .line 377
    const-string v14, "ExportAsyncTask"

    const-string v15, "Copying exported file to ownCloud"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v16, 0x7f0f014e

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 381
    .local v9, "mPrefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v15, 0x7f0f0152

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 383
    .local v7, "mOC_sync":Ljava/lang/Boolean;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    .line 384
    new-instance v14, Lorg/gnucash/android/export/Exporter$ExporterException;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    const-string v16, "ownCloud not enabled."

    invoke-direct/range {v14 .. v16}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/String;)V

    throw v14

    .line 387
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v15, 0x7f0f00b2

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, "mOC_server":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v15, 0x7f0f00b4

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 389
    .local v8, "mOC_username":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v15, 0x7f0f00b1

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, "mOC_password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v15, 0x7f0f00b0

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, "mOC_dir":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 393
    .local v13, "serverUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/owncloud/android/lib/common/OwnCloudClientFactory;->createOwnCloudClient(Landroid/net/Uri;Landroid/content/Context;Z)Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v3

    .line 395
    .local v3, "mClient":Lcom/owncloud/android/lib/common/OwnCloudClient;
    invoke-static {v8, v5}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->newBasicCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v14

    .line 394
    invoke-virtual {v3, v14}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setCredentials(Lcom/owncloud/android/lib/common/OwnCloudCredentials;)V

    .line 398
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_1

    .line 399
    new-instance v14, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;

    const/4 v15, 0x1

    invoke-direct {v14, v4, v15}, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;-><init>(Ljava/lang/String;Z)V

    .line 400
    invoke-virtual {v14, v3}, Lcom/owncloud/android/lib/resources/files/CreateRemoteFolderOperation;->execute(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v1

    .line 401
    .local v1, "dirResult":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    invoke-virtual {v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v14

    if-nez v14, :cond_1

    .line 402
    const-string v14, "ExportAsyncTask"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error creating folder (it may happen if it already exists): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 403
    invoke-virtual {v1}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 402
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v1    # "dirResult":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportedFiles:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 407
    .local v2, "exportedFilePath":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/gnucash/android/export/ExportAsyncTask;->stripPathPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 408
    .local v11, "remotePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mExporter:Lorg/gnucash/android/export/Exporter;

    invoke-virtual {v15}, Lorg/gnucash/android/export/Exporter;->getExportMimeType()Ljava/lang/String;

    move-result-object v10

    .line 410
    .local v10, "mimeType":Ljava/lang/String;
    new-instance v15, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;

    .line 412
    invoke-static {v2}, Lorg/gnucash/android/export/ExportAsyncTask;->getFileLastModifiedTimestamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v2, v11, v10, v0}, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v15, v3}, Lcom/owncloud/android/lib/resources/files/UploadRemoteFileOperation;->execute(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    move-result-object v12

    .line 414
    .local v12, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    invoke-virtual {v12}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v15

    if-nez v15, :cond_2

    .line 415
    new-instance v14, Lorg/gnucash/android/export/Exporter$ExporterException;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-virtual {v12}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/String;)V

    throw v14

    .line 417
    :cond_2
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 419
    .end local v2    # "exportedFilePath":Ljava/lang/String;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "remotePath":Ljava/lang/String;
    .end local v12    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :cond_3
    return-void
.end method

.method private moveExportToSDCard()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gnucash/android/export/Exporter$ExporterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 434
    const-string v4, "ExportAsyncTask"

    const-string v5, "Moving exported file to external storage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExporter:Lorg/gnucash/android/export/Exporter;

    iget-object v5, v5, Lorg/gnucash/android/export/Exporter;->mBookUID:Ljava/lang/String;

    invoke-static {v5}, Lorg/gnucash/android/export/Exporter;->getExportFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v1, "dstFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 439
    .local v3, "src":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExporter:Lorg/gnucash/android/export/Exporter;

    iget-object v6, v6, Lorg/gnucash/android/export/Exporter;->mBookUID:Ljava/lang/String;

    invoke-static {v6}, Lorg/gnucash/android/export/Exporter;->getExportFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Lorg/gnucash/android/export/ExportAsyncTask;->stripPathPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "dst":Ljava/lang/String;
    :try_start_0
    invoke-static {v3, v0}, Lorg/gnucash/android/util/FileUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v2

    .line 444
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v5, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-direct {v4, v5, v2}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v4

    .line 448
    .end local v0    # "dst":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "src":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private moveExportToUri()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gnucash/android/export/Exporter$ExporterException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v3, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-virtual {v3}, Lorg/gnucash/android/export/ExportParams;->getExportLocation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 279
    .local v1, "exportUri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 280
    const-string v3, "ExportAsyncTask"

    const-string v4, "No URI found for export destination"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v3, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportedFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 286
    :try_start_0
    iget-object v3, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 288
    .local v2, "outputStream":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportedFiles:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/gnucash/android/util/FileUtils;->moveFile(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "ex":Ljava/io/IOException;
    new-instance v3, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v4, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    const-string v5, "Error when moving file to URI"

    invoke-direct {v3, v4, v5}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/String;)V

    throw v3
.end method

.method private moveToTarget()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gnucash/android/export/Exporter$ExporterException;
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportParams$ExportTarget:[I

    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportParams;->getExportTarget()Lorg/gnucash/android/export/ExportParams$ExportTarget;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 268
    new-instance v0, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    const-string v2, "Invalid target"

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/String;)V

    throw v0

    .line 244
    :pswitch_0
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportedFiles:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/gnucash/android/export/ExportAsyncTask;->shareFiles(Ljava/util/List;)V

    .line 270
    :goto_0
    return-void

    .line 248
    :pswitch_1
    invoke-direct {p0}, Lorg/gnucash/android/export/ExportAsyncTask;->moveExportToDropbox()V

    goto :goto_0

    .line 252
    :pswitch_2
    invoke-direct {p0}, Lorg/gnucash/android/export/ExportAsyncTask;->moveExportToGoogleDrive()V

    goto :goto_0

    .line 256
    :pswitch_3
    invoke-direct {p0}, Lorg/gnucash/android/export/ExportAsyncTask;->moveExportToOwnCloud()V

    goto :goto_0

    .line 260
    :pswitch_4
    invoke-direct {p0}, Lorg/gnucash/android/export/ExportAsyncTask;->moveExportToSDCard()Ljava/util/List;

    goto :goto_0

    .line 264
    :pswitch_5
    invoke-direct {p0}, Lorg/gnucash/android/export/ExportAsyncTask;->moveExportToUri()V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private refreshViews()V
    .locals 2

    .prologue
    .line 567
    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lorg/gnucash/android/ui/account/AccountsActivity;

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    check-cast v1, Lorg/gnucash/android/ui/account/AccountsActivity;

    .line 569
    invoke-virtual {v1}, Lorg/gnucash/android/ui/account/AccountsActivity;->getCurrentAccountListFragment()Lorg/gnucash/android/ui/account/AccountsListFragment;

    move-result-object v0

    .line 570
    .local v0, "fragment":Lorg/gnucash/android/ui/account/AccountsListFragment;
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Lorg/gnucash/android/ui/account/AccountsListFragment;->refresh()V

    .line 573
    .end local v0    # "fragment":Lorg/gnucash/android/ui/account/AccountsListFragment;
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    check-cast v1, Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->refresh()V

    .line 576
    :cond_1
    return-void
.end method

.method private reportSuccess()V
    .locals 7

    .prologue
    const v4, 0x7f0f014e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 535
    sget-object v1, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportParams$ExportTarget:[I

    iget-object v2, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-virtual {v2}, Lorg/gnucash/android/export/ExportParams;->getExportTarget()Lorg/gnucash/android/export/ExportParams$ExportTarget;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 559
    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0f00de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "targetLocation":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0f01fa

    .line 562
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 561
    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 563
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 564
    return-void

    .line 537
    .end local v0    # "targetLocation":Ljava/lang/String;
    :pswitch_0
    const-string v0, "SD card"

    .line 538
    .restart local v0    # "targetLocation":Ljava/lang/String;
    goto :goto_0

    .line 540
    .end local v0    # "targetLocation":Ljava/lang/String;
    :pswitch_1
    const-string v0, "DropBox -> Apps -> GnuCash"

    .line 541
    .restart local v0    # "targetLocation":Ljava/lang/String;
    goto :goto_0

    .line 543
    .end local v0    # "targetLocation":Ljava/lang/String;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google Drive -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0025

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    .restart local v0    # "targetLocation":Ljava/lang/String;
    goto :goto_0

    .line 546
    .end local v0    # "targetLocation":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    .line 547
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0152

    .line 549
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 548
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ownCloud -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    .line 553
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 552
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v4, 0x7f0f00b0

    .line 555
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 554
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    .restart local v0    # "targetLocation":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 554
    .end local v0    # "targetLocation":Ljava/lang/String;
    :cond_0
    const-string v0, "ownCloud sync not enabled"

    goto :goto_1

    .line 535
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private shareFiles(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 483
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v5, "shareIntent":Landroid/content/Intent;
    const-string v6, "text/xml"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-direct {p0, p1}, Lorg/gnucash/android/export/ExportAsyncTask;->convertFilePathsToUris(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 487
    .local v2, "exportFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 488
    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 490
    const-string v6, "android.intent.extra.SUBJECT"

    iget-object v7, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v8, 0x7f0f01c3

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    .line 491
    invoke-virtual {v10}, Lorg/gnucash/android/export/ExportParams;->getExportFormat()Lorg/gnucash/android/export/ExportFormat;

    move-result-object v10

    invoke-virtual {v10}, Lorg/gnucash/android/export/ExportFormat;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 490
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    iget-object v6, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iget-object v7, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v8, 0x7f0f009f

    .line 494
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "defaultEmail":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 496
    const-string v6, "android.intent.extra.EMAIL"

    new-array v7, v11, [Ljava/lang/String;

    aput-object v1, v7, v12

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    :cond_0
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    check-cast v4, Ljava/text/SimpleDateFormat;

    .line 499
    .local v4, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v8, 0x7f0f005b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "extraText":Ljava/lang/String;
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    iget-object v6, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_1

    .line 504
    iget-object v6, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 505
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 506
    iget-object v6, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v8, 0x7f0f01df

    .line 507
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 506
    invoke-static {v5, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 513
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_0
    return-void

    .line 509
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    iget-object v6, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0200

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 510
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private stripPathPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fullPathName"    # Ljava/lang/String;

    .prologue
    .line 453
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Lorg/gnucash/android/export/ExportParams;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Lorg/gnucash/android/export/ExportParams;

    .prologue
    const/4 v5, 0x0

    .line 140
    aget-object v1, p1, v5

    iput-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    .line 141
    invoke-direct {p0}, Lorg/gnucash/android/export/ExportAsyncTask;->getExporter()Lorg/gnucash/android/export/Exporter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExporter:Lorg/gnucash/android/export/Exporter;

    .line 144
    :try_start_0
    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExporter:Lorg/gnucash/android/export/Exporter;

    invoke-virtual {v1}, Lorg/gnucash/android/export/Exporter;->generateExport()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportedFiles:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportedFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 173
    :goto_0
    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ExportAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error exporting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lorg/gnucash/android/export/ExportAsyncTask$1;

    invoke-direct {v2, p0, v0}, Lorg/gnucash/android/export/ExportAsyncTask$1;-><init>(Lorg/gnucash/android/export/ExportAsyncTask;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/gnucash/android/export/ExportAsyncTask;->moveToTarget()V
    :try_end_1
    .catch Lorg/gnucash/android/export/Exporter$ExporterException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    .local v0, "e":Lorg/gnucash/android/export/Exporter$ExporterException;
    const/4 v1, 0x6

    const-string v2, "ExportAsyncTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending exported files to target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/gnucash/android/export/Exporter$ExporterException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/Crashlytics;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    check-cast p1, [Lorg/gnucash/android/export/ExportParams;

    invoke-virtual {p0, p1}, Lorg/gnucash/android/export/ExportAsyncTask;->doInBackground([Lorg/gnucash/android/export/ExportParams;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "exportSuccessful"    # Ljava/lang/Boolean;

    .prologue
    const/4 v6, 0x1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lorg/gnucash/android/export/ExportAsyncTask;->reportSuccess()V

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-virtual {v0}, Lorg/gnucash/android/export/ExportParams;->shouldDeleteTransactionsAfterExport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-direct {p0}, Lorg/gnucash/android/export/ExportAsyncTask;->backupAndDeleteTransactions()V

    .line 189
    invoke-direct {p0}, Lorg/gnucash/android/export/ExportAsyncTask;->refreshViews()V

    .line 206
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/gnucash/android/export/ExportAsyncTask;->dismissProgressDialog()V

    .line 207
    return-void

    .line 192
    :cond_2
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 193
    invoke-direct {p0}, Lorg/gnucash/android/export/ExportAsyncTask;->dismissProgressDialog()V

    .line 194
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0201

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0f01f9

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    .line 200
    invoke-virtual {v5}, Lorg/gnucash/android/export/ExportParams;->getExportFormat()Lorg/gnucash/android/export/ExportFormat;

    move-result-object v5

    invoke-virtual {v5}, Lorg/gnucash/android/export/ExportFormat;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/gnucash/android/export/ExportAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 120
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 121
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 123
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0f01d1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 124
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 125
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 126
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    .line 129
    iget-object v0, p0, Lorg/gnucash/android/export/ExportAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 131
    :cond_0
    return-void
.end method
