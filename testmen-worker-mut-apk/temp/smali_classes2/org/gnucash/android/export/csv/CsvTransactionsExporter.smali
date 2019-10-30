.class public Lorg/gnucash/android/export/csv/CsvTransactionsExporter;
.super Lorg/gnucash/android/export/Exporter;
.source "CsvTransactionsExporter.java"


# instance fields
.field private dateFormat:Ljava/text/DateFormat;

.field private mCsvSeparator:C


# direct methods
.method public constructor <init>(Lorg/gnucash/android/export/ExportParams;)V
    .locals 3
    .param p1, "params"    # Lorg/gnucash/android/export/ExportParams;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/export/Exporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "YYYY-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->dateFormat:Ljava/text/DateFormat;

    .line 64
    invoke-virtual {p1}, Lorg/gnucash/android/export/ExportParams;->getCsvSeparator()C

    move-result v0

    iput-char v0, p0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mCsvSeparator:C

    .line 65
    const-string v0, "GncXmlExporter"

    sput-object v0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->LOG_TAG:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "params"    # Lorg/gnucash/android/export/ExportParams;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/export/Exporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "YYYY-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->dateFormat:Ljava/text/DateFormat;

    .line 76
    invoke-virtual {p1}, Lorg/gnucash/android/export/ExportParams;->getCsvSeparator()C

    move-result v0

    iput-char v0, p0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mCsvSeparator:C

    .line 77
    const-string v0, "GncXmlExporter"

    sput-object v0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->LOG_TAG:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private generateExport(Lorg/gnucash/android/export/csv/CsvWriter;)V
    .locals 11
    .param p1, "csvWriter"    # Lorg/gnucash/android/export/csv/CsvWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gnucash/android/export/Exporter$ExporterException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    iget-object v6, p0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 141
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 142
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lorg/gnucash/android/export/csv/CsvWriter;->newLine()V

    .line 147
    iget-object v6, p0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    iget-object v7, p0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-virtual {v7}, Lorg/gnucash/android/export/ExportParams;->getExportStartTime()Ljava/sql/Timestamp;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->fetchTransactionsModifiedSince(Ljava/sql/Timestamp;)Landroid/database/Cursor;

    move-result-object v0

    .line 148
    .local v0, "cursor":Landroid/database/Cursor;
    sget-object v6, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Exporting %d transactions to CSV"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    iget-object v6, p0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v6, v0}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Transaction;

    move-result-object v5

    .line 151
    .local v5, "transaction":Lorg/gnucash/android/model/Transaction;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v5}, Lorg/gnucash/android/model/Transaction;->getTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 152
    .local v1, "date":Ljava/util/Date;
    iget-object v6, p0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v6, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v5}, Lorg/gnucash/android/model/Transaction;->getUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 154
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v5}, Lorg/gnucash/android/model/Transaction;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v5}, Lorg/gnucash/android/model/Transaction;->getNote()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CURRENCY::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lorg/gnucash/android/model/Transaction;->getCurrencyCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 160
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 161
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v5}, Lorg/gnucash/android/model/Transaction;->getSplits()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->writeSplitsToCsv(Ljava/util/List;Lorg/gnucash/android/export/csv/CsvWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 166
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "date":Ljava/util/Date;
    .end local v3    # "i":I
    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "transaction":Lorg/gnucash/android/model/Transaction;
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 168
    new-instance v6, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v7, p0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-direct {v6, v7, v2}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v6

    .line 165
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "i":I
    .restart local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromNow()Ljava/sql/Timestamp;

    move-result-object v6

    invoke-static {v6}, Lorg/gnucash/android/util/PreferencesHelper;->setLastExportTime(Ljava/sql/Timestamp;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    return-void
.end method

.method private writeSplitsToCsv(Ljava/util/List;Lorg/gnucash/android/export/csv/CsvWriter;)V
    .locals 16
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "writer"    # Lorg/gnucash/android/export/csv/CsvWriter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Split;",
            ">;",
            "Lorg/gnucash/android/export/csv/CsvWriter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "splits":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Split;>;"
    const/4 v4, 0x0

    .line 102
    .local v4, "index":I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v9, "uidAccountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/gnucash/android/model/Account;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/gnucash/android/model/Split;

    .line 105
    .local v8, "split":Lorg/gnucash/android/model/Split;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    if-lez v4, :cond_0

    .line 106
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-char v12, v0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mCsvSeparator:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-char v12, v0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mCsvSeparator:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-char v12, v0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mCsvSeparator:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-char v12, v0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mCsvSeparator:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-char v12, v0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mCsvSeparator:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-char v12, v0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mCsvSeparator:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-char v12, v0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mCsvSeparator:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-char v12, v0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mCsvSeparator:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/gnucash/android/export/csv/CsvWriter;->write(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-virtual {v8}, Lorg/gnucash/android/model/Split;->getMemo()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v8}, Lorg/gnucash/android/model/Split;->getAccountUID()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "accountUID":Ljava/lang/String;
    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 115
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/model/Account;

    .line 121
    .local v2, "account":Lorg/gnucash/android/model/Account;
    :goto_1
    invoke-virtual {v2}, Lorg/gnucash/android/model/Account;->getFullName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v8}, Lorg/gnucash/android/model/Split;->getType()Lorg/gnucash/android/model/TransactionType;

    move-result-object v11

    sget-object v12, Lorg/gnucash/android/model/TransactionType;->CREDIT:Lorg/gnucash/android/model/TransactionType;

    if-ne v11, v12, :cond_2

    const-string v7, "-"

    .line 125
    .local v7, "sign":Ljava/lang/String;
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lorg/gnucash/android/model/Split;->getQuantity()Lorg/gnucash/android/model/Money;

    move-result-object v12

    invoke-virtual {v12}, Lorg/gnucash/android/model/Money;->formattedString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 126
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lorg/gnucash/android/model/Split;->getQuantity()Lorg/gnucash/android/model/Money;

    move-result-object v12

    invoke-virtual {v12}, Lorg/gnucash/android/model/Money;->toLocaleString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 127
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lorg/gnucash/android/model/Split;->getReconcileState()C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v8}, Lorg/gnucash/android/model/Split;->getReconcileState()C

    move-result v11

    const/16 v12, 0x79

    if-ne v11, v12, :cond_3

    .line 129
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->dateFormat:Ljava/text/DateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-virtual {v8}, Lorg/gnucash/android/model/Split;->getReconcileDate()Ljava/sql/Timestamp;

    move-result-object v13

    invoke-virtual {v13}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v14

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "recDateString":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    .line 134
    .end local v6    # "recDateString":Ljava/lang/String;
    :goto_3
    invoke-virtual {v8}, Lorg/gnucash/android/model/Split;->getQuantity()Lorg/gnucash/android/model/Money;

    move-result-object v11

    invoke-virtual {v8}, Lorg/gnucash/android/model/Split;->getValue()Lorg/gnucash/android/model/Money;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/gnucash/android/model/Money;->divide(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v11

    invoke-virtual {v11}, Lorg/gnucash/android/model/Money;->toLocaleString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/gnucash/android/export/csv/CsvWriter;->writeEndToken(Ljava/lang/String;)V

    move v4, v5

    .line 135
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto/16 :goto_0

    .line 117
    .end local v2    # "account":Lorg/gnucash/android/model/Account;
    .end local v4    # "index":I
    .end local v7    # "sign":Ljava/lang/String;
    .restart local v5    # "index":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v11, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/model/Account;

    .line 118
    .restart local v2    # "account":Lorg/gnucash/android/model/Account;
    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 124
    :cond_2
    const-string v7, ""

    goto/16 :goto_2

    .line 132
    .restart local v7    # "sign":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/gnucash/android/export/csv/CsvWriter;->writeToken(Ljava/lang/String;)V

    goto :goto_3

    .line 136
    .end local v2    # "account":Lorg/gnucash/android/model/Account;
    .end local v3    # "accountUID":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v7    # "sign":Ljava/lang/String;
    .end local v8    # "split":Lorg/gnucash/android/model/Split;
    .restart local v4    # "index":I
    :cond_4
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
    .line 82
    invoke-virtual {p0}, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->getExportCacheFilePath()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "outputFile":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/gnucash/android/export/csv/CsvWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-char v5, p0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mCsvSeparator:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/gnucash/android/export/csv/CsvWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "csvWriter":Lorg/gnucash/android/export/csv/CsvWriter;
    const/4 v4, 0x0

    .line 85
    :try_start_1
    invoke-direct {p0, v0}, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->generateExport(Lorg/gnucash/android/export/csv/CsvWriter;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    if-eqz v0, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lorg/gnucash/android/export/csv/CsvWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    :cond_0
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 86
    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "csvWriter":Lorg/gnucash/android/export/csv/CsvWriter;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "Error exporting CSV"

    invoke-static {v3}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 88
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 89
    new-instance v3, Lorg/gnucash/android/export/Exporter$ExporterException;

    iget-object v4, p0, Lorg/gnucash/android/export/csv/CsvTransactionsExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    invoke-direct {v3, v4, v1}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v3

    .line 86
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "csvWriter":Lorg/gnucash/android/export/csv/CsvWriter;
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Lorg/gnucash/android/export/csv/CsvWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 84
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v0}, Lorg/gnucash/android/export/csv/CsvWriter;->close()V
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
    invoke-virtual {v0}, Lorg/gnucash/android/export/csv/CsvWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method
