.class public Lorg/gnucash/android/app/GnuCashApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "GnuCashApplication.java"


# static fields
.field public static final FILE_PROVIDER_AUTHORITY:Ljava/lang/String; = "org.gnucash.android.fileprovider"

.field public static PASSCODE_SESSION_INIT_TIME:J = 0x0L

.field public static final SESSION_TIMEOUT:J = 0x1388L

.field private static context:Landroid/content/Context;

.field private static mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field private static mBooksDbAdapter:Lorg/gnucash/android/db/adapter/BooksDbAdapter;

.field private static mBudgetAmountsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

.field private static mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

.field private static mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

.field private static mDbHelper:Lorg/gnucash/android/db/DatabaseHelper;

.field private static mPricesDbAdapter:Lorg/gnucash/android/db/adapter/PricesDbAdapter;

.field private static mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

.field private static mScheduledActionDbAdapter:Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

.field private static mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

.field private static mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/gnucash/android/app/GnuCashApplication;->PASSCODE_SESSION_INIT_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method public static darken(I)I
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 114
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 115
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 116
    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 117
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getAccountsDbAdapter()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    return-object v0
.end method

.method public static getActiveDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->mDbHelper:Lorg/gnucash/android/db/DatabaseHelper;

    invoke-virtual {v0}, Lorg/gnucash/android/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getBooksDbAdapter()Lorg/gnucash/android/db/adapter/BooksDbAdapter;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->mBooksDbAdapter:Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    return-object v0
.end method

.method public static getBudgetAmountsDbAdapter()Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->mBudgetAmountsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

    return-object v0
.end method

.method public static getBudgetDbAdapter()Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    return-object v0
.end method

.method public static getCommoditiesDbAdapter()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    return-object v0
.end method

.method public static getDefaultCurrencyCode()Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f0f009e

    .line 273
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v2

    .line 275
    .local v2, "locale":Ljava/util/Locale;
    const-string v0, "USD"

    .line 276
    .local v0, "currencyCode":Ljava/lang/String;
    sget-object v4, Lorg/gnucash/android/app/GnuCashApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 278
    .local v3, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 283
    sget-object v4, Lorg/gnucash/android/app/GnuCashApplication;->context:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 281
    sget-object v4, Lorg/gnucash/android/app/GnuCashApplication;->context:Landroid/content/Context;

    const v5, 0x7f0f0025

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    sget-object v4, Lorg/gnucash/android/app/GnuCashApplication;->context:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    goto :goto_0

    .line 283
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    sget-object v5, Lorg/gnucash/android/app/GnuCashApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    throw v4
.end method

.method public static getDefaultLocale()Ljava/util/Locale;
    .locals 4

    .prologue
    .line 312
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 314
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GB"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "locale":Ljava/util/Locale;
    .local v1, "locale":Ljava/util/Locale;
    move-object v0, v1

    .line 319
    .end local v1    # "locale":Ljava/util/Locale;
    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ES"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "locale":Ljava/util/Locale;
    .restart local v1    # "locale":Ljava/util/Locale;
    move-object v0, v1

    .line 323
    .end local v1    # "locale":Ljava/util/Locale;
    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 326
    :cond_2
    return-object v0
.end method

.method public static getPricesDbAdapter()Lorg/gnucash/android/db/adapter/PricesDbAdapter;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->mPricesDbAdapter:Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    return-object v0
.end method

.method public static getRecurrenceDbAdapter()Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    return-object v0
.end method

.method public static getScheduledEventDbAdapter()Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->mScheduledActionDbAdapter:Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    return-object v0
.end method

.method public static getSplitsDbAdapter()Lorg/gnucash/android/db/adapter/SplitsDbAdapter;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    return-object v0
.end method

.method public static getTransactionDbAdapter()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    return-object v0
.end method

