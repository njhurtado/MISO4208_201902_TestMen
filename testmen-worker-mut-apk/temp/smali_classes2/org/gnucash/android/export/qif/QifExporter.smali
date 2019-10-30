.class public Lorg/gnucash/android/export/qif/QifExporter;
.super Lorg/gnucash/android/export/Exporter;
.source "QifExporter.java"


# direct methods
.method public constructor <init>(Lorg/gnucash/android/export/ExportParams;)V
    .locals 1
    .param p1, "params"    # Lorg/gnucash/android/export/ExportParams;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/export/Exporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    const-string v0, "QifExporter"

    sput-object v0, Lorg/gnucash/android/export/qif/QifExporter;->LOG_TAG:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "params"    # Lorg/gnucash/android/export/ExportParams;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/export/Exporter;-><init>(Lorg/gnucash/android/export/ExportParams;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    const-string v0, "QifExporter"

    sput-object v0, Lorg/gnucash/android/export/qif/QifExporter;->LOG_TAG:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private splitQIF(Ljava/io/File;)Ljava/util/List;
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "(?=\\.[^\\.]+$)"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, "pathParts":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v7, "splitFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 287
    .local v1, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .local v4, "out":Ljava/io/BufferedWriter;
    move-object v5, v4

    .line 289
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v5, "out":Ljava/io/BufferedWriter;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 290
    const-string v8, "*"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 291
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "currencyCode":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 293
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 295
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "newFileName":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .end local v5    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    move-object v5, v4

    .line 298
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "out":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 299
    .end local v0    # "currencyCode":Ljava/lang/String;
    .end local v3    # "newFileName":Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_3

    .line 300
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " format is not correct"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 307
    if-eqz v5, :cond_2

    .line 308
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v8

    .line 302
    .restart local v2    # "line":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 306
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 307
    if-eqz v5, :cond_5

    .line 308
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 311
    :cond_5
    return-object v7
.end method

