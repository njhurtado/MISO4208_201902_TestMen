.class public Lorg/gnucash/android/db/adapter/BooksDbAdapter;
.super Lorg/gnucash/android/db/adapter/DatabaseAdapter;
.source "BooksDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/db/adapter/BooksDbAdapter$NoActiveBookFoundException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/gnucash/android/db/adapter/DatabaseAdapter",
        "<",
        "Lorg/gnucash/android/model/Book;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 49
    const-string v0, "books"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "root_account_guid"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "root_template_guid"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "uri"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "is_active"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "uid"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "last_export_time"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private getBookDatabases()Ljava/util/List;
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

    .prologue
    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "bookDatabases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 250
    .local v1, "database":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->isBookDatabase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "database":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getBooksDbAdapter()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getNoActiveBookFoundExceptionInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UID, created, source\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "info":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getAllRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Book;

    .line 181
    .local v0, "book":Lorg/gnucash/android/model/Book;
    const-string v3, "%s, %s, %s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 182
    invoke-virtual {v0}, Lorg/gnucash/android/model/Book;->getUID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 183
    invoke-virtual {v0}, Lorg/gnucash/android/model/Book;->getCreatedTimestamp()Ljava/sql/Timestamp;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 184
    invoke-virtual {v0}, Lorg/gnucash/android/model/Book;->getSourceUri()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    .line 181
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 186
    .end local v0    # "book":Lorg/gnucash/android/model/Book;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getRootAccountUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 225
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lorg/gnucash/android/db/DatabaseHelper;

    invoke-direct {v2, v1, p1}, Lorg/gnucash/android/db/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    .local v2, "databaseHelper":Lorg/gnucash/android/db/DatabaseHelper;
    invoke-virtual {v2}, Lorg/gnucash/android/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 227
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    new-instance v5, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    new-instance v6, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    invoke-direct {v6, v3}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v5, v3, v6}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/SplitsDbAdapter;)V

    invoke-direct {v0, v3, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;)V

    .line 229
    .local v0, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    invoke-virtual {v0}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateGnuCashRootAccountUID()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "uid":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 231
    return-object v4
.end method