.method public static initializeDatabaseAdapters()V
    .locals 5

    .prologue
    .line 145
    sget-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mDbHelper:Lorg/gnucash/android/db/DatabaseHelper;

    if-eqz v2, :cond_0

    .line 146
    sget-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mDbHelper:Lorg/gnucash/android/db/DatabaseHelper;

    invoke-virtual {v2}, Lorg/gnucash/android/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 150
    :cond_0
    :try_start_0
    new-instance v2, Lorg/gnucash/android/db/DatabaseHelper;

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lorg/gnucash/android/app/GnuCashApplication;->mBooksDbAdapter:Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    .line 151
    invoke-virtual {v4}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/gnucash/android/db/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mDbHelper:Lorg/gnucash/android/db/DatabaseHelper;
    :try_end_0
    .catch Lorg/gnucash/android/db/adapter/BooksDbAdapter$NoActiveBookFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .local v0, "e":Lorg/gnucash/android/db/adapter/BooksDbAdapter$NoActiveBookFoundException;
    :goto_0
    :try_start_1
    sget-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mDbHelper:Lorg/gnucash/android/db/DatabaseHelper;

    invoke-virtual {v2}, Lorg/gnucash/android/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 166
    .end local v0    # "e":Lorg/gnucash/android/db/adapter/BooksDbAdapter$NoActiveBookFoundException;
    .local v1, "mainDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    new-instance v2, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    invoke-direct {v2, v1}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    .line 167
    new-instance v2, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    sget-object v3, Lorg/gnucash/android/app/GnuCashApplication;->mSplitsDbAdapter:Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    invoke-direct {v2, v1, v3}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/SplitsDbAdapter;)V

    sput-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    .line 168
    new-instance v2, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    sget-object v3, Lorg/gnucash/android/app/GnuCashApplication;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-direct {v2, v1, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;)V

    sput-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 169
    new-instance v2, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    invoke-direct {v2, v1}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    .line 170
    new-instance v2, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    sget-object v3, Lorg/gnucash/android/app/GnuCashApplication;->mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    invoke-direct {v2, v1, v3}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;)V

    sput-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mScheduledActionDbAdapter:Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    .line 171
    new-instance v2, Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    invoke-direct {v2, v1}, Lorg/gnucash/android/db/adapter/PricesDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mPricesDbAdapter:Lorg/gnucash/android/db/adapter/PricesDbAdapter;

    .line 172
    new-instance v2, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    invoke-direct {v2, v1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    .line 173
    new-instance v2, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

    invoke-direct {v2, v1}, Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mBudgetAmountsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

    .line 174
    new-instance v2, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    sget-object v3, Lorg/gnucash/android/app/GnuCashApplication;->mBudgetAmountsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;

    sget-object v4, Lorg/gnucash/android/app/GnuCashApplication;->mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    invoke-direct {v2, v1, v3, v4}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/BudgetAmountsDbAdapter;Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;)V

    sput-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mBudgetsDbAdapter:Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    .line 175
    return-void

    .line 152
    .end local v1    # "mainDb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 153
    .restart local v0    # "e":Lorg/gnucash/android/db/adapter/BooksDbAdapter$NoActiveBookFoundException;
    sget-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mBooksDbAdapter:Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    invoke-virtual {v2}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->fixBooksDatabase()V

    .line 154
    new-instance v2, Lorg/gnucash/android/db/DatabaseHelper;

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lorg/gnucash/android/app/GnuCashApplication;->mBooksDbAdapter:Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    .line 155
    invoke-virtual {v4}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/gnucash/android/db/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mDbHelper:Lorg/gnucash/android/db/DatabaseHelper;

    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    .line 161
    .local v0, "e":Landroid/database/SQLException;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 162
    const-string v2, "GnuCashApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v2, Lorg/gnucash/android/app/GnuCashApplication;->mDbHelper:Lorg/gnucash/android/db/DatabaseHelper;

    invoke-virtual {v2}, Lorg/gnucash/android/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .restart local v1    # "mainDb":Landroid/database/sqlite/SQLiteDatabase;
    goto/16 :goto_1
.end method

.method public static isCrashlyticsEnabled()Z
    .locals 3

    .prologue
    .line 238
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lorg/gnucash/android/app/GnuCashApplication;->context:Landroid/content/Context;

    const v2, 0x7f0f00a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDoubleEntryEnabled()Z
    .locals 3

    .prologue
    .line 247
    invoke-static {}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getActiveBookSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 248
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    sget-object v1, Lorg/gnucash/android/app/GnuCashApplication;->context:Landroid/content/Context;

    const v2, 0x7f0f00bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static setDefaultCurrencyCode(Ljava/lang/String;)V
    .locals 3
    .param p0, "currencyCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f009e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 302
    sput-object p0, Lorg/gnucash/android/model/Money;->DEFAULT_CURRENCY_CODE:Ljava/lang/String;

    .line 303
    sget-object v0, Lorg/gnucash/android/app/GnuCashApplication;->mCommoditiesDbAdapter:Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    invoke-virtual {v0, p0}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    .line 304
    return-void
