.class public Lorg/gnucash/android/db/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final ACCOUNTS_TABLE_CREATE:Ljava/lang/String;

.field private static final BUDGETS_TABLE_CREATE:Ljava/lang/String;

.field private static final BUDGET_AMOUNTS_TABLE_CREATE:Ljava/lang/String;

.field public static final COMMODITIES_TABLE_CREATE:Ljava/lang/String;

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final PRICES_TABLE_CREATE:Ljava/lang/String;

.field private static final RECURRENCE_TABLE_CREATE:Ljava/lang/String;

.field public static final SCHEDULED_ACTIONS_TABLE_CREATE:Ljava/lang/String;

.field private static final SPLITS_TABLE_CREATE:Ljava/lang/String;

.field private static final TRANSACTIONS_TABLE_CREATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-class v0, Lorg/gnucash/android/db/DatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create table accounts (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, name varchar(255) not null, type varchar(255) not null, currency_code varchar(255) not null, commodity_uid varchar(255) not null, description varchar(255), color_code varchar(255), favorite tinyint default 0, is_hidden tinyint default 0, full_name varchar(255), is_placeholder tinyint default 0, parent_account_uid varchar(255), default_transfer_account_uid varchar(255), created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (commodity_uid) REFERENCES commodities (uid) );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accounts"

    .line 82
    invoke-static {v1}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/db/DatabaseHelper;->ACCOUNTS_TABLE_CREATE:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create table transactions (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, name varchar(255), description text, timestamp integer not null, is_exported tinyint default 0, is_template tinyint default 0, currency_code varchar(255) not null, commodity_uid varchar(255) not null, scheduled_action_uid varchar(255), created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (scheduled_action_uid) REFERENCES scheduled_actions (uid) ON DELETE SET NULL, FOREIGN KEY (commodity_uid) REFERENCES commodities (uid) );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "transactions"

    .line 102
    invoke-static {v1}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/db/DatabaseHelper;->TRANSACTIONS_TABLE_CREATE:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE splits (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, memo text, type varchar(255) not null, value_num integer not null, value_denom integer not null, quantity_num integer not null, quantity_denom integer not null, account_uid varchar(255) not null, transaction_uid varchar(255) not null, reconcile_state varchar(1) not null default \'n\', reconcile_date timestamp not null default current_timestamp, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (account_uid) REFERENCES accounts (uid) ON DELETE CASCADE, FOREIGN KEY (transaction_uid) REFERENCES transactions (uid) ON DELETE CASCADE );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "splits"

    .line 124
    invoke-static {v1}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/db/DatabaseHelper;->SPLITS_TABLE_CREATE:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE scheduled_actions (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, action_uid varchar(255) not null, type varchar(255) not null, recurrence_uid varchar(255) not null, template_act_uid varchar(255) not null, last_run integer default 0, start_time integer not null, end_time integer default 0, tag text, is_enabled tinyint default 1, auto_create tinyint default 1, auto_notify tinyint default 0, adv_creation integer default 0, adv_notify integer default 0, total_frequency integer default 0, execution_count integer default 0, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (recurrence_uid) REFERENCES recurrences (uid) );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scheduled_actions"

    .line 148
    invoke-static {v1}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/db/DatabaseHelper;->SCHEDULED_ACTIONS_TABLE_CREATE:Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE commodities (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, namespace varchar(255) not null default "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/gnucash/android/model/Commodity$Namespace;->ISO4217:Lorg/gnucash/android/model/Commodity$Namespace;

    .line 153
    invoke-virtual {v1}, Lorg/gnucash/android/model/Commodity$Namespace;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fullname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " varchar(255) not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mnemonic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " varchar(255) not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "local_symbol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " varchar(255) not null default \'\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cusip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " varchar(255), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fraction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "quote_flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer not null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "created_at"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "modified_at"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "commodities"

    .line 162
    invoke-static {v1}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/db/DatabaseHelper;->COMMODITIES_TABLE_CREATE:Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE prices (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, commodity_guid varchar(255) not null, currency_guid varchar(255) not null, type varchar(255), date TIMESTAMP not null, source text, value_num integer not null, value_denom integer not null, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, UNIQUE (commodity_guid, currency_guid) ON CONFLICT REPLACE, FOREIGN KEY (commodity_guid) REFERENCES commodities (uid) ON DELETE CASCADE, FOREIGN KEY (currency_guid) REFERENCES commodities (uid) ON DELETE CASCADE );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "prices"

    .line 182
    invoke-static {v1}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/db/DatabaseHelper;->PRICES_TABLE_CREATE:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE budgets (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, name varchar(255) not null, description varchar(255), recurrence_uid varchar(255) not null, num_periods integer, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (recurrence_uid) REFERENCES recurrences (uid) );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "budgets"

    .line 195
    invoke-static {v1}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/db/DatabaseHelper;->BUDGETS_TABLE_CREATE:Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE budget_amounts (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, budget_uid varchar(255) not null, account_uid varchar(255) not null, amount_num integer not null, amount_denom integer not null, period_num integer not null, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, FOREIGN KEY (account_uid) REFERENCES accounts (uid) ON DELETE CASCADE, FOREIGN KEY (budget_uid) REFERENCES budgets (uid) ON DELETE CASCADE );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "budget_amounts"

    .line 209
    invoke-static {v1}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/db/DatabaseHelper;->BUDGET_AMOUNTS_TABLE_CREATE:Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE recurrences (_id integer primary key autoincrement, uid varchar(255) not null UNIQUE, recurrence_mult integer not null default 1, recurrence_period_type varchar(255) not null, recurrence_byday varchar(255), recurrence_period_start timestamp not null, recurrence_period_end timestamp, created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP); "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recurrences"

    .line 222
    invoke-static {v1}, Lorg/gnucash/android/db/DatabaseHelper;->createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/db/DatabaseHelper;->RECURRENCE_TABLE_CREATE:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x0

    const/16 v1, 0xf

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 233
    return-void
.end method

.method private createDatabaseTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 309
    sget-object v10, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Creating database tables"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-object v10, Lorg/gnucash/android/db/DatabaseHelper;->ACCOUNTS_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 311
    sget-object v10, Lorg/gnucash/android/db/DatabaseHelper;->TRANSACTIONS_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    sget-object v10, Lorg/gnucash/android/db/DatabaseHelper;->SPLITS_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    sget-object v10, Lorg/gnucash/android/db/DatabaseHelper;->SCHEDULED_ACTIONS_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    sget-object v10, Lorg/gnucash/android/db/DatabaseHelper;->COMMODITIES_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 315
    sget-object v10, Lorg/gnucash/android/db/DatabaseHelper;->PRICES_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 316
    sget-object v10, Lorg/gnucash/android/db/DatabaseHelper;->RECURRENCE_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    sget-object v10, Lorg/gnucash/android/db/DatabaseHelper;->BUDGETS_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    sget-object v10, Lorg/gnucash/android/db/DatabaseHelper;->BUDGET_AMOUNTS_TABLE_CREATE:Ljava/lang/String;

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 321
    const-string v0, "CREATE UNIQUE INDEX \'account_uid_index\' ON accounts(uid)"

    .line 324
    .local v0, "createAccountUidIndex":Ljava/lang/String;
    const-string v8, "CREATE UNIQUE INDEX \'transaction_uid_index\' ON transactions(uid)"

    .line 327
    .local v8, "createTransactionUidIndex":Ljava/lang/String;
    const-string v7, "CREATE UNIQUE INDEX \'split_uid_index\' ON splits(uid)"

    .line 330
    .local v7, "createSplitUidIndex":Ljava/lang/String;
    const-string v6, "CREATE UNIQUE INDEX \'scheduled_action_uid_index\' ON scheduled_actions(uid)"

    .line 333
    .local v6, "createScheduledEventUidIndex":Ljava/lang/String;
    const-string v3, "CREATE UNIQUE INDEX \'commodities_uid_index\' ON commodities(uid)"

    .line 336
    .local v3, "createCommodityUidIndex":Ljava/lang/String;
    const-string v4, "CREATE UNIQUE INDEX \'prices_uid_index\' ON prices(uid)"

    .line 339
    .local v4, "createPriceUidIndex":Ljava/lang/String;
    const-string v2, "CREATE UNIQUE INDEX \'budgets_uid_index\' ON budgets(uid)"

    .line 342
    .local v2, "createBudgetUidIndex":Ljava/lang/String;
    const-string v1, "CREATE UNIQUE INDEX \'budget_amounts_uid_index\' ON budget_amounts(uid)"

    .line 345
    .local v1, "createBudgetAmountUidIndex":Ljava/lang/String;
    const-string v5, "CREATE UNIQUE INDEX \'recurrence_uid_index\' ON recurrences(uid)"

    .line 348
    .local v5, "createRecurrenceUidIndex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 359
    :try_start_0
    invoke-static {p1}, Lorg/gnucash/android/db/MigrationHelper;->importCommodities(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 365
    return-void

    .line 360
    :catch_0
    move-exception v9

    .line 361
    .local v9, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v10, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Error loading currencies into the database"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 360
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    goto :goto_0

    :catch_2
    move-exception v9

    goto :goto_0
.end method

.method static createUpdatedAtTrigger(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER update_time_trigger   AFTER UPDATE ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FOR EACH ROW  BEGIN UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "modified_at"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = CURRENT_TIMESTAMP  WHERE OLD."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = NEW."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  END;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lorg/gnucash/android/db/DatabaseHelper;->createDatabaseTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 254
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 259
    const-string v0, "PRAGMA foreign_keys=ON"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 264
    sget-object v4, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading database from version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Upgrading GnuCash database"

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 274
    if-le p2, p3, :cond_0

    .line 275
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Database downgrades are not supported at the moment"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 278
    :cond_0
    :goto_0
    if-ge p2, p3, :cond_1

    .line 280
    :try_start_0
    const-class v4, Lorg/gnucash/android/db/MigrationHelper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upgradeDbToVersion"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/database/sqlite/SQLiteDatabase;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 281
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 282
    .local v3, "result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result p2

    goto :goto_0

    .line 284
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Database upgrade method upgradeToVersion%d(SQLiteDatabase) definition not found "

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "msg":Ljava/lang/String;
    sget-object v4, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 288
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 289
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 290
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v2    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "Database upgrade to version %d failed. The upgrade method is inaccessible "

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .restart local v2    # "msg":Ljava/lang/String;
    sget-object v4, Lorg/gnucash/android/db/DatabaseHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 294
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 295
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 296
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "msg":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 298
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 301
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    return-void
.end method