.method private isBookDatabase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 258
    const-string v0, "[a-z0-9]{32}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private recoverBookRecords()V
    .locals 6

    .prologue
    .line 211
    invoke-direct {p0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getBookDatabases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 212
    .local v1, "dbName":Ljava/lang/String;
    new-instance v0, Lorg/gnucash/android/model/Book;

    invoke-direct {p0, v1}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getRootAccountUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/gnucash/android/model/Book;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "book":Lorg/gnucash/android/model/Book;
    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Book;->setUID(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->generateDefaultBookName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/gnucash/android/model/Book;->setDisplayName(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;)V

    .line 216
    iget-object v3, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recovered book record: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/gnucash/android/model/Book;->getUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    .end local v0    # "book":Lorg/gnucash/android/model/Book;
    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setFirstBookAsActive()V
    .locals 4

    .prologue
    .line 238
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getAllRecords()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Book;

    .line 239
    .local v0, "firstBook":Lorg/gnucash/android/model/Book;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Book;->setActive(Z)V

    .line 240
    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;)V

    .line 241
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Book "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/gnucash/android/model/Book;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set as active."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method


# virtual methods
.method public bridge synthetic buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BaseModel;
    .locals 1
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Book;

    move-result-object v0

    return-object v0
.end method

.method public buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Book;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    const-string v7, "root_account_guid"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "rootAccountGUID":Ljava/lang/String;
    const-string v7, "root_template_guid"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "rootTemplateGUID":Ljava/lang/String;
    const-string v7, "uri"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "uriString":Ljava/lang/String;
    const-string v7, "name"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "displayName":Ljava/lang/String;
    const-string v7, "is_active"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 75
    .local v0, "active":I
    const-string v7, "last_export_time"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "lastSync":Ljava/lang/String;
    new-instance v1, Lorg/gnucash/android/model/Book;

    invoke-direct {v1, v4}, Lorg/gnucash/android/model/Book;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "book":Lorg/gnucash/android/model/Book;
    invoke-virtual {v1, v2}, Lorg/gnucash/android/model/Book;->setDisplayName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v5}, Lorg/gnucash/android/model/Book;->setRootTemplateUID(Ljava/lang/String;)V

    .line 80
    if-nez v6, :cond_0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v1, v7}, Lorg/gnucash/android/model/Book;->setSourceUri(Landroid/net/Uri;)V

    .line 81
    if-lez v0, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v1, v7}, Lorg/gnucash/android/model/Book;->setActive(Z)V

    .line 82
    invoke-static {v3}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromUtcString(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/gnucash/android/model/Book;->setLastSync(Ljava/sql/Timestamp;)V

    .line 84
    invoke-virtual {p0, p1, v1}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->populateBaseModelAttributes(Landroid/database/Cursor;Lorg/gnucash/android/model/BaseModel;)V

    .line 85
    return-object v1

    .line 80
    :cond_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 81
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public deleteBook(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bookUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    .line 113
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->deleteRecord(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 116
    :cond_0
    invoke-static {p1}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getBookSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    return v1
.end method

.method public fixBooksDatabase()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Looking for books to set as active..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getRecordsCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No books found in the database. Recovering books records..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->recoverBookRecords()V

    .line 202
    :cond_0
    invoke-direct {p0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->setFirstBookAsActive()V

    .line 203
    return-void
.end method

.method public generateDefaultBookName()Ljava/lang/String;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getRecordsCount()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long v0, v8, v10

    .line 299
    .local v0, "bookCount":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT COUNT(*) FROM "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " WHERE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = ?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "sql":Ljava/lang/String;
    iget-object v8, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 303
    .local v7, "statement":Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 304
    .local v2, "context":Landroid/content/Context;
    const v8, 0x7f0f002a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 308
    const/4 v8, 0x1

    invoke-virtual {v7, v8, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 309
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    .line 311
    .local v4, "nameCount":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_0

    .line 312
    return-object v3

    .line 315
    :cond_0
    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    .line 316
    goto :goto_0
.end method

.method public getActiveBookDisplayName()Ljava/lang/String;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 279
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->mTableName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "name"

    aput-object v5, v2, v3

    const-string v3, "is_active = 1"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 283
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 287
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 289
    :goto_0
    return-object v0

    .line 287
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 289
    const-string v0, "Book1"

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getActiveBookUID()Ljava/lang/String;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 157
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->mTableName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "uid"

    aput-object v5, v2, v3

    const-string v3, "is_active= 1"

    const-string v8, "1"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 165
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 166
    new-instance v10, Lorg/gnucash/android/db/adapter/BooksDbAdapter$NoActiveBookFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is no active book in the app.This should NEVER happen, fix your bugs!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    invoke-direct {p0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getNoActiveBookFoundExceptionInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, p0, v0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter$NoActiveBookFoundException;-><init>(Lorg/gnucash/android/db/adapter/BooksDbAdapter;Ljava/lang/String;)V

    .line 170
    .local v10, "e":Lorg/gnucash/android/db/adapter/BooksDbAdapter$NoActiveBookFoundException;
    invoke-virtual {v10}, Lorg/gnucash/android/db/adapter/BooksDbAdapter$NoActiveBookFoundException;->printStackTrace()V

    .line 171
    throw v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 157
    .end local v10    # "e":Lorg/gnucash/android/db/adapter/BooksDbAdapter$NoActiveBookFoundException;
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_0
    if-eqz v9, :cond_0

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    throw v0

    .line 173
    :cond_1
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 174
    const-string v0, "uid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 175
    if-eqz v9, :cond_2

    if-eqz v4, :cond_3

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 174
    :cond_2
    :goto_2
    return-object v0

    .line 175
    :catch_1
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public getAllBookUIDs()Ljava/util/List;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 262
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v10, "bookUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->mTableName:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "uid"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 265
    .local v11, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    const-string v0, "uid"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_1
    if-eqz v11, :cond_0

    if-eqz v4, :cond_4

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v0

    :cond_1
    if-eqz v11, :cond_2

    if-eqz v4, :cond_3

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 270
    :cond_2
    :goto_3
    return-object v10

    .line 268
    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public isActive(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bookUID"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v1, "is_active"

    invoke-virtual {p0, p1, v1}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "isActive":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActive(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "bookUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 128
    if-nez p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object p1

    .line 139
    .end local p1    # "bookUID":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 131
    .restart local p1    # "bookUID":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "is_active"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 136
    const-string v1, "is_active"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    iget-object v1, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->mTableName:Ljava/lang/String;

    const-string v3, "uid = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/BaseModel;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/gnucash/android/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 42
    check-cast p2, Lorg/gnucash/android/model/Book;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Book;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Book;)Landroid/database/sqlite/SQLiteStatement;
    .locals 4
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "book"    # Lorg/gnucash/android/model/Book;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 91
    invoke-virtual {p2}, Lorg/gnucash/android/model/Book;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->generateDefaultBookName()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "displayName":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 93
    const/4 v1, 0x2

    invoke-virtual {p2}, Lorg/gnucash/android/model/Book;->getRootAccountUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    const/4 v1, 0x3

    invoke-virtual {p2}, Lorg/gnucash/android/model/Book;->getRootTemplateUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Lorg/gnucash/android/model/Book;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x4

    invoke-virtual {p2}, Lorg/gnucash/android/model/Book;->getSourceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 97
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p2}, Lorg/gnucash/android/model/Book;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1

    :goto_1
    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 98
    const/4 v1, 0x6

    invoke-virtual {p2}, Lorg/gnucash/android/model/Book;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 99
    const/4 v1, 0x7

    invoke-virtual {p2}, Lorg/gnucash/android/model/Book;->getLastSync()Ljava/sql/Timestamp;

    move-result-object v2

    invoke-static {v2}, Lorg/gnucash/android/util/TimestampHelper;->getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 100
    return-object p1

    .line 91
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lorg/gnucash/android/model/Book;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    .restart local v0    # "displayName":Ljava/lang/String;
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1
.end method
