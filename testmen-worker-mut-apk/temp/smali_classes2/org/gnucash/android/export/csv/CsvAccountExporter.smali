.class public Lorg/gnucash/android/export/csv/CsvAccountExporter;
.super Lorg/gnucash/android/export/Exporter;
.source "CsvAccountExporter.java"


# instance fields
.field private mCsvSeparator:C


# direct methods
.method public constructor <init>(Lorg/gnucash/android/export/ExportParams;)V
    .locals 1
    .param p1, "params"    # Lorg/gnucash/android/export/ExportParams;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/export/Exporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    invoke-virtual {p1}, Lorg/gnucash/android/export/ExportParams;->getCsvSeparator()C

    move-result v0

    iput-char v0, p0, Lorg/gnucash/android/export/csv/CsvAccountExporter;->mCsvSeparator:C

    .line 48
    const-string v0, "GncXmlExporter"

    sput-object v0, Lorg/gnucash/android/export/csv/CsvAccountExporter;->LOG_TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "params"    # Lorg/gnucash/android/export/ExportParams;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/export/Exporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 59
    invoke-virtual {p1}, Lorg/gnucash/android/export/ExportParams;->getCsvSeparator()C

    move-result v0

    iput-char v0, p0, Lorg/gnucash/android/export/csv/CsvAccountExporter;->mCsvSeparator:C

    .line 60
    const-string v0, "GncXmlExporter"

    sput-object v0, Lorg/gnucash/android/export/csv/CsvAccountExporter;->LOG_TAG:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public generateExport()Ljava/util/List;
    .locals 6
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

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/gnucash/android/export/csv/CsvAccountExporter;->getExportCacheFilePath()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "outputFile":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/gnucash/android/export/csv/CsvWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v5, p0, Lorg/gnucash/android/export/csv/CsvAccountExporter;->mCsvSeparator:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/gnucash/android/export/csv/CsvWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "writer":Lorg/gnucash/android/export/csv/CsvWriter;
    const/4 v4, 0x0

    .line 67
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/gnucash/android/export/csv/CsvAccountExporter;->generateExport(Lorg/gnucash/android/export/csv/CsvWriter;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    if-eqz v2, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lorg/gnucash/android/export/csv/CsvWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    :cond_0
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 68
    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v2    # "writer":Lorg/gnucash/android/export/csv/CsvWriter;
    :catch_1
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/io/IOException;
    const-string v3, "Error exporting CSV"

    invoke-static {v3}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 70
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 71
    new-instance v3, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v4, p0, Lorg/gnucash/android/export/csv/CsvAccountExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-direct {v3, v4, v0}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v3

    .line 68
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "writer":Lorg/gnucash/android/export/csv/CsvWriter;
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Lorg/gnucash/android/export/csv/CsvWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 66
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 68
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v2}, Lorg/gnucash/android/export/csv/CsvWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_1
    :try_start_7
    throw v3

    :catch_3
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lorg/gnucash/android/export/csv/CsvWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public generateExport(Lorg/gnucash/android/export/csv/CsvWriter;)V
    .locals 7
    .param p1, "csvWriter"    # Lorg/gnucash/android/export/csv/CsvWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gnucash/android/export/Exporter$ExporterException;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    iget-object v5, p0, Lorg/gnucash/android/export/csv/CsvAccountExporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 85
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lorg/gnucash/android/export/csv/CsvAccountExporter;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAllRecords()Ljava/util/List;

    move-result-object v1

    .line 87
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Account;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 88
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lorg/gnucash/android/export/csv/CsvWriter;->newLine()V

    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Account;

    .line 93
    .local v0, "account":Lorg/gnucash/android/model/Account;
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/gnucash/android/model/AccountType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 97
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getColorHexString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 100
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 103
    const-string v5, "CURRENCY"

    invoke-virtual {p1, v5}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "T"

    :goto_2
    invoke-virtual {p1, v5}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 106
    const-string v5, "F"

    invoke-virtual {p1, v5}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Lorg/gnucash/android/model/Account;->isPlaceholderAccount()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "T"

    :goto_3
    invoke-virtual {p1, v5}, Lorg/gnucash/android/export/csv/CsvWriter;->writeEndToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 109
    .end local v0    # "account":Lorg/gnucash/android/model/Account;
    .end local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Account;>;"
    .end local v3    # "i":I
    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 111
    new-instance v5, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v6, p0, Lorg/gnucash/android/export/csv/CsvAccountExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-direct {v5, v6, v2}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v5

    .line 104
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "account":Lorg/gnucash/android/model/Account;
    .restart local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Account;>;"
    .restart local v3    # "i":I
    .restart local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    const-string v5, "F"

    goto :goto_2

    .line 107
    :cond_2
    const-string v5, "F"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 113
    .end local v0    # "account":Lorg/gnucash/android/model/Account;
    :cond_3
    return-void
.end method
