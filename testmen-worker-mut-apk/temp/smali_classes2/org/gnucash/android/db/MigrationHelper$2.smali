.class final Lorg/gnucash/android/db/MigrationHelper$2;
.super Ljava/lang/Object;
.source "MigrationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/db/MigrationHelper;->upgradeDbToVersion14(Landroid/database/sqlite/SQLiteDatabase;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1563
    new-instance v4, Ljava/io/File;

    sget-object v6, Lorg/gnucash/android/export/Exporter;->LEGACY_BASE_FOLDER_PATH:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1564
    .local v4, "srcDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    sget-object v6, Lorg/gnucash/android/export/Exporter;->BASE_FOLDER_PATH:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1566
    .local v0, "dstDir":Ljava/io/File;
    :try_start_0
    invoke-static {v4, v0}, Lorg/gnucash/android/db/MigrationHelper;->access$000(Ljava/io/File;Ljava/io/File;)V

    .line 1567
    new-instance v3, Ljava/io/File;

    sget-object v6, Lorg/gnucash/android/export/Exporter;->LEGACY_BASE_FOLDER_PATH:Ljava/lang/String;

    const-string v7, "README.txt"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    .local v3, "readmeFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 1569
    .local v5, "writer":Ljava/io/FileWriter;
    new-instance v5, Ljava/io/FileWriter;

    .end local v5    # "writer":Ljava/io/FileWriter;
    invoke-direct {v5, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1570
    .restart local v5    # "writer":Ljava/io/FileWriter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Backup files have been moved to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nYou can now delete this folder"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {v5}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1581
    .end local v3    # "readmeFile":Ljava/io/File;
    .end local v5    # "writer":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 1573
    :catch_0
    move-exception v1

    .line 1574
    .local v1, "ex":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1575
    const-string v6, "Error moving files from %s to %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1576
    .local v2, "msg":Ljava/lang/String;
    const-string v6, "MigrationHelper"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 1578
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1573
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_1
.end method
