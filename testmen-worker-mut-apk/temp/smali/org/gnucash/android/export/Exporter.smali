.class public abstract Lorg/gnucash/android/export/Exporter;
.super Ljava/lang/Object;
.source "Exporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/export/Exporter$ExporterException;
    }
.end annotation


# static fields
.field public static final BASE_FOLDER_PATH:Ljava/lang/String;

.field private static final EXPORT_FILENAME_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final LEGACY_BASE_FOLDER_PATH:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static LOG_TAG:Ljava/lang/String;


# instance fields
.field protected final mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field protected mBookUID:Ljava/lang/String;

.field protected final mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

.field private final mCacheDir:Ljava/io/File;

.field protected final mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

.field protected final mContext:Landroid/content/Context;

.field protected final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mExportCacheFilePath:Ljava/lang/String;

.field protected final mExportParams:Lorg/gnucash/android/export/ExportParams;

.field protected final mPricesDbAdapter:Lorg/gnucash/android/db/adapter/PricesDbAdapter;

.field protected final mScheduledActionDbAdapter:Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

.field protected final mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

.field protected final mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const-string v0, "Exporter"

    sput-object v0, Lorg/gnucash/android/export/Exporter;->LOG_TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "org.gnucash.android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/export/Exporter;->LEGACY_BASE_FOLDER_PATH:Ljava/lang/String;

    .line 72
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/export/Exporter;->BASE_FOLDER_PATH:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/gnucash/android/export/Exporter;->EXPORT_FILENAME_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "params"    # Lorg/gnucash/android/export/ExportParams;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lorg/gnucash/android/export/Exporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    .line 116
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mContext:Landroid/content/Context;

    .line 117
    if-nez p2, :cond_0

    .line 118
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 119
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    .line 120
    invoke-static {}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    .line 121
    invoke-static {}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mPricesDbAdapter:Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    .line 122
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    .line 123
    invoke-static {}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    .line 124
    invoke-static {}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mScheduledActionDbAdapter:Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    .line 125
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getActiveDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 138
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/gnucash/android/export/Exporter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mBookUID:Ljava/lang/String;

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mExportCacheFilePath:Ljava/lang/String;

    .line 140
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/gnucash/android/export/Exporter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Lorg/gnucash/android/export/ExportParams;->getExportFormat()Lorg/gnucash/android/export/ExportFormat;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/export/ExportFormat;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mCacheDir:Ljava/io/File;

    .line 141
    iget-object v1, p0, Lorg/gnucash/android/export/Exporter;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 142
    iget-object v1, p0, Lorg/gnucash/android/export/Exporter;->mCacheDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/gnucash/android/export/Exporter;->purgeDirectory(Ljava/io/File;)V

    .line 143
    return-void

    .line 127
    :cond_0
    iput-object p2, p0, Lorg/gnucash/android/export/Exporter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 128
    new-instance v1, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    invoke-direct {v1, p2}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    .line 129
    new-instance v1, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    iget-object v2, p0, Lorg/gnucash/android/export/Exporter;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    invoke-direct {v1, p2, v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/SplitsDbAdapter;)V

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    .line 130
    new-instance v1, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v2, p0, Lorg/gnucash/android/export/Exporter;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-direct {v1, p2, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;)V

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 131
    new-instance v1, Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    invoke-direct {v1, p2}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mPricesDbAdapter:Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    .line 132
    new-instance v1, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    invoke-direct {v1, p2}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    .line 133
    new-instance v0, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    invoke-direct {v0, p2}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 134
    .local v0, "recurrenceDbAdapter":Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;
    new-instance v1, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    new-instance v2, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

    invoke-direct {v2, p2}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v1, p2, v2, v0}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;)V

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    .line 135
    new-instance v1, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    invoke-direct {v1, p2, v0}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;)V

    iput-object v1, p0, Lorg/gnucash/android/export/Exporter;->mScheduledActionDbAdapter:Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    goto :goto_0
.end method

.method public static buildExportFilename(Lorg/gnucash/android/export/ExportFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "format"    # Lorg/gnucash/android/export/ExportFormat;
    .param p1, "bookName"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/gnucash/android/export/Exporter;->EXPORT_FILENAME_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_gnucash_export_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-static {p1}, Lorg/gnucash/android/export/Exporter;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lorg/gnucash/android/export/ExportFormat;->CSVA:Lorg/gnucash/android/export/ExportFormat;

    if-ne p0, v0, :cond_0

    const-string v0, "_accounts"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lorg/gnucash/android/export/ExportFormat;->CSVT:Lorg/gnucash/android/export/ExportFormat;

    if-ne p0, v0, :cond_1

    const-string v0, "_transactions"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lorg/gnucash/android/export/ExportFormat;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    return-object v0

    .line 163
    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static getExportFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bookUID"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/gnucash/android/export/Exporter;->BASE_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/exports/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 240
    :cond_0
    return-object v1
.end method

.method public static getExportTime(Ljava/lang/String;)J
    .locals 10
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v7, "_"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "tokens":[Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 177
    .local v2, "timeMillis":J
    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    move-wide v4, v2

    .line 187
    .end local v2    # "timeMillis":J
    .local v4, "timeMillis":J
    :goto_0
    return-wide v4

    .line 181
    .end local v4    # "timeMillis":J
    .restart local v2    # "timeMillis":J
    :cond_0
    :try_start_0
    sget-object v7, Lorg/gnucash/android/export/Exporter;->EXPORT_FILENAME_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 182
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .end local v0    # "date":Ljava/util/Date;
    :goto_1
    move-wide v4, v2

    .line 187
    .end local v2    # "timeMillis":J
    .restart local v4    # "timeMillis":J
    goto :goto_0

    .line 183
    .end local v4    # "timeMillis":J
    .restart local v2    # "timeMillis":J
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/text/ParseException;
    const-string v7, "Exporter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing time from file name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private purgeDirectory(Ljava/io/File;)V
    .locals 5
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 202
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    invoke-direct {p0, v0}, Lorg/gnucash/android/export/Exporter;->purgeDirectory(Ljava/io/File;)V

    .line 201
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 207
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public static sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inputName"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, "[^a-zA-Z0-9-_\\.]"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract generateExport()Ljava/util/List;
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
.end method

.method protected getExportCacheFilePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 218
    iget-object v2, p0, Lorg/gnucash/android/export/Exporter;->mExportCacheFilePath:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 219
    iget-object v2, p0, Lorg/gnucash/android/export/Exporter;->mCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "cachePath":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    :cond_0
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/export/Exporter;->mBookUID:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v3, v4}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "bookName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/export/Exporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-virtual {v3}, Lorg/gnucash/android/export/ExportParams;->getExportFormat()Lorg/gnucash/android/export/ExportFormat;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/gnucash/android/export/Exporter;->buildExportFilename(Lorg/gnucash/android/export/ExportFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/export/Exporter;->mExportCacheFilePath:Ljava/lang/String;

    .line 226
    .end local v0    # "bookName":Ljava/lang/String;
    .end local v1    # "cachePath":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/gnucash/android/export/Exporter;->mExportCacheFilePath:Ljava/lang/String;

    return-object v2
.end method

.method public getExportMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string v0, "text/plain"

    return-object v0
.end method
