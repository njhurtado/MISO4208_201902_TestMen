.class public Lorg/gnucash/android/util/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# static fields
.field public static final KEY_BACKUP_FILE:Ljava/lang/String; = "book_backup_file_key"

.field private static final LOG_TAG:Ljava/lang/String; = "BackupManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupActiveBook()Z
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/gnucash/android/util/BackupManager;->backupBook(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static backupAllBooks()V
    .locals 15

    .prologue
    .line 64
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v3

    .line 65
    .local v3, "booksDbAdapter":Lorg/gnucash/android/db/adapter/BooksDbAdapter;
    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getAllBookUIDs()Ljava/util/List;

    move-result-object v2

    .line 66
    .local v2, "bookUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    .line 68
    .local v5, "context":Landroid/content/Context;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .local v1, "bookUID":Ljava/lang/String;
    invoke-static {v1}, Lorg/gnucash/android/util/BackupManager;->getBookBackupFileUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "backupFile":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 71
    invoke-static {v1}, Lorg/gnucash/android/util/BackupManager;->backupBook(Ljava/lang/String;)Z

    goto :goto_0

    .line 75
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 76
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .local v4, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    const/4 v11, 0x0

    .line 77
    :try_start_1
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    .local v7, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 79
    .local v9, "writer":Ljava/io/OutputStreamWriter;
    new-instance v8, Lorg/gnucash/android/export/ExportParams;

    sget-object v10, Lorg/gnucash/android/export/ExportFormat;->XML:Lorg/gnucash/android/export/ExportFormat;

    invoke-direct {v8, v10}, Lorg/gnucash/android/export/ExportParams;-><init>(Lorg/gnucash/android/export/ExportFormat;)V

    .line 80
    .local v8, "params":Lorg/gnucash/android/export/ExportParams;
    new-instance v10, Lorg/gnucash/android/export/xml/GncXmlExporter;

    invoke-direct {v10, v8}, Lorg/gnucash/android/export/xml/GncXmlExporter;-><init>(Lorg/gnucash/android/export/ExportParams;)V

    invoke-virtual {v10, v9}, Lorg/gnucash/android/export/xml/GncXmlExporter;->generateExport(Ljava/io/Writer;)V

    .line 81
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    if-eqz v4, :cond_0

    if-eqz v11, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_3
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v7    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v8    # "params":Lorg/gnucash/android/export/ExportParams;
    .end local v9    # "writer":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v6

    .line 83
    .local v6, "ex":Ljava/io/IOException;
    const-string v10, "BackupManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Auto backup failed for book "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    invoke-static {v6}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "params":Lorg/gnucash/android/export/ExportParams;
    .restart local v9    # "writer":Ljava/io/OutputStreamWriter;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 75
    .end local v7    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v8    # "params":Lorg/gnucash/android/export/ExportParams;
    .end local v9    # "writer":Ljava/io/OutputStreamWriter;
    :catch_2
    move-exception v10

    :try_start_5
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    :catchall_0
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v11, :cond_4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v10

    :catch_3
    move-exception v13

    invoke-virtual {v11, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 88
    .end local v0    # "backupFile":Ljava/lang/String;
    .end local v1    # "bookUID":Ljava/lang/String;
    .end local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    :cond_5
    return-void

    .line 82
    .restart local v0    # "backupFile":Ljava/lang/String;
    .restart local v1    # "bookUID":Ljava/lang/String;
    .restart local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v10

    goto :goto_1
.end method

.method public static backupBook(Ljava/lang/String;)Z
    .locals 9
    .param p0, "bookUID"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0}, Lorg/gnucash/android/util/BackupManager;->getBookBackupFileUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "backupFile":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 117
    .local v4, "outputStream":Ljava/io/OutputStream;
    :goto_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 118
    .local v1, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 119
    .local v3, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 121
    .local v6, "writer":Ljava/io/OutputStreamWriter;
    new-instance v5, Lorg/gnucash/android/export/ExportParams;

    sget-object v7, Lorg/gnucash/android/export/ExportFormat;->XML:Lorg/gnucash/android/export/ExportFormat;

    invoke-direct {v5, v7}, Lorg/gnucash/android/export/ExportParams;-><init>(Lorg/gnucash/android/export/ExportFormat;)V

    .line 122
    .local v5, "params":Lorg/gnucash/android/export/ExportParams;
    new-instance v7, Lorg/gnucash/android/export/xml/GncXmlExporter;

    invoke-direct {v7, v5}, Lorg/gnucash/android/export/xml/GncXmlExporter;-><init>(Lorg/gnucash/android/export/ExportParams;)V

    invoke-virtual {v7, v6}, Lorg/gnucash/android/export/xml/GncXmlExporter;->generateExport(Ljava/io/Writer;)V

    .line 123
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    .line 124
    const/4 v7, 0x1

    .line 128
    .end local v0    # "backupFile":Ljava/lang/String;
    .end local v1    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v3    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "params":Lorg/gnucash/android/export/ExportParams;
    .end local v6    # "writer":Ljava/io/OutputStreamWriter;
    :goto_1
    return v7

    .line 113
    .restart local v0    # "backupFile":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lorg/gnucash/android/util/BackupManager;->getBackupFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/gnucash/android/export/Exporter$ExporterException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 125
    .end local v0    # "backupFile":Ljava/lang/String;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 127
    const-string v7, "GncXmlExporter"

    const-string v8, "Error creating XML  backup"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    const/4 v7, 0x0

    goto :goto_1

    .line 125
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private static getBackupFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bookUID"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Book;

    .line 141
    .local v0, "book":Lorg/gnucash/android/model/Book;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/gnucash/android/model/Book;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/gnucash/android/util/BackupManager;->getBackupFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/gnucash/android/export/ExportFormat;->XML:Lorg/gnucash/android/export/ExportFormat;

    .line 142
    invoke-virtual {v0}, Lorg/gnucash/android/model/Book;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gnucash/android/export/Exporter;->buildExportFilename(Lorg/gnucash/android/export/ExportFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    return-object v1
.end method

.method private static getBackupFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "bookUID"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 154
    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "baseFolderPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/backups/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 160
    :cond_0
    return-object v2
.end method

.method public static getBackupList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "bookUID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lorg/gnucash/android/util/BackupManager;->getBackupFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 176
    .local v0, "backupFiles":[Ljava/io/File;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 177
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 178
    .local v1, "backupFilesList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 179
    return-object v1
.end method

.method public static getBookBackupFileUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "bookUID"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 170
    invoke-static {p0}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getBookSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 171
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "book_backup_file_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static schedulePeriodicBackups(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const-string v1, "BackupManager"

    const-string v2, "Scheduling backup job"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lorg/gnucash/android/receivers/PeriodicJobReceiver;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "org.gnucash.android.action_backup"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 188
    .local v6, "alarmIntent":Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 189
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v1, 0x2

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    .line 189
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 192
    return-void
.end method
