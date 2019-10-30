.class public Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;
.super Landroid/app/Activity;
.source "WidgetConfigurationActivity.java"


# instance fields
.field private mAccountsCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field mAccountsSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ed
    .end annotation
.end field

.field private mAppWidgetId:I

.field mBooksSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ef
    .end annotation
.end field

.field mCancelButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090038
    .end annotation
.end field

.field mHideAccountBalance:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fa
    .end annotation
.end field

.field mOkButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;Lorg/gnucash/android/db/adapter/AccountsDbAdapter;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;
    .param p1, "x1"    # Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)Landroid/support/v4/widget/SimpleCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAccountsCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    .prologue
    .line 71
    iget v0, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$202(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAppWidgetId:I

    return p1
.end method

.method private bindListeners()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mBooksSpinner:Landroid/widget/Spinner;

    new-instance v1, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$1;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$1;-><init>(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 156
    iget-object v0, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$2;-><init>(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$3;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$3;-><init>(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method public static configureWidget(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "bookUID"    # Ljava/lang/String;
    .param p3, "accountUID"    # Ljava/lang/String;
    .param p4, "hideAccountBalance"    # Z

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "book_uid"

    .line 207
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account_uid"

    .line 208
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hide_account_balance"

    .line 209
    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 211
    return-void
.end method

.method private static loadOldPreferences(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 232
    invoke-static {}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getActiveBookSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 233
    .local v3, "preferences":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "accountUID":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "bookUID":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hide_account_balance"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 237
    .local v2, "hideAccountBalance":Z
    invoke-static {p0, p1, v1, v0, v2}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->configureWidget(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 238
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_uid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hide_account_balance"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 241
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    .end local v1    # "bookUID":Ljava/lang/String;
    .end local v2    # "hideAccountBalance":Z
    :cond_0
    return-void
.end method

.method public static removeWidgetConfiguration(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 223
    return-void
.end method

.method public static updateAllWidgets(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    const-string v3, "WidgetConfiguration"

    const-string v4, "Updating all widgets"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 341
    .local v2, "widgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lorg/gnucash/android/receivers/TransactionAppWidgetProvider;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 346
    .local v0, "appWidgetIds":[I
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$4;

    invoke-direct {v4, v0, p0}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$4;-><init>([ILandroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 353
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 354
    return-void
.end method

.method public static updateWidget(Landroid/content/Context;I)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 252
    const-string v6, "WidgetConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating widget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    .line 255
    .local v14, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-static/range {p0 .. p1}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->loadOldPreferences(Landroid/content/Context;I)V

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "widget:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 258
    .local v22, "preferences":Landroid/content/SharedPreferences;
    const-string v6, "book_uid"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 259
    .local v15, "bookUID":Ljava/lang/String;
    const-string v6, "account_uid"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "accountUID":Ljava/lang/String;
    const-string v6, "hide_account_balance"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 262
    .local v19, "hideAccountBalance":Z
    if-eqz v15, :cond_0

    if-nez v5, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    new-instance v4, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-static {v15}, Lorg/gnucash/android/db/BookDbHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 270
    .local v4, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    :try_start_0
    invoke-virtual {v4, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v10

    check-cast v10, Lorg/gnucash/android/model/Account;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .local v10, "account":Lorg/gnucash/android/model/Account;
    new-instance v23, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b00c7

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 292
    .local v23, "views":Landroid/widget/RemoteViews;
    const v6, 0x7f090009

    invoke-virtual {v10}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 294
    const-wide/16 v6, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountBalance(Ljava/lang/String;JJ)Lorg/gnucash/android/model/Money;

    move-result-object v11

    .line 296
    .local v11, "accountBalance":Lorg/gnucash/android/model/Money;
    if-eqz v19, :cond_2

    .line 297
    const v6, 0x7f090216

    const/16 v7, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 306
    :goto_1
    new-instance v13, Landroid/content/Intent;

    const-class v6, Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v13, "accountViewIntent":Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v13, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const v6, 0x10008000

    invoke-virtual {v13, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    const-string v6, "account_uid"

    invoke-virtual {v13, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v6, "book_uid"

    invoke-virtual {v13, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const/4 v6, 0x0

    .line 312
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v13, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 313
    .local v12, "accountPendingIntent":Landroid/app/PendingIntent;
    const v6, 0x7f09025d

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 315
    invoke-virtual {v4, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->isPlaceholderAccount(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 316
    const v6, 0x7f090042

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 317
    const v6, 0x7f09003b

    const/16 v7, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 331
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 271
    .end local v10    # "account":Lorg/gnucash/android/model/Account;
    .end local v11    # "accountBalance":Lorg/gnucash/android/model/Money;
    .end local v12    # "accountPendingIntent":Landroid/app/PendingIntent;
    .end local v13    # "accountViewIntent":Landroid/content/Intent;
    .end local v23    # "views":Landroid/widget/RemoteViews;
    :catch_0
    move-exception v17

    .line 272
    .local v17, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "WidgetConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Account not found, resetting widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v23, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b00c7

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 276
    .restart local v23    # "views":Landroid/widget/RemoteViews;
    const v6, 0x7f090009

    const v7, 0x7f0f01ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 277
    const v6, 0x7f090216

    const-string v7, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 279
    const/4 v6, 0x0

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lorg/gnucash/android/ui/account/AccountsActivity;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    .line 281
    .local v21, "pendingIntent":Landroid/app/PendingIntent;
    const v6, 0x7f09025d

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 282
    const v6, 0x7f09003b

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 283
    move/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 284
    invoke-static {}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getActiveBookSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 285
    .local v18, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account_uid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 299
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    .end local v18    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v21    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v10    # "account":Lorg/gnucash/android/model/Account;
    .restart local v11    # "accountBalance":Lorg/gnucash/android/model/Money;
    :cond_2
    const v6, 0x7f090216

    .line 300
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v11, v7}, Lorg/gnucash/android/model/Money;->formattedString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 299
    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 301
    invoke-virtual {v11}, Lorg/gnucash/android/model/Money;->isNegative()Z

    move-result v6

    if-eqz v6, :cond_3

    const v16, 0x7f060061

    .line 302
    .local v16, "color":I
    :goto_3
    const v6, 0x7f090216

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_1

    .line 301
    .end local v16    # "color":I
    :cond_3
    const v16, 0x7f06005b

    goto :goto_3

    .line 319
    .restart local v12    # "accountPendingIntent":Landroid/app/PendingIntent;
    .restart local v13    # "accountViewIntent":Landroid/content/Intent;
    :cond_4
    new-instance v20, Landroid/content/Intent;

    const-class v6, Lorg/gnucash/android/ui/common/FormActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v20, "newTransactionIntent":Landroid/content/Intent;
    const-string v6, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const/high16 v6, 0x10000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    const-string v6, "form_type"

    sget-object v7, Lorg/gnucash/android/ui/common/FormActivity$FormType;->TRANSACTION:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v7}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v6, "book_uid"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v6, "account_uid"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const/4 v6, 0x0

    .line 326
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    .line 327
    .restart local v21    # "pendingIntent":Landroid/app/PendingIntent;
    const v6, 0x7f09003b

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 328
    const v6, 0x7f090042

    const/16 v7, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v1, 0x7f0b00c8

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->setContentView(I)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->setResult(I)V

    .line 91
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 93
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v8

    .line 94
    .local v8, "booksDbAdapter":Lorg/gnucash/android/db/adapter/BooksDbAdapter;
    invoke-virtual {v8}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->fetchAllRecords()Landroid/database/Cursor;

    move-result-object v3

    .line 95
    .local v3, "booksCursor":Landroid/database/Cursor;
    invoke-virtual {v8}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v9

    .line 98
    .local v9, "currentBookUID":Ljava/lang/String;
    const/4 v12, 0x0

    .line 99
    .local v12, "position":I
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "uid"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "bookUID":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    .end local v7    # "bookUID":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    const v2, 0x1090008

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "name"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x0

    const v6, 0x1020014

    aput v6, v5, v1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 110
    .local v0, "booksCursorAdapter":Landroid/support/v4/widget/SimpleCursorAdapter;
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->setDropDownViewResource(I)V

    .line 111
    iget-object v1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mBooksSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 112
    iget-object v1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mBooksSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 114
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 115
    iget-object v1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAllRecordsOrderedByFullName()Landroid/database/Cursor;

    move-result-object v10

    .line 117
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 118
    const v1, 0x7f0f007a

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 119
    invoke-virtual {p0}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->finish()V

    .line 122
    :cond_1
    new-instance v1, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    invoke-direct {v1, p0, v10}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAccountsCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 124
    iget-object v1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAccountsCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SimpleCursorAdapter;->setDropDownViewResource(I)V

    .line 125
    iget-object v1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAccountsSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mAccountsCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 127
    invoke-virtual {p0}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "enabled_passcode"

    const/4 v4, 0x0

    .line 128
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 129
    .local v11, "passcodeEnabled":Z
    iget-object v1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->mHideAccountBalance:Landroid/widget/CheckBox;

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 131
    invoke-direct {p0}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->bindListeners()V

    .line 132
    return-void

    .line 103
    .end local v0    # "booksCursorAdapter":Landroid/support/v4/widget/SimpleCursorAdapter;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "passcodeEnabled":Z
    .restart local v7    # "bookUID":Ljava/lang/String;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 104
    goto/16 :goto_0
.end method