.end method

.method private setUpUserVoice()V
    .locals 3

    .prologue
    .line 361
    new-instance v0, Lcom/uservoice/uservoicesdk/Config;

    const-string v1, "gnucash.uservoice.com"

    invoke-direct {v0, v1}, Lcom/uservoice/uservoicesdk/Config;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "config":Lcom/uservoice/uservoicesdk/Config;
    const v1, 0x1a388

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/Config;->setTopicId(I)V

    .line 363
    const v1, 0x4e3ed

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/Config;->setForumId(I)V

    .line 364
    const-string v1, "app_version_name"

    const-string v2, "2.4.0"

    invoke-virtual {v0, v1, v2}, Lcom/uservoice/uservoicesdk/Config;->putUserTrait(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v1, "app_version_code"

    const/16 v2, 0x5dc3

    invoke-virtual {v0, v1, v2}, Lcom/uservoice/uservoicesdk/Config;->putUserTrait(Ljava/lang/String;I)V

    .line 366
    const-string v1, "android_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/uservoice/uservoicesdk/Config;->putUserTrait(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {v0, p0}, Lcom/uservoice/uservoicesdk/UserVoice;->init(Lcom/uservoice/uservoicesdk/Config;Landroid/content/Context;)V

    .line 369
    return-void
.end method

.method public static shouldSaveOpeningBalances(Z)Z
    .locals 3
    .param p0, "defaultValue"    # Z

    .prologue
    .line 258
    invoke-static {}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getActiveBookSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 259
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    sget-object v1, Lorg/gnucash/android/app/GnuCashApplication;->context:Landroid/content/Context;

    const v2, 0x7f0f00b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static startScheduledActionExecutionService(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 336
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lorg/gnucash/android/receivers/PeriodicJobReceiver;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .local v7, "alarmIntent":Landroid/content/Intent;
    const-string v1, "org.gnucash.android.action_scheduled_actions"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const/high16 v1, 0x20000000

    invoke-static {p0, v2, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 341
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v6, :cond_0

    .line 352
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-static {p0, v2, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 346
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 347
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v1, 0x2

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    .line 347
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 351
    invoke-static {p0}, Lorg/gnucash/android/service/ScheduledActionService;->enqueueWork(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 123
    invoke-virtual {p0}, Lorg/gnucash/android/app/GnuCashApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lorg/gnucash/android/app/GnuCashApplication;->context:Landroid/content/Context;

    .line 125
    new-array v3, v1, [Lio/fabric/sdk/android/Kit;

    new-instance v4, Lcom/crashlytics/android/Crashlytics$Builder;

    invoke-direct {v4}, Lcom/crashlytics/android/Crashlytics$Builder;-><init>()V

    new-instance v5, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    invoke-direct {v5}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;-><init>()V

    .line 126
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->isCrashlyticsEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    invoke-virtual {v5, v1}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled(Z)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->build()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v1

    .line 125
    invoke-virtual {v4, v1}, Lcom/crashlytics/android/Crashlytics$Builder;->core(Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/Crashlytics$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/crashlytics/android/Crashlytics$Builder;->build()Lcom/crashlytics/android/Crashlytics;

    move-result-object v1

    aput-object v1, v3, v2

    .line 125
    invoke-static {p0, v3}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 129
    invoke-direct {p0}, Lorg/gnucash/android/app/GnuCashApplication;->setUpUserVoice()V

    .line 131
    new-instance v0, Lorg/gnucash/android/db/BookDbHelper;

    invoke-virtual {p0}, Lorg/gnucash/android/app/GnuCashApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/gnucash/android/db/BookDbHelper;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "bookDbHelper":Lorg/gnucash/android/db/BookDbHelper;
    new-instance v1, Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/db/BookDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v1, Lorg/gnucash/android/app/GnuCashApplication;->mBooksDbAdapter:Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    .line 134
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->initializeDatabaseAdapters()V

    .line 135
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/gnucash/android/app/GnuCashApplication;->setDefaultCurrencyCode(Ljava/lang/String;)V

    .line 137
    invoke-static {p0}, Lorg/gnucash/android/app/StethoUtils;->install(Landroid/app/Application;)V

    .line 138
    return-void

    .end local v0    # "bookDbHelper":Lorg/gnucash/android/db/BookDbHelper;
    :cond_0
    move v1, v2

    .line 126
    goto :goto_0
.end method