.method private zipQifs(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "exportedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/gnucash/android/export/qif/QifExporter;->getExportCacheFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "zipFileName":Ljava/lang/String;
    invoke-static {p1, v0}, Lorg/gnucash/android/util/FileUtils;->zipFiles(Ljava/util/List;Ljava/lang/String;)V

    .line 271
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public generateExport()Ljava/util/List;
    .locals 36
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
    .line 80
    const-string v20, "\n"

    .line 81
    .local v20, "newLine":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/qif/QifExporter;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-object/from16 v29, v0

    .line 83
    .local v29, "transactionsDbAdapter":Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/qif/QifExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/gnucash/android/export/ExportParams;->getExportStartTime()Ljava/sql/Timestamp;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lorg/gnucash/android/util/TimestampHelper;->getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v17

    .line 84
    .local v17, "lastExportTimeStamp":Ljava/lang/String;
    const/16 v31, 0xf

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "transactions_uid AS trans_uid"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string v33, "transactions_timestamp AS trans_time"

    aput-object v33, v31, v32

    const/16 v32, 0x2

    const-string v33, "transactions_name AS trans_desc"

    aput-object v33, v31, v32

    const/16 v32, 0x3

    const-string v33, "transactions_description AS trans_notes"

    aput-object v33, v31, v32

    const/16 v32, 0x4

    const-string v33, "splits_quantity_num AS split_quantity_num"

    aput-object v33, v31, v32

    const/16 v32, 0x5

    const-string v33, "splits_quantity_denom AS split_quantity_denom"

    aput-object v33, v31, v32

    const/16 v32, 0x6

    const-string v33, "splits_type AS split_type"

    aput-object v33, v31, v32

    const/16 v32, 0x7

    const-string v33, "splits_memo AS split_memo"

    aput-object v33, v31, v32

    const/16 v32, 0x8

    const-string v33, "trans_extra_info.trans_acct_balance AS trans_acct_balance"

    aput-object v33, v31, v32

    const/16 v32, 0x9

    const-string v33, "trans_extra_info.trans_split_count AS trans_split_count"

    aput-object v33, v31, v32

    const/16 v32, 0xa

    const-string v33, "account1.uid AS acct1_uid"

    aput-object v33, v31, v32

    const/16 v32, 0xb

    const-string v33, "account1.full_name AS acct1_full_name"

    aput-object v33, v31, v32

    const/16 v32, 0xc

    const-string v33, "account1.currency_code AS acct1_currency"

    aput-object v33, v31, v32

    const/16 v32, 0xd

    const-string v33, "account1.type AS acct1_type"

    aput-object v33, v31, v32

    const/16 v32, 0xe

    const-string v33, "accounts_full_name AS acct2_full_name"

    aput-object v33, v31, v32

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "transactions_is_template == 0 AND ( accounts_uid != account1.uid OR trans_split_count == 1 )"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " AND transactions_modified_at > \""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const-string v34, "acct1_currency ASC, trans_time ASC, trans_uid ASC"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->fetchTransactionsWithSplitsWithTransactionAccount([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 117
    .local v12, "cursor":Landroid/database/Cursor;
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/export/qif/QifExporter;->getExportCacheFilePath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v16, "file":Ljava/io/File;
    new-instance v30, Ljava/io/BufferedWriter;

    new-instance v31, Ljava/io/OutputStreamWriter;

    new-instance v32, Ljava/io/FileOutputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v33, "UTF-8"

    invoke-direct/range {v31 .. v33}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct/range {v30 .. v31}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v30, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    const-string v10, ""

    .line 122
    .local v10, "currentCurrencyCode":Ljava/lang/String;
    const-string v9, ""

    .line 123
    .local v9, "currentAccountUID":Ljava/lang/String;
    const-string v11, ""

    .line 124
    .local v11, "currentTransactionUID":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v31

    if-eqz v31, :cond_8

    .line 125
    const-string v31, "acct1_currency"

    move-object/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "currencyCode":Ljava/lang/String;
    const-string v31, "acct1_uid"

    move-object/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "accountUID":Ljava/lang/String;
    const-string v31, "trans_uid"

    move-object/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 128
    .local v28, "transactionUID":Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 129
    const-string v31, ""

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1

    .line 130
    const-string v31, "^"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 133
    :cond_1
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_3

    .line 138
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_2

    .line 139
    move-object v10, v8

    .line 140
    const-string v31, "*"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    .line 141
    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    .line 142
    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 145
    :cond_2
    move-object v9, v6

    .line 146
    const-string v31, "!Account"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 147
    const-string v31, "N"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "acct1_full_name"

    .line 148
    move-object/from16 v0, v32

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    .line 149
    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 150
    const-string v31, "^"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 151
    const-string v31, "acct1_type"

    move-object/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lorg/gnucash/android/export/qif/QifHelper;->getQifHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    .line 152
    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 155
    :cond_3
    move-object/from16 v11, v28

    .line 156
    const-string v31, "D"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "trans_time"

    .line 157
    move-object/from16 v0, v32

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Lorg/gnucash/android/export/qif/QifHelper;->formatDate(J)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    .line 158
    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 160
    const-string v31, "P"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "trans_desc"

    .line 161
    move-object/from16 v0, v32

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    .line 162
    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 164
    const-string v31, "M"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "trans_notes"

    .line 165
    move-object/from16 v0, v32

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    .line 166
    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 168
    const-string v31, "trans_acct_balance"

    move-object/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 169
    .local v18, "imbalance":D
    invoke-static/range {v18 .. v19}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v31

    const/16 v32, 0x2

    const/16 v33, 0x4

    invoke-virtual/range {v31 .. v33}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    .line 170
    .local v13, "decimalImbalance":Ljava/math/BigDecimal;
    sget-object v31, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v31

    if-eqz v31, :cond_4

    .line 171
    const-string v31, "S"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "acct1_currency"

    .line 173
    move-object/from16 v0, v32

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/gnucash/android/model/Commodity;->getInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v32

    .line 172
    invoke-static/range {v32 .. v32}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getImbalanceAccountName(Lorg/gnucash/android/model/Commodity;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    .line 175
    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 176
    const-string v31, "$"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    .line 177
    invoke-virtual {v13}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    .line 178
    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 181
    .end local v13    # "decimalImbalance":Ljava/math/BigDecimal;
    .end local v18    # "imbalance":D
    :cond_4
    const-string v31, "trans_split_count"

    move-object/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 188
    const-string v31, "S"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "acct2_full_name"

    .line 189
    move-object/from16 v0, v32

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    .line 190
    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 191
    const-string v31, "split_memo"

    move-object/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 192
    .local v26, "splitMemo":Ljava/lang/String;
    if-eqz v26, :cond_5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_5

    .line 193
    const-string v31, "E"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    .line 194
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    .line 195
    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 197
    :cond_5
    const-string v31, "split_type"

    move-object/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 198
    .local v27, "splitType":Ljava/lang/String;
    const-string v31, "split_quantity_num"

    move-object/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    .line 199
    .local v25, "quantity_num":Ljava/lang/Double;
    const-string v31, "split_quantity_denom"

    move-object/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 200
    .local v24, "quantity_denom":I
    const/16 v22, 0x0

    .line 201
    .local v22, "precision":I
    sparse-switch v24, :sswitch_data_0

    .line 226
    new-instance v31, Lorg/gnucash/android/export/Exporter$ExporterException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/qif/QifExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "split quantity has illegal denominator: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v31 .. v33}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/String;)V

    throw v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .end local v6    # "accountUID":Ljava/lang/String;
    .end local v8    # "currencyCode":Ljava/lang/String;
    .end local v9    # "currentAccountUID":Ljava/lang/String;
    .end local v10    # "currentCurrencyCode":Ljava/lang/String;
    .end local v11    # "currentTransactionUID":Ljava/lang/String;
    .end local v22    # "precision":I
    .end local v24    # "quantity_denom":I
    .end local v25    # "quantity_num":Ljava/lang/Double;
    .end local v26    # "splitMemo":Ljava/lang/String;
    .end local v27    # "splitType":Ljava/lang/String;
    .end local v28    # "transactionUID":Ljava/lang/String;
    :catchall_0
    move-exception v31

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 245
    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedWriter;->close()V

    throw v31
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 262
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v16    # "file":Ljava/io/File;
    .end local v17    # "lastExportTimeStamp":Ljava/lang/String;
    .end local v30    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v14

    .line 263
    .local v14, "e":Ljava/io/IOException;
    new-instance v31, Lorg/gnucash/android/export/Exporter$ExporterException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/export/qif/QifExporter;->mExportParams:Lorg/gnucash/android/export/ExportParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v14}, Lorg/gnucash/android/export/Exporter$ExporterException;-><init>(Lorg/gnucash/android/export/ExportParams;Ljava/lang/Throwable;)V

    throw v31

    .line 205
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v6    # "accountUID":Ljava/lang/String;
    .restart local v8    # "currencyCode":Ljava/lang/String;
    .restart local v9    # "currentAccountUID":Ljava/lang/String;
    .restart local v10    # "currentCurrencyCode":Ljava/lang/String;
    .restart local v11    # "currentTransactionUID":Ljava/lang/String;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "file":Ljava/io/File;
    .restart local v17    # "lastExportTimeStamp":Ljava/lang/String;
    .restart local v22    # "precision":I
    .restart local v24    # "quantity_denom":I
    .restart local v25    # "quantity_num":Ljava/lang/Double;
    .restart local v26    # "splitMemo":Ljava/lang/String;
    .restart local v27    # "splitType":Ljava/lang/String;
    .restart local v28    # "transactionUID":Ljava/lang/String;
    .restart local v30    # "writer":Ljava/io/BufferedWriter;
    :sswitch_0
    const/16 v22, 0x0

    .line 228
    :goto_1
    :sswitch_1
    const-wide/16 v32, 0x0

    :try_start_3
    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    .line 229
    .local v23, "quantity":Ljava/lang/Double;
    if-eqz v24, :cond_6

    .line 230
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v32

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    .line 232
    :cond_6
    const/16 v21, 0x0

    .line 233
    .local v21, "noLocale":Ljava/util/Locale;
    const-string v31, "$"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v32

    const-string v31, "DEBIT"

    .line 234
    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    const-string v31, "-"

    :goto_2
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "%."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "f"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v23, v33, v34

    .line 235
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    .line 236
    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_0

    .line 208
    .end local v21    # "noLocale":Ljava/util/Locale;
    .end local v23    # "quantity":Ljava/lang/Double;
    :sswitch_2
    const/16 v22, 0x1

    .line 209
    goto :goto_1

    .line 211
    :sswitch_3
    const/16 v22, 0x2

    .line 212
    goto :goto_1

    .line 214
    :sswitch_4
    const/16 v22, 0x3

    .line 215
    goto :goto_1

    .line 217
    :sswitch_5
    const/16 v22, 0x4

    .line 218
    goto :goto_1

    .line 220
    :sswitch_6
    const/16 v22, 0x5

    .line 221
    goto/16 :goto_1

    .line 223
    :sswitch_7
    const/16 v22, 0x6

    .line 224
    goto/16 :goto_1

    .line 234
    .restart local v21    # "noLocale":Ljava/util/Locale;
    .restart local v23    # "quantity":Ljava/lang/Double;
    :cond_7
    const-string v31, ""

    goto :goto_2

    .line 238
    .end local v6    # "accountUID":Ljava/lang/String;
    .end local v8    # "currencyCode":Ljava/lang/String;
    .end local v21    # "noLocale":Ljava/util/Locale;
    .end local v22    # "precision":I
    .end local v23    # "quantity":Ljava/lang/Double;
    .end local v24    # "quantity_denom":I
    .end local v25    # "quantity_num":Ljava/lang/Double;
    .end local v26    # "splitMemo":Ljava/lang/String;
    .end local v27    # "splitType":Ljava/lang/String;
    .end local v28    # "transactionUID":Ljava/lang/String;
    :cond_8
    const-string v31, ""

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_9

    .line 240
    const-string v31, "^"

    invoke-virtual/range {v30 .. v31}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v31

    const-string v32, "\n"

    invoke-virtual/range {v31 .. v32}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 242
    :cond_9
    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 245
    invoke-virtual/range {v30 .. v30}, Ljava/io/BufferedWriter;->close()V

    .line 248
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v7, "contentValues":Landroid/content/ContentValues;
    const-string v31, "is_exported"

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v7, v1, v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->updateTransaction(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 253
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromNow()Ljava/sql/Timestamp;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lorg/gnucash/android/util/PreferencesHelper;->setLastExportTime(Ljava/sql/Timestamp;)V

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/gnucash/android/export/qif/QifExporter;->splitQIF(Ljava/io/File;)Ljava/util/List;

    move-result-object v15

    .line 256
    .local v15, "exportedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_b

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 261
    .end local v15    # "exportedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    :goto_3
    return-object v15

    .line 258
    .restart local v15    # "exportedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_a

    .line 259
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/gnucash/android/export/qif/QifExporter;->zipQifs(Ljava/util/List;)Ljava/util/List;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v15

    goto :goto_3

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xa -> :sswitch_2
        0x64 -> :sswitch_3
        0x3e8 -> :sswitch_4
        0x2710 -> :sswitch_5
        0x186a0 -> :sswitch_6
        0xf4240 -> :sswitch_7
    .end sparse-switch
.end method

.method public getExportMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    const-string v0, "text/plain"

    return-object v0
.end method
