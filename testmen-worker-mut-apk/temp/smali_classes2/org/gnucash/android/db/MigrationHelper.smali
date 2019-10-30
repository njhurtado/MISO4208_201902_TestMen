.class public Lorg/gnucash/android/db/MigrationHelper;
.super Ljava/lang/Object;
.source "MigrationHelper.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MigrationHelper"

.field static final moveExportedFilesToNewDefaultLocation:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lorg/gnucash/android/db/MigrationHelper$1;

    invoke-direct {v0}, Lorg/gnucash/android/db/MigrationHelper$1;-><init>()V

    sput-object v0, Lorg/gnucash/android/db/MigrationHelper;->moveExportedFilesToNewDefaultLocation:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0, p1}, Lorg/gnucash/android/db/MigrationHelper;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method static getFullyQualifiedAccountName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v1, "accounts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "parent_account_uid"

    aput-object v3, v2, v0

    const-string v3, "uid = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 113
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 114
    .local v13, "parentAccountUID":Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "parent_account_uid"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 116
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_0
    const-string v1, "accounts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "uid = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 125
    const/4 v9, 0x0

    .line 126
    .local v9, "accountName":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "name"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 128
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_1
    invoke-static {p0}, Lorg/gnucash/android/db/MigrationHelper;->getGnuCashRootAccountUID(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v11

    .line 132
    .local v11, "gnucashRootAccountUID":Ljava/lang/String;
    if-eqz v13, :cond_2

    if-eqz v9, :cond_2

    .line 133
    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    .end local v9    # "accountName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v9

    .line 137
    .restart local v9    # "accountName":Ljava/lang/String;
    :cond_3
    invoke-static {p0, v13}, Lorg/gnucash/android/db/MigrationHelper;->getFullyQualifiedAccountName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 139
    .local v12, "parentAccountName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private static getGnuCashRootAccountUID(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v1}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "condition":Ljava/lang/String;
    const-string v1, "accounts"

    const-string v7, "name ASC"

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 156
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 157
    .local v9, "rootUID":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "uid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 159
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_0
    return-object v9
.end method

.method static importCommodities(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 240
    .local v4, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 241
    .local v3, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 243
    .local v5, "xr":Lorg/xml/sax/XMLReader;
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0001

    .line 244
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 245
    .local v1, "commoditiesInputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 249
    .local v0, "bos":Ljava/io/BufferedInputStream;
    new-instance v2, Lorg/gnucash/android/importer/CommoditiesXmlHandler;

    invoke-direct {v2, p0}, Lorg/gnucash/android/importer/CommoditiesXmlHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 251
    .local v2, "handler":Lorg/gnucash/android/importer/CommoditiesXmlHandler;
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 252
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 253
    return-void
.end method

.method private static moveDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "dstDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1505
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1506
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source is not a directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1509
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1510
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Source directory %s does not exist"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1511
    .local v2, "msg":Ljava/lang/String;
    const-string v4, "MigrationHelper"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1515
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1516
    :cond_2
    const-string v5, "MigrationHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target directory does not exist. Attempting to create..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1518
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Target directory %s does not exist and could not be created"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1522
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1543
    :cond_4
    return-void

    .line 1525
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v3, v5, v4

    .line 1526
    .local v3, "src":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1527
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1528
    .local v0, "dst":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1529
    invoke-static {v3, v0}, Lorg/gnucash/android/db/MigrationHelper;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 1530
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1531
    const-string v7, "MigrationHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to delete directory: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    .end local v0    # "dst":Ljava/io/File;
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1536
    :cond_7
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1537
    .restart local v0    # "dst":Ljava/io/File;
    invoke-static {v3, v0}, Lorg/gnucash/android/db/MigrationHelper;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1538
    .end local v0    # "dst":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1539
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "MigrationHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error moving file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 12
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const-string v2, "MigrationHelper"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Moving %s from %s to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 173
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x2

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    .line 172
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 175
    .local v1, "inChannel":Ljava/nio/channels/FileChannel;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 177
    .local v6, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v8

    .line 178
    .local v8, "bytesCopied":J
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-ltz v2, :cond_0

    .line 179
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v7

    .line 180
    .local v7, "result":Z
    if-eqz v7, :cond_2

    const-string v0, "Deleted src file: "

    .line 181
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    const-string v2, "MigrationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .end local v0    # "msg":Ljava/lang/String;
    .end local v7    # "result":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 186
    :cond_1
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 188
    return-void

    .line 180
    .restart local v7    # "result":Z
    :cond_2
    :try_start_1
    const-string v0, "Could not delete src: "
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
    .end local v7    # "result":Z
    .end local v8    # "bytesCopied":J
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 185
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 186
    :cond_3
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    throw v2
.end method

.method private static rescheduleServiceAlarm()V
    .locals 6

    .prologue
    .line 1481
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 1484
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lorg/gnucash/android/service/ScheduledActionService;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1485
    .local v0, "alarmIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    const/high16 v5, 0x20000000

    invoke-static {v2, v4, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1486
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_0

    .line 1487
    const-string v4, "alarm"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1488
    .local v1, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1489
    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V

    .line 1492
    .end local v1    # "alarmManager":Landroid/app/AlarmManager;
    :cond_0
    invoke-static {v2}, Lorg/gnucash/android/app/GnuCashApplication;->startScheduledActionExecutionService(Landroid/content/Context;)V

    .line 1493
    return-void
.end method

.method public static subtractTimeZoneOffset(Ljava/sql/Timestamp;Ljava/util/TimeZone;)Ljava/sql/Timestamp;
    .locals 6
    .param p0, "timestamp"    # Ljava/sql/Timestamp;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 1191
    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v0, v2

    .line 1192
    .local v0, "millisecondsToSubtract":J
    new-instance v2, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-direct {v2, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v2
.end method

.method static upgradeDbToVersion10(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 18
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1095
    sget-object v1, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Upgrading database to version 9"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const/16 v12, 0x9

    .line 1098
    .local v12, "oldVersion":I
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1100
    :try_start_0
    const-string v2, "scheduled_actions"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "uid"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "tag"

    aput-object v4, v3, v1

    const-string v4, "type = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v6, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    .line 1103
    invoke-virtual {v6}, Lorg/gnucash/android/model/ScheduledAction$ActionType;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    .line 1100
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1106
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1107
    .local v9, "contentValues":Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1108
    const-string v1, "tag"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1109
    .local v13, "paramString":Ljava/lang/String;
    const-string v1, ";"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1110
    .local v16, "tokens":[Ljava/lang/String;
    new-instance v14, Lorg/gnucash/android/export/ExportParams;

    const/4 v1, 0x0

    aget-object v1, v16, v1

    invoke-static {v1}, Lorg/gnucash/android/export/ExportFormat;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/export/ExportFormat;

    move-result-object v1

    invoke-direct {v14, v1}, Lorg/gnucash/android/export/ExportParams;-><init>(Lorg/gnucash/android/export/ExportFormat;)V

    .line 1111
    .local v14, "params":Lorg/gnucash/android/export/ExportParams;
    const/4 v1, 0x1

    aget-object v1, v16, v1

    invoke-static {v1}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/export/ExportParams$ExportTarget;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/gnucash/android/export/ExportParams;->setExportTarget(Lorg/gnucash/android/export/ExportParams$ExportTarget;)V

    .line 1112
    const/4 v1, 0x3

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v14, v1}, Lorg/gnucash/android/export/ExportParams;->setDeleteTransactionsAfterExport(Z)V

    .line 1114
    const/4 v1, 0x2

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1115
    .local v11, "exportAll":Z
    if-eqz v11, :cond_0

    .line 1116
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromEpochZero()Ljava/sql/Timestamp;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/gnucash/android/export/ExportParams;->setExportStartTime(Ljava/sql/Timestamp;)V

    .line 1122
    :goto_1
    const-string v1, "uid"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1123
    .local v17, "uid":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 1124
    const-string v1, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v1, "tag"

    invoke-virtual {v14}, Lorg/gnucash/android/export/ExportParams;->toCsv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v1, "scheduled_actions"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1134
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "exportAll":Z
    .end local v13    # "paramString":Ljava/lang/String;
    .end local v14    # "params":Lorg/gnucash/android/export/ExportParams;
    .end local v16    # "tokens":[Ljava/lang/String;
    .end local v17    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1118
    .restart local v9    # "contentValues":Landroid/content/ContentValues;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "exportAll":Z
    .restart local v13    # "paramString":Ljava/lang/String;
    .restart local v14    # "params":Lorg/gnucash/android/export/ExportParams;
    .restart local v16    # "tokens":[Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/gnucash/android/util/PreferencesHelper;->getLastExportTime()Ljava/sql/Timestamp;

    move-result-object v15

    .line 1119
    .local v15, "timestamp":Ljava/sql/Timestamp;
    invoke-virtual {v14, v15}, Lorg/gnucash/android/export/ExportParams;->setExportStartTime(Ljava/sql/Timestamp;)V

    goto :goto_1

    .line 1129
    .end local v11    # "exportAll":Z
    .end local v13    # "paramString":Ljava/lang/String;
    .end local v14    # "params":Lorg/gnucash/android/export/ExportParams;
    .end local v15    # "timestamp":Ljava/sql/Timestamp;
    .end local v16    # "tokens":[Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1131
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1132
    const/16 v12, 0xa

    .line 1134
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1136
    return v12
.end method

.method static upgradeDbToVersion11(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 19
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1148
    sget-object v2, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Upgrading database to version 9"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const/16 v14, 0xa

    .line 1151
    .local v14, "oldVersion":I
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1153
    :try_start_0
    const-string v3, "scheduled_actions"

    const/4 v4, 0x0

    const-string v5, "type= ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v7, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    .line 1155
    invoke-virtual {v7}, Lorg/gnucash/android/model/ScheduledAction$ActionType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    .line 1153
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1157
    .local v11, "cursor":Landroid/database/Cursor;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1158
    .local v18, "uidToTagMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1159
    const-string v2, "uid"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1160
    .local v17, "uid":Ljava/lang/String;
    const-string v2, "tag"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1161
    .local v15, "tag":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 1163
    .local v16, "tokens":[Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_1
    aget-object v2, v16, v2

    invoke-static {v2}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromUtcString(Ljava/lang/String;)Ljava/sql/Timestamp;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1167
    :try_start_2
    const-string v2, ";"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1169
    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1185
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "tokens":[Ljava/lang/String;
    .end local v17    # "uid":Ljava/lang/String;
    .end local v18    # "uidToTagMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 1164
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "tag":Ljava/lang/String;
    .restart local v16    # "tokens":[Ljava/lang/String;
    .restart local v17    # "uid":Ljava/lang/String;
    .restart local v18    # "uidToTagMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v13

    .line 1165
    .local v13, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x2

    :try_start_3
    invoke-static {}, Lorg/gnucash/android/util/PreferencesHelper;->getLastExportTime()Ljava/sql/Timestamp;

    move-result-object v3

    invoke-static {v3}, Lorg/gnucash/android/util/TimestampHelper;->getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1167
    :try_start_4
    const-string v2, ";"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1168
    goto :goto_1

    .line 1167
    .end local v13    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v2

    const-string v3, ";"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    throw v2

    .line 1172
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "tokens":[Ljava/lang/String;
    .end local v17    # "uid":Ljava/lang/String;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1174
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1175
    .local v10, "contentValues":Landroid/content/ContentValues;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1176
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 1177
    const-string v4, "tag"

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const-string v4, "scheduled_actions"

    const-string v5, "uid = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1179
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v6, v7

    .line 1178
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 1182
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1183
    const/16 v14, 0xb

    .line 1185
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1187
    return v14
.end method

.method static upgradeDbToVersion12(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1206
    const-string v3, "MigrationHelper"

    const-string v4, "Upgrading database to version 12"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const/16 v1, 0xb

    .line 1212
    .local v1, "oldVersion":I
    :try_start_0
    invoke-static {}, Lorg/gnucash/android/util/PreferencesHelper;->getLastExportTime()Ljava/sql/Timestamp;

    move-result-object v0

    .line 1215
    .local v0, "currentLastExportTime":Ljava/sql/Timestamp;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 1214
    invoke-static {v0, v3}, Lorg/gnucash/android/db/MigrationHelper;->subtractTimeZoneOffset(Ljava/sql/Timestamp;Ljava/util/TimeZone;)Ljava/sql/Timestamp;

    move-result-object v2

    .line 1216
    .local v2, "updatedLastExportTime":Ljava/sql/Timestamp;
    invoke-static {v2}, Lorg/gnucash/android/util/PreferencesHelper;->setLastExportTime(Ljava/sql/Timestamp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    const/16 v1, 0xc

    .line 1224
    .end local v0    # "currentLastExportTime":Ljava/sql/Timestamp;
    .end local v2    # "updatedLastExportTime":Ljava/sql/Timestamp;
    :goto_0
    return v1

    .line 1220
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static upgradeDbToVersion13(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 31
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1244
    sget-object v2, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Upgrading database to version 13"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const/16 v19, 0xc

    .line 1247
    .local v19, "oldVersion":I
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1249
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE recurrences (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, recurrence_mult integer not null default 1, recurrence_period_type varchar(255) not null, recurrence_byday varchar(255), recurrence_period_start timestamp not null, recurrence_period_end timestamp, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP); "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recurrences"

    .line 1259
    invoke-static {v3}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1249
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE budgets (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, name varchar(255) not null, description varchar(255), recurrence_uid varchar(255) not null, num_periods integer, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (recurrence_uid) REFERENCES recurrences (uid) );"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "budgets"

    .line 1271
    invoke-static {v3}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1261
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1273
    const-string v2, "CREATE UNIQUE INDEX \'budgets_uid_index\' ON budgets(uid)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE budget_amounts (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, budget_uid varchar(255) not null, account_uid varchar(255) not null, amount_num integer not null, amount_denom integer not null, period_num integer not null, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (account_uid) REFERENCES accounts (uid) ON DELETE CASCADE, FOREIGN KEY (budget_uid) REFERENCES budgets (uid) ON DELETE CASCADE );"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "budget_amounts"

    .line 1288
    invoke-static {v3}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1276
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1290
    const-string v2, "CREATE UNIQUE INDEX \'budget_amounts_uid_index\' ON budget_amounts(uid)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1295
    const-string v2, "ALTER TABLE scheduled_actions RENAME TO scheduled_actions_bak"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE scheduled_actions (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, action_uid varchar(255) not null, type varchar(255) not null, recurrence_uid varchar(255) not null, template_act_uid varchar(255) not null, last_run integer default 0, start_time integer not null, end_time integer default 0, tag text, is_enabled tinyint default 1, auto_create tinyint default 1, auto_notify tinyint default 0, adv_creation integer default 0, adv_notify integer default 0, total_frequency integer default 0, execution_count integer default 0, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (recurrence_uid) REFERENCES recurrences (uid) );"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scheduled_actions"

    .line 1318
    invoke-static {v3}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1297
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1322
    const-string v2, "INSERT INTO scheduled_actions ( _id , uid , action_uid , type , last_run , start_time , end_time , is_enabled , total_frequency , execution_count , created_at , modified_at , recurrence_uid , template_act_uid , tag)  SELECT scheduled_actions_bak._id , scheduled_actions_bak.uid , scheduled_actions_bak.action_uid , scheduled_actions_bak.type , scheduled_actions_bak.last_run , scheduled_actions_bak.start_time , scheduled_actions_bak.end_time , scheduled_actions_bak.is_enabled , scheduled_actions_bak.total_frequency , scheduled_actions_bak.execution_count , scheduled_actions_bak.created_at , scheduled_actions_bak.modified_at ,  \'dummy-string\' , \'dummy-string\' ,scheduled_actions_bak.tag FROM scheduled_actions_bak;"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1357
    const-string v3, "scheduled_actions_bak"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "uid"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "period"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "start_time"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1364
    .local v13, "cursor":Landroid/database/Cursor;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1365
    .local v11, "contentValues":Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1366
    const-string v2, "uid"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1367
    .local v28, "uid":Ljava/lang/String;
    const-string v2, "period"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1368
    .local v20, "period":J
    const-string v2, "start_time"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 1369
    .local v26, "startTime":J
    invoke-static/range {v20 .. v21}, Lorg/gnucash/android/model/Recurrence;->fromLegacyPeriod(J)Lorg/gnucash/android/model/Recurrence;

    move-result-object v22

    .line 1370
    .local v22, "recurrence":Lorg/gnucash/android/model/Recurrence;
    new-instance v2, Ljava/sql/Timestamp;

    move-wide/from16 v0, v26

    invoke-direct {v2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/gnucash/android/model/Recurrence;->setPeriodStart(Ljava/sql/Timestamp;)V

    .line 1372
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1373
    const-string v2, "uid"

    invoke-virtual/range {v22 .. v22}, Lorg/gnucash/android/model/Recurrence;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string v2, "recurrence_mult"

    invoke-virtual/range {v22 .. v22}, Lorg/gnucash/android/model/Recurrence;->getMultiplier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1375
    const-string v2, "recurrence_period_type"

    invoke-virtual/range {v22 .. v22}, Lorg/gnucash/android/model/Recurrence;->getPeriodType()Lorg/gnucash/android/model/PeriodType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/PeriodType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string v2, "recurrence_period_start"

    invoke-virtual/range {v22 .. v22}, Lorg/gnucash/android/model/Recurrence;->getPeriodStart()Ljava/sql/Timestamp;

    move-result-object v3

    invoke-virtual {v3}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    const-string v2, "recurrences"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1379
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1380
    const-string v2, "recurrence_uid"

    invoke-virtual/range {v22 .. v22}, Lorg/gnucash/android/model/Recurrence;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v2, "template_act_uid"

    invoke-static {}, Lorg/gnucash/android/model/BaseModel;->generateUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v2, "scheduled_actions"

    const-string v3, "uid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1443
    .end local v11    # "contentValues":Landroid/content/ContentValues;
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v20    # "period":J
    .end local v22    # "recurrence":Lorg/gnucash/android/model/Recurrence;
    .end local v26    # "startTime":J
    .end local v28    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 1385
    .restart local v11    # "contentValues":Landroid/content/ContentValues;
    .restart local v13    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1387
    const-string v2, "DROP TABLE scheduled_actions_bak"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1393
    const-string v2, "ALTER TABLE splits RENAME TO splits_bak"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE splits (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, memo text, type varchar(255) not null, value_num integer not null, value_denom integer not null, quantity_num integer not null, quantity_denom integer not null, account_uid varchar(255) not null, transaction_uid varchar(255) not null, reconcile_state varchar(1) not null default \'n\', reconcile_date timestamp not null default current_timestamp, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (account_uid) REFERENCES accounts (uid) ON DELETE CASCADE, FOREIGN KEY (transaction_uid) REFERENCES transactions (uid) ON DELETE CASCADE );"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "splits"

    .line 1411
    invoke-static {v3}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1394
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1413
    const-string v2, "INSERT INTO splits ( _id , uid , memo , type , value_num , value_denom , quantity_num , quantity_denom , account_uid , transaction_uid)  SELECT splits_bak._id , splits_bak.uid , splits_bak.memo , splits_bak.type , splits_bak.value_num , splits_bak.value_denom , splits_bak.quantity_num , splits_bak.quantity_denom , splits_bak.account_uid , splits_bak.transaction_uid FROM splits_bak;"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1438
    const-string v2, "DROP TABLE splits_bak"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1440
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1441
    const/16 v19, 0xd

    .line 1443
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1447
    const-string v2, "MigrationHelper"

    const-string v3, "Migrating shared preferences into book preferences"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    .line 1449
    .local v12, "context":Landroid/content/Context;
    const v2, 0x7f0f00bb

    invoke-virtual {v12, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1450
    .local v17, "keyUseDoubleEntry":Ljava/lang/String;
    const v2, 0x7f0f00b8

    invoke-virtual {v12, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1451
    .local v15, "keySaveOpeningBalance":Ljava/lang/String;
    const-string v14, "last_export_time"

    .line 1452
    .local v14, "keyLastExportTime":Ljava/lang/String;
    const v2, 0x7f0f00ba

    invoke-virtual {v12, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1454
    .local v16, "keyUseCompactView":Ljava/lang/String;
    invoke-static {v12}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 1455
    .local v25, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromEpochZero()Ljava/sql/Timestamp;

    move-result-object v2

    invoke-virtual {v2}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v0, v14, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1456
    .local v18, "lastExportTime":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 1457
    .local v30, "useDoubleEntry":Z
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v15, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1458
    .local v24, "saveOpeningBalance":Z
    invoke-static {v12}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v2, 0x7f0f00bb

    .line 1459
    invoke-virtual {v12, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v30, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 1461
    .local v29, "useCompactTrnView":Z
    invoke-static/range {p0 .. p0}, Lorg/gnucash/android/db/MigrationHelper;->getGnuCashRootAccountUID(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v23

    .line 1462
    .local v23, "rootAccountUID":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1464
    .local v10, "bookPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1465
    move-object/from16 v0, v18

    invoke-interface {v2, v14, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1466
    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1467
    move/from16 v0, v24

    invoke-interface {v2, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1468
    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1469
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1471
    invoke-static {}, Lorg/gnucash/android/db/MigrationHelper;->rescheduleServiceAlarm()V

    .line 1474
    return v19

    .line 1459
    .end local v10    # "bookPrefs":Landroid/content/SharedPreferences;
    .end local v23    # "rootAccountUID":Ljava/lang/String;
    .end local v29    # "useCompactTrnView":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static upgradeDbToVersion14(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1555
    sget-object v2, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Upgrading database to version 14"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/16 v1, 0xd

    .line 1557
    .local v1, "oldDbVersion":I
    new-instance v0, Ljava/io/File;

    sget-object v2, Lorg/gnucash/android/export/Exporter;->BASE_FOLDER_PATH:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1558
    .local v0, "backupFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1560
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/gnucash/android/db/MigrationHelper$2;

    invoke-direct {v3}, Lorg/gnucash/android/db/MigrationHelper$2;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1582
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1584
    const/16 v2, 0xe

    return v2
.end method

.method static upgradeDbToVersion15(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1599
    sget-object v3, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Upgrading database to version 15"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    const/16 v2, 0xe

    .line 1602
    .local v2, "dbVersion":I
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1604
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1605
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v3, "default_transfer_account_uid"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1606
    const-string v3, "accounts"

    const-string v4, "accounts.default_transfer_account_uid NOT IN (SELECT uid             FROM accounts)"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1613
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1614
    const/16 v2, 0xf

    .line 1616
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1621
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 1622
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1623
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const v4, 0x7f0f00ae

    .line 1624
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1625
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1628
    invoke-static {}, Lorg/gnucash/android/db/MigrationHelper;->rescheduleServiceAlarm()V

    .line 1629
    return v2

    .line 1616
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public static upgradeDbToVersion2(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v6, 0x0

    .line 263
    const-string v0, "ALTER TABLE transactions ADD COLUMN double_account_uid varchar(255)"

    .line 267
    .local v0, "addColumnSql":Ljava/lang/String;
    sget-object v4, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Adding column for parent accounts"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v1, "ALTER TABLE accounts ADD COLUMN parent_account_uid varchar(255)"

    .line 271
    .local v1, "addParentAccountSql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    sget-object v4, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Converting account types to GnuCash compatible types"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v4, "type"

    sget-object v5, Lorg/gnucash/android/model/AccountType;->CASH:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v5}, Lorg/gnucash/android/model/AccountType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v4, "accounts"

    invoke-virtual {p0, v4, v2, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 281
    const/4 v3, 0x2

    .line 282
    .local v3, "oldVersion":I
    return v3
.end method

.method static upgradeDbToVersion3(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 292
    const-string v0, "ALTER TABLE accounts ADD COLUMN is_placeholder tinyint default 0"

    .line 295
    .local v0, "addPlaceHolderAccountFlagSql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    const/4 v1, 0x3

    .line 297
    .local v1, "oldVersion":I
    return v1
.end method

.method static upgradeDbToVersion4(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 307
    const-string v2, "ALTER TABLE transactions ADD COLUMN recurrence_period integer default 0"

    .line 310
    .local v2, "addRecurrencePeriod":Ljava/lang/String;
    const-string v1, "ALTER TABLE accounts ADD COLUMN default_transfer_account_uid varchar(255)"

    .line 313
    .local v1, "addDefaultTransferAccount":Ljava/lang/String;
    const-string v0, " ALTER TABLE accounts ADD COLUMN color_code varchar(255)"

    .line 316
    .local v0, "addAccountColor":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 320
    const/4 v3, 0x4

    .line 321
    .local v3, "oldVersion":I
    return v3
.end method

.method static upgradeDbToVersion5(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 332
    const-string v0, " ALTER TABLE accounts ADD COLUMN favorite tinyint default 0"

    .line 334
    .local v0, "addAccountFavorite":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    const/4 v1, 0x5

    .line 337
    .local v1, "oldVersion":I
    return v1
.end method

.method static upgradeDbToVersion6(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 18
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 347
    const/16 v16, 0x5

    .line 348
    .local v16, "oldVersion":I
    const-string v10, " ALTER TABLE accounts ADD COLUMN full_name varchar(255) "

    .line 350
    .local v10, "addFullAccountNameQuery":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    const-string v3, "accounts"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "uid"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 356
    .local v12, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    const-string v2, "uid"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 358
    .local v17, "uid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/gnucash/android/db/MigrationHelper;->getFullyQualifiedAccountName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 360
    .local v13, "fullName":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 363
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 364
    .local v11, "contentValues":Landroid/content/ContentValues;
    const-string v2, "full_name"

    invoke-virtual {v11, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 367
    .local v14, "id":J
    const-string v2, "accounts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 370
    .end local v11    # "contentValues":Landroid/content/ContentValues;
    .end local v13    # "fullName":Ljava/lang/String;
    .end local v14    # "id":J
    .end local v17    # "uid":Ljava/lang/String;
    :cond_1
    if-eqz v12, :cond_2

    .line 371
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_2
    const/16 v16, 0x6

    .line 375
    return v16
.end method

.method static upgradeDbToVersion7(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 390
    const/4 v0, 0x6

    .line 391
    .local v0, "oldVersion":I
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 394
    :try_start_0
    const-string v1, "ALTER TABLE transactions RENAME TO transactions_bak"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 396
    const-string v1, "create table transactions (_id integer primary key autoincrement, uid varchar(255) not null, name varchar(255), description text, timestamp integer not null, is_exported tinyint default 0, currency_code varchar(255) not null, recurrence_period integer default 0, UNIQUE (uid) );"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    const-string v1, "INSERT INTO transactions ( _id , uid , name , description , timestamp , is_exported , currency_code , recurrence_period )  SELECT transactions_bak._id , transactions_bak.uid , transactions_bak.name , transactions_bak.description , transactions_bak.timestamp , transactions_bak.is_exported , accounts.currency_code , transactions_bak.recurrence_period FROM transactions_bak , accounts ON transactions_bak.account_uid == accounts.uid"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 429
    const-string v1, "CREATE TABLE splits (_id integer primary key autoincrement, uid varchar(255) not null, memo text, type varchar(255) not null, amount varchar(255) not null, account_uid varchar(255) not null, transaction_uid varchar(255) not null, FOREIGN KEY (account_uid) REFERENCES accounts (uid), FOREIGN KEY (transaction_uid) REFERENCES transactions (uid), UNIQUE (uid) );"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 446
    const-string v1, "INSERT INTO splits ( uid , type , amount , account_uid , transaction_uid ) SELECT LOWER(HEX(RANDOMBLOB(16))) , CASE WHEN accounts.type IN ( \'CASH\' , \'BANK\', \'ASSET\', \'EXPENSE\', \'RECEIVABLE\', \'STOCK\', \'MUTUAL\' ) THEN CASE WHEN amount < 0 THEN \'CREDIT\' ELSE \'DEBIT\' END ELSE CASE WHEN amount < 0 THEN \'DEBIT\' ELSE \'CREDIT\' END END , ABS ( transactions_bak.amount ) , transactions_bak.account_uid , transactions_bak.uid FROM transactions_bak , accounts ON transactions_bak.account_uid = accounts.uid UNION SELECT LOWER(HEX(RANDOMBLOB(16))) AS uid , CASE WHEN accounts.type IN ( \'CASH\' , \'BANK\', \'ASSET\', \'EXPENSE\', \'RECEIVABLE\', \'STOCK\', \'MUTUAL\' ) THEN CASE WHEN amount < 0 THEN \'DEBIT\' ELSE \'CREDIT\' END ELSE CASE WHEN amount < 0 THEN \'CREDIT\' ELSE \'DEBIT\' END END , ABS ( transactions_bak.amount ) , transactions_bak.double_account_uid , transactions_baK.uid FROM transactions_bak , accounts ON transactions_bak.account_uid = accounts.uid WHERE transactions_bak.double_account_uid IS NOT NULL"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 474
    const-string v1, "DROP TABLE transactions_bak"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    const/4 v0, 0x7

    .line 478
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 480
    return v0

    .line 478
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method static upgradeDbToVersion8(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 32
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 498
    sget-object v2, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Upgrading database to version 8"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/16 v23, 0x7

    .line 500
    .local v23, "oldVersion":I
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/gnucash/android/export/Exporter;->LEGACY_BASE_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/backups/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 501
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/gnucash/android/export/Exporter;->LEGACY_BASE_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/exports/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 503
    new-instance v2, Ljava/lang/Thread;

    sget-object v3, Lorg/gnucash/android/db/MigrationHelper;->moveExportedFilesToNewDefaultLocation:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 508
    :try_start_0
    sget-object v2, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Creating scheduled actions table"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE scheduled_actions (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, action_uid varchar(255) not null, type varchar(255) not null, period  integer not null, last_run integer default 0, start_time integer not null, end_time integer default 0, tag text, is_enabled tinyint default 1, total_frequency integer default 0, execution_count integer default 0, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP );"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scheduled_actions"

    .line 524
    invoke-static {v3}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 509
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 528
    sget-object v2, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Migrating accounts table"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v2, "ALTER TABLE accounts RENAME TO accounts_bak"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE accounts (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, name varchar(255) not null, type varchar(255) not null, currency_code varchar(255) not null, description varchar(255), color_code varchar(255), favorite tinyint default 0, is_hidden tinyint default 0, full_name varchar(255), is_placeholder tinyint default 0, parent_account_uid varchar(255), default_transfer_account_uid varchar(255), created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP );"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "accounts"

    .line 548
    invoke-static {v3}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 532
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 551
    const-string v2, "INSERT INTO accounts ( _id,uid , name , type , currency_code , color_code , favorite , full_name , is_placeholder , is_hidden , parent_account_uid , default_transfer_account_uid) SELECT accounts_bak._id , accounts_bak.uid , accounts_bak.name , accounts_bak.type , accounts_bak.currency_code , accounts_bak.color_code , accounts_bak.favorite , accounts_bak.full_name , accounts_bak.is_placeholder ,  CASE WHEN accounts_bak.type = \'ROOT\' THEN 1 ELSE 0 END, accounts_bak.parent_account_uid , accounts_bak.default_transfer_account_uid FROM accounts_bak;"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 580
    sget-object v2, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Migrating transactions table"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v2, "ALTER TABLE transactions RENAME TO transactions_bak"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE transactions (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, name varchar(255), description text, timestamp integer not null, is_exported tinyint default 0, is_template tinyint default 0, currency_code varchar(255) not null, scheduled_action_uid varchar(255), created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (scheduled_action_uid) REFERENCES scheduled_actions (uid) ON DELETE SET NULL );"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "transactions"

    .line 597
    invoke-static {v3}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 584
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 600
    const-string v2, "INSERT INTO transactions ( _id , uid , name , description , timestamp , is_exported , currency_code , is_template)  SELECT transactions_bak._id , transactions_bak.uid , transactions_bak.name , transactions_bak.description , transactions_bak.timestamp , transactions_bak.is_exported , transactions_bak.currency_code ,  CASE WHEN transactions_bak.recurrence_period > 0 THEN 1 ELSE 0 END  FROM transactions_bak;"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 621
    sget-object v2, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Migrating splits table"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v2, "ALTER TABLE splits RENAME TO splits_bak"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE splits (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, memo text, type varchar(255) not null, amount varchar(255) not null, account_uid varchar(255) not null, transaction_uid varchar(255) not null, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (account_uid) REFERENCES accounts (uid) ON DELETE CASCADE, FOREIGN KEY (transaction_uid) REFERENCES transactions (uid) ON DELETE CASCADE );"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "splits"

    .line 637
    invoke-static {v3}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 625
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 640
    const-string v2, "INSERT INTO splits ( _id , uid , memo , type , amount , account_uid , transaction_uid)  SELECT splits_bak._id , splits_bak.uid , splits_bak.memo , splits_bak.type , splits_bak.amount , splits_bak.account_uid , splits_bak.transaction_uid FROM splits_bak;"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 664
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromNow()Ljava/sql/Timestamp;

    move-result-object v2

    invoke-static {v2}, Lorg/gnucash/android/util/TimestampHelper;->getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v28

    .line 671
    .local v28, "timestamp":Ljava/lang/String;
    sget-object v2, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Creating default root account if none exists"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 675
    .local v13, "contentValues":Landroid/content/ContentValues;
    const-string v3, "accounts"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "uid"

    aput-object v5, v4, v2

    const-string v5, "type= ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v7, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    .line 678
    invoke-virtual {v7}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    .line 675
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 680
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    const-string v2, "uid"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v27

    .line 702
    .local v27, "rootAccountUID":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 705
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 706
    const-string v2, "parent_account_uid"

    move-object/from16 v0, v27

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v2, "accounts"

    const-string v3, "parent_account_uid IS NULL AND type != ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ROOT"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 709
    sget-object v2, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Migrating existing recurring transactions"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v3, "transactions_bak"

    const/4 v4, 0x0

    const-string v5, "recurrence_period > 0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 712
    .local v24, "lastRun":J
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 713
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 714
    new-instance v29, Ljava/sql/Timestamp;

    const-string v2, "timestamp"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 715
    .local v29, "timestampT":Ljava/sql/Timestamp;
    const-string v2, "created_at"

    invoke-static/range {v29 .. v29}, Lorg/gnucash/android/util/TimestampHelper;->getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 717
    .local v30, "transactionId":J
    const-string v2, "transactions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 726
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 727
    const-string v2, "uid"

    invoke-static {}, Lorg/gnucash/android/model/BaseModel;->generateUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v2, "created_at"

    move-object/from16 v0, v28

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v2, "action_uid"

    const-string v3, "uid"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v2, "period"

    const-string v3, "recurrence_period"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 731
    const-string v2, "start_time"

    invoke-virtual/range {v29 .. v29}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 732
    const-string v2, "end_time"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 733
    const-string v2, "last_run"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 734
    const-string v2, "type"

    const-string v3, "TRANSACTION"

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v2, "tag"

    const-string v3, ""

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v2, "is_enabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 737
    const-string v2, "total_frequency"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 738
    const-string v2, "execution_count"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    const-string v2, "scheduled_actions"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 743
    new-instance v22, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v22, "intent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/vnd.org.gnucash.android.transaction"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    .line 748
    .local v14, "context":Landroid/content/Context;
    move-wide/from16 v0, v30

    long-to-int v2, v0

    const/high16 v3, 0x10000000

    move-object/from16 v0, v22

    invoke-static {v14, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    .line 750
    .local v26, "recurringPendingIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {v14, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager;

    .line 751
    .local v11, "alarmManager":Landroid/app/AlarmManager;
    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 841
    .end local v11    # "alarmManager":Landroid/app/AlarmManager;
    .end local v13    # "contentValues":Landroid/content/ContentValues;
    .end local v14    # "context":Landroid/content/Context;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v24    # "lastRun":J
    .end local v26    # "recurringPendingIntent":Landroid/app/PendingIntent;
    .end local v27    # "rootAccountUID":Ljava/lang/String;
    .end local v28    # "timestamp":Ljava/lang/String;
    .end local v29    # "timestampT":Ljava/sql/Timestamp;
    .end local v30    # "transactionId":J
    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 685
    .restart local v13    # "contentValues":Landroid/content/ContentValues;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v28    # "timestamp":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-static {}, Lorg/gnucash/android/model/BaseModel;->generateUID()Ljava/lang/String;

    move-result-object v27

    .line 686
    .restart local v27    # "rootAccountUID":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 687
    const-string v2, "uid"

    move-object/from16 v0, v27

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v2, "created_at"

    move-object/from16 v0, v28

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v2, "name"

    const-string v3, "ROOT"

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v2, "type"

    const-string v3, "ROOT"

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v2, "currency_code"

    sget-object v3, Lorg/gnucash/android/model/Money;->DEFAULT_CURRENCY_CODE:Ljava/lang/String;

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v2, "is_placeholder"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string v2, "is_hidden"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    const-string v2, "color_code"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 695
    const-string v2, "favorite"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 696
    const-string v2, "full_name"

    const-string v3, " "

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v2, "parent_account_uid"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 698
    const-string v2, "default_transfer_account_uid"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 699
    const-string v2, "accounts"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 702
    .end local v27    # "rootAccountUID":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2

    .line 753
    .restart local v24    # "lastRun":J
    .restart local v27    # "rootAccountUID":Ljava/lang/String;
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 756
    sget-object v2, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Auto-balancing existing transaction splits"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v3, "transactions , splits ON transactions.uid=splits.transaction_uid , accounts ON splits.account_uid=accounts.uid"

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "transactions.uid AS trans_uid"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "transactions.currency_code AS trans_currency"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "TOTAL ( CASE WHEN splits.type = \'DEBIT\' THEN splits.amount ELSE - splits.amount END ) AS trans_acct_balance"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "COUNT ( DISTINCT accounts.currency_code ) AS trans_currency_count"

    aput-object v5, v4, v2

    const-string v5, "transactions.is_template == 0"

    const/4 v6, 0x0

    const-string v7, "transactions.uid"

    const-string v8, "trans_acct_balance != 0 AND trans_currency_count = 1"

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v16

    .line 779
    :cond_2
    :goto_2
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 780
    const-string v2, "trans_acct_balance"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 781
    .local v18, "imbalance":D
    invoke-static/range {v18 .. v19}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    .line 782
    .local v17, "decimalImbalance":Ljava/math/BigDecimal;
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 783
    const-string v2, "trans_currency"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 784
    .local v15, "currencyCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0096

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 786
    .local v20, "imbalanceAccountName":Ljava/lang/String;
    const-string v3, "accounts"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "uid"

    aput-object v5, v4, v2

    const-string v5, "full_name= ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v20, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v12

    .line 790
    .local v12, "c":Landroid/database/Cursor;
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 791
    const-string v2, "uid"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v21

    .line 811
    .local v21, "imbalanceAccountUID":Ljava/lang/String;
    :goto_3
    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 813
    const-string v2, "trans_uid"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 814
    .local v10, "TransactionUID":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 815
    const-string v2, "uid"

    invoke-static {}, Lorg/gnucash/android/model/BaseModel;->generateUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v2, "created_at"

    move-object/from16 v0, v28

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v2, "amount"

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v3, "type"

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-gez v2, :cond_5

    const-string v2, "DEBIT"

    :goto_4
    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v2, "memo"

    const-string v3, ""

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v2, "account_uid"

    move-object/from16 v0, v21

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v2, "transaction_uid"

    invoke-virtual {v13, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v2, "splits"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 823
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 824
    const-string v2, "modified_at"

    move-object/from16 v0, v28

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v2, "transactions"

    const-string v3, "uid == ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_2

    .line 830
    .end local v10    # "TransactionUID":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v15    # "currencyCode":Ljava/lang/String;
    .end local v17    # "decimalImbalance":Ljava/math/BigDecimal;
    .end local v18    # "imbalance":D
    .end local v20    # "imbalanceAccountName":Ljava/lang/String;
    .end local v21    # "imbalanceAccountUID":Ljava/lang/String;
    :catchall_2
    move-exception v2

    :try_start_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 794
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v15    # "currencyCode":Ljava/lang/String;
    .restart local v17    # "decimalImbalance":Ljava/math/BigDecimal;
    .restart local v18    # "imbalance":D
    .restart local v20    # "imbalanceAccountName":Ljava/lang/String;
    :cond_3
    :try_start_9
    invoke-static {}, Lorg/gnucash/android/model/BaseModel;->generateUID()Ljava/lang/String;

    move-result-object v21

    .line 795
    .restart local v21    # "imbalanceAccountUID":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 796
    const-string v2, "uid"

    move-object/from16 v0, v21

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v2, "created_at"

    move-object/from16 v0, v28

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v2, "name"

    move-object/from16 v0, v20

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v2, "type"

    const-string v3, "BANK"

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v2, "currency_code"

    invoke-virtual {v13, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v2, "is_placeholder"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    const-string v3, "is_hidden"

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->isDoubleEntryEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 803
    const-string v2, "color_code"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 804
    const-string v2, "favorite"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 805
    const-string v2, "full_name"

    move-object/from16 v0, v20

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v2, "parent_account_uid"

    move-object/from16 v0, v27

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v2, "default_transfer_account_uid"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 808
    const-string v2, "accounts"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/16 :goto_3

    .line 811
    .end local v21    # "imbalanceAccountUID":Ljava/lang/String;
    :catchall_3
    move-exception v2

    :try_start_a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 802
    .restart local v21    # "imbalanceAccountUID":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    goto :goto_5

    .line 818
    .restart local v10    # "TransactionUID":Ljava/lang/String;
    :cond_5
    const-string v2, "CREDIT"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_4

    .line 830
    .end local v10    # "TransactionUID":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v15    # "currencyCode":Ljava/lang/String;
    .end local v17    # "decimalImbalance":Ljava/math/BigDecimal;
    .end local v18    # "imbalance":D
    .end local v20    # "imbalanceAccountName":Ljava/lang/String;
    .end local v21    # "imbalanceAccountUID":Ljava/lang/String;
    :cond_6
    :try_start_b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 833
    sget-object v2, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Dropping temporary migration tables"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const-string v2, "DROP TABLE splits_bak"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 835
    const-string v2, "DROP TABLE accounts_bak"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 836
    const-string v2, "DROP TABLE transactions_bak"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 838
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 839
    const/16 v23, 0x8

    .line 841
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 844
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/gnucash/android/app/GnuCashApplication;->startScheduledActionExecutionService(Landroid/content/Context;)V

    .line 846
    return v23
.end method

.method static upgradeDbToVersion9(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 864
    sget-object v7, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Upgrading database to version 9"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/16 v5, 0x8

    .line 867
    .local v5, "oldVersion":I
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 869
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CREATE TABLE commodities (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, namespace varchar(255) not null default "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/gnucash/android/model/Commodity$Namespace;->ISO4217:Lorg/gnucash/android/model/Commodity$Namespace;

    .line 872
    invoke-virtual {v8}, Lorg/gnucash/android/model/Commodity$Namespace;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "fullname"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " varchar(255) not null, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mnemonic"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " varchar(255) not null, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "local_symbol"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " varchar(255) not null default \'\', "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "cusip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " varchar(255), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "fraction"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " integer not null, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "quote_flag"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " integer not null, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "created_at"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "modified_at"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP );"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "commodities"

    .line 881
    invoke-static {v8}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 869
    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 882
    const-string v7, "CREATE UNIQUE INDEX \'commodities_uid_index\' ON commodities(uid)"

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 886
    :try_start_1
    invoke-static {p0}, Lorg/gnucash/android/db/MigrationHelper;->importCommodities(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 893
    :try_start_2
    const-string v7, " ALTER TABLE accounts ADD COLUMN commodity_uid varchar(255)  REFERENCES commodities (uid) "

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 897
    const-string v7, " ALTER TABLE transactions ADD COLUMN commodity_uid varchar(255)  REFERENCES commodities (uid) "

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 901
    const-string v7, "UPDATE accounts SET commodity_uid =  (SELECT uid FROM commodities WHERE accounts.commodity_uid = commodities.uid)"

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 907
    const-string v7, "UPDATE transactions SET commodity_uid =  (SELECT uid FROM commodities WHERE transactions.commodity_uid = commodities.uid)"

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 913
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CREATE TABLE prices (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, commodity_guid varchar(255) not null, currency_guid varchar(255) not null, type varchar(255), date TIMESTAMP not null, source text, value_num integer not null, value_denom integer not null, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, UNIQUE (commodity_guid, currency_guid) ON CONFLICT REPLACE, FOREIGN KEY (commodity_guid) REFERENCES commodities (uid) ON DELETE CASCADE, FOREIGN KEY (currency_guid) REFERENCES commodities (uid) ON DELETE CASCADE );"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "prices"

    .line 928
    invoke-static {v8}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 913
    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 929
    const-string v7, "CREATE UNIQUE INDEX \'prices_uid_index\' ON prices(uid)"

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 935
    const-string v7, "ALTER TABLE splits RENAME TO splits_bak"

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 937
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CREATE TABLE splits (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, memo text, type varchar(255) not null, value_num integer not null, value_denom integer not null, quantity_num integer not null, quantity_denom integer not null, account_uid varchar(255) not null, transaction_uid varchar(255) not null, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (account_uid) REFERENCES accounts (uid) ON DELETE CASCADE, FOREIGN KEY (transaction_uid) REFERENCES transactions (uid) ON DELETE CASCADE );"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "splits"

    .line 952
    invoke-static {v8}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 937
    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 955
    const-string v7, "INSERT INTO splits ( _id , uid , memo , type , value_num , value_denom , quantity_num , quantity_denom , account_uid , transaction_uid)  SELECT splits_bak._id , splits_bak.uid , splits_bak.memo , splits_bak.type , splits_bak.amount * 100, 100, splits_bak.amount * 100, 100, splits_bak.account_uid , splits_bak.transaction_uid FROM splits_bak;"

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 982
    const-string v6, "SELECT A.uid AS account_uid  FROM accounts AS A, commodities AS C  WHERE A.currency_code = C.mnemonic AND C.fraction= 1"

    .line 987
    .local v6, "query":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 989
    .local v3, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 991
    .local v1, "accountUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 992
    const-string v7, "account_uid"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "accountUID":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 996
    .end local v0    # "accountUID":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1082
    .end local v1    # "accountUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v6    # "query":Ljava/lang/String;
    :catchall_1
    move-exception v7

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 887
    :catch_0
    move-exception v4

    .line 888
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    sget-object v7, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Error loading currencies into the database"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    invoke-static {v4}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 890
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 996
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "accountUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "query":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 999
    const-string v7, "\' , \'"

    invoke-static {v7, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1000
    .local v2, "accounts":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REPLACE INTO splits ( uid , memo , type , account_uid , transaction_uid , created_at , modified_at , value_num , value_denom , quantity_num , quantity_denom)  SELECT uid , memo , type , account_uid , transaction_uid , created_at , modified_at ,  ROUND (value_num/ 100), 1,  ROUND (quantity_num/ 100), 1  FROM splits WHERE account_uid IN (\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\');"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1031
    const-string v6, "SELECT A.uid AS account_uid  FROM accounts AS A, commodities AS C  WHERE A.currency_code = C.mnemonic AND C.fraction= 1000"

    .line 1036
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1038
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1040
    :goto_2
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1041
    const-string v7, "account_uid"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1042
    .restart local v0    # "accountUID":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 1045
    .end local v0    # "accountUID":Ljava/lang/String;
    :catchall_2
    move-exception v7

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v7

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1048
    const-string v7, "\' , \'"

    invoke-static {v7, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1049
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REPLACE INTO splits ( uid , memo , type , account_uid , transaction_uid , created_at , modified_at , value_num , value_denom , quantity_num , quantity_denom)  SELECT uid , memo , type , account_uid , transaction_uid , created_at , modified_at , value_num* 10, 1000, quantity_num* 10, 1000  FROM splits WHERE account_uid IN (\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\');"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1077
    const-string v7, "DROP TABLE splits_bak"

    invoke-virtual {p0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1080
    const/16 v5, 0x9

    .line 1082
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1084
    return v5

    .line 887
    .end local v1    # "accountUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "accounts":Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v6    # "query":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto/16 :goto_1

    :catch_2
    move-exception v4

    goto/16 :goto_1
.end method
