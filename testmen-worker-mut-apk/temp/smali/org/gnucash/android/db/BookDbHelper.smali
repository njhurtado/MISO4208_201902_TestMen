.class public Lorg/gnucash/android/db/BookDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BookDbHelper.java"


# static fields
.field private static final BOOKS_TABLE_CREATE:Ljava/lang/String;

.field public static final LOG_TAG:Ljava/lang/String; = "BookDbHelper"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE books (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, name varchar(255) not null, root_account_guid varchar(255) not null, root_template_guid varchar(255), is_active tinyint default 0, uri varchar(255), last_export_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "books"

    .line 67
    invoke-static {v1}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/db/BookDbHelper;->BOOKS_TABLE_CREATE:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v0, "gnucash_books.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 71
    iput-object p1, p0, Lorg/gnucash/android/db/BookDbHelper;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public static getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "bookUID"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lorg/gnucash/android/db/DatabaseHelper;

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/gnucash/android/db/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    .local v0, "dbHelper":Lorg/gnucash/android/db/DatabaseHelper;
    invoke-virtual {v0}, Lorg/gnucash/android/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method private insertBook(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/model/Book;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "book"    # Lorg/gnucash/android/model/Book;

    .prologue
    .line 143
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "uid"

    invoke-virtual {p2}, Lorg/gnucash/android/model/Book;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "root_account_guid"

    invoke-virtual {p2}, Lorg/gnucash/android/model/Book;->getRootAccountUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "root_template_guid"

    invoke-static {}, Lorg/gnucash/android/model/Book;->generateUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "name"

    new-instance v2, Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    invoke-direct {v2, p1}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->generateDefaultBookName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "is_active"

    invoke-virtual {p2}, Lorg/gnucash/android/model/Book;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v1, "books"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 151
    return-void

    .line 148
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private migrateBackupFiles(Ljava/lang/String;)V
    .locals 8
    .param p1, "activeBookUID"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v5, "BookDbHelper"

    const-string v6, "Moving export and backup files to book-specific folders"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/gnucash/android/export/Exporter;->LEGACY_BASE_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v3, "newBasePath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 165
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/gnucash/android/export/Exporter;->LEGACY_BASE_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/backups/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v4, "src":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/gnucash/android/export/Exporter;->LEGACY_BASE_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/backups/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "dst":Ljava/io/File;
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lorg/gnucash/android/util/RecursiveMoveFiles;

    invoke-direct {v6, v4, v0}, Lorg/gnucash/android/util/RecursiveMoveFiles;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 169
    new-instance v4, Ljava/io/File;

    .end local v4    # "src":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/gnucash/android/export/Exporter;->LEGACY_BASE_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/exports/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .restart local v4    # "src":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "dst":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/gnucash/android/export/Exporter;->LEGACY_BASE_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/exports/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .restart local v0    # "dst":Ljava/io/File;
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lorg/gnucash/android/util/RecursiveMoveFiles;

    invoke-direct {v6, v4, v0}, Lorg/gnucash/android/util/RecursiveMoveFiles;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 173
    new-instance v2, Ljava/io/File;

    const-string v5, "Book 1"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    .local v2, "nameFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "BookDbHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error creating name file for the database: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 76
    sget-object v16, Lorg/gnucash/android/db/BookDbHelper;->BOOKS_TABLE_CREATE:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/db/BookDbHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "gnucash_db"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 79
    const-string v16, "BookDbHelper"

    const-string v17, "Legacy database found. Migrating to multibook format"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v9, Lorg/gnucash/android/db/DatabaseHelper;

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "gnucash_db"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v9, v0, v1}, Lorg/gnucash/android/db/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .local v9, "helper":Lorg/gnucash/android/db/DatabaseHelper;
    invoke-virtual {v9}, Lorg/gnucash/android/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 83
    .local v10, "mainDb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    new-instance v16, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    new-instance v17, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/SplitsDbAdapter;)V

    move-object/from16 v0, v16

    invoke-direct {v2, v10, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;)V

    .line 86
    .local v2, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    invoke-virtual {v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateGnuCashRootAccountUID()Ljava/lang/String;

    move-result-object v12

    .line 88
    .local v12, "rootAccountUID":Ljava/lang/String;
    new-instance v3, Lorg/gnucash/android/model/Book;

    invoke-direct {v3, v12}, Lorg/gnucash/android/model/Book;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, "book":Lorg/gnucash/android/model/Book;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/gnucash/android/model/Book;->setActive(Z)V

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lorg/gnucash/android/db/BookDbHelper;->insertBook(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/model/Book;)V

    .line 92
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 93
    .local v11, "mainDbPath":Ljava/lang/String;
    invoke-virtual {v9}, Lorg/gnucash/android/db/DatabaseHelper;->close()V

    .line 95
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v14, "src":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v3}, Lorg/gnucash/android/model/Book;->getUID()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v6, "dst":Ljava/io/File;
    :try_start_0
    invoke-static {v14, v6}, Lorg/gnucash/android/db/MigrationHelper;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    invoke-virtual {v3}, Lorg/gnucash/android/model/Book;->getUID()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/gnucash/android/db/BookDbHelper;->migrateBackupFiles(Ljava/lang/String;)V

    .line 108
    .end local v2    # "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .end local v3    # "book":Lorg/gnucash/android/model/Book;
    .end local v6    # "dst":Ljava/io/File;
    .end local v9    # "helper":Lorg/gnucash/android/db/DatabaseHelper;
    .end local v10    # "mainDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "mainDbPath":Ljava/lang/String;
    .end local v12    # "rootAccountUID":Ljava/lang/String;
    .end local v14    # "src":Ljava/io/File;
    :cond_0
    const-string v13, "SELECT COUNT(*) FROM books"

    .line 109
    .local v13, "sql":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v15

    .line 110
    .local v15, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    .line 111
    .local v4, "count":J
    const-wide/16 v16, 0x0

    cmp-long v16, v4, v16

    if-nez v16, :cond_1

    .line 112
    const-string v16, "BookDbHelper"

    const-string v17, "No books found in database, creating default book"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v3, Lorg/gnucash/android/model/Book;

    invoke-direct {v3}, Lorg/gnucash/android/model/Book;-><init>()V

    .line 114
    .restart local v3    # "book":Lorg/gnucash/android/model/Book;
    new-instance v9, Lorg/gnucash/android/db/DatabaseHelper;

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual {v3}, Lorg/gnucash/android/model/Book;->getUID()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v9, v0, v1}, Lorg/gnucash/android/db/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    .restart local v9    # "helper":Lorg/gnucash/android/db/DatabaseHelper;
    invoke-virtual {v9}, Lorg/gnucash/android/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 116
    .restart local v10    # "mainDb":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    new-instance v16, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    new-instance v17, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/SplitsDbAdapter;)V

    move-object/from16 v0, v16

    invoke-direct {v2, v10, v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;)V

    .line 119
    .restart local v2    # "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    invoke-virtual {v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateGnuCashRootAccountUID()Ljava/lang/String;

    move-result-object v12

    .line 120
    .restart local v12    # "rootAccountUID":Ljava/lang/String;
    invoke-virtual {v3, v12}, Lorg/gnucash/android/model/Book;->setRootAccountUID(Ljava/lang/String;)V

    .line 121
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/gnucash/android/model/Book;->setActive(Z)V

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lorg/gnucash/android/db/BookDbHelper;->insertBook(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/model/Book;)V

    .line 125
    .end local v2    # "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .end local v3    # "book":Lorg/gnucash/android/model/Book;
    .end local v9    # "helper":Lorg/gnucash/android/db/DatabaseHelper;
    .end local v10    # "mainDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "rootAccountUID":Ljava/lang/String;
    :cond_1
    return-void

    .line 99
    .end local v4    # "count":J
    .end local v13    # "sql":Ljava/lang/String;
    .end local v15    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v2    # "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .restart local v3    # "book":Lorg/gnucash/android/model/Book;
    .restart local v6    # "dst":Ljava/io/File;
    .restart local v9    # "helper":Lorg/gnucash/android/db/DatabaseHelper;
    .restart local v10    # "mainDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "mainDbPath":Ljava/lang/String;
    .restart local v12    # "rootAccountUID":Ljava/lang/String;
    .restart local v14    # "src":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 100
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "Error renaming database file"

    .line 101
    .local v8, "err_msg":Ljava/lang/String;
    invoke-static {v8}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 102
    const-string v16, "BookDbHelper"

    move-object/from16 v0, v16

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 185
    return-void
.end method
