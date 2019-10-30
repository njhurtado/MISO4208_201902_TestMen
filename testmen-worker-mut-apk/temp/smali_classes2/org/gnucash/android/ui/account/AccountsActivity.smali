.class public Lorg/gnucash/android/ui/account/AccountsActivity;
.super Lorg/gnucash/android/ui/common/BaseDrawerActivity;
.source "AccountsActivity.java"

# interfaces
.implements Lorg/gnucash/android/ui/account/OnAccountClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_NUM_PAGES:I = 0x3

.field public static final EXTRA_TAB_INDEX:Ljava/lang/String; = "org.gnucash.android.extra.TAB_INDEX"

.field public static final INDEX_FAVORITE_ACCOUNTS_FRAGMENT:I = 0x2

.field public static final INDEX_RECENT_ACCOUNTS_FRAGMENT:I = 0x0

.field public static final INDEX_TOP_LEVEL_ACCOUNTS_FRAGMENT:I = 0x1

.field public static final LAST_OPEN_TAB_INDEX:Ljava/lang/String; = "last_open_tab"

.field protected static final LOG_TAG:Ljava/lang/String; = "AccountsActivity"

.field public static final REQUEST_EDIT_ACCOUNT:I = 0x10

.field public static final REQUEST_PICK_ACCOUNTS_FILE:I = 0x1

.field public static rateAppConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;


# instance fields
.field mCoordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090074
    .end annotation
.end field

.field mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b7
    .end annotation
.end field

.field private mFragmentPageReferenceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/gnucash/android/ui/common/Refreshable;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerAdapter:Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;

.field mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090178
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Lcom/kobakei/ratethisapp/RateThisApp$Config;

    const/16 v1, 0xe

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/kobakei/ratethisapp/RateThisApp$Config;-><init>(II)V

    sput-object v0, Lorg/gnucash/android/ui/account/AccountsActivity;->rateAppConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;-><init>()V

    .line 129
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mFragmentPageReferenceMap:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/account/AccountsActivity;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/AccountsActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mFragmentPageReferenceMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static createDefaultAccounts(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 5
    .param p0, "currencyCode"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "delegate":Lorg/gnucash/android/ui/util/TaskDelegate;
    if-eqz p0, :cond_0

    .line 439
    new-instance v0, Lorg/gnucash/android/ui/account/AccountsActivity$4;

    .end local v0    # "delegate":Lorg/gnucash/android/ui/util/TaskDelegate;
    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/account/AccountsActivity$4;-><init>(Ljava/lang/String;)V

    .line 448
    .restart local v0    # "delegate":Lorg/gnucash/android/ui/util/TaskDelegate;
    :cond_0
    const-string v2, "android.resource://org.gnucash.android/2131623936"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 449
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Lorg/gnucash/android/importer/ImportAsyncTask;

    invoke-direct {v2, p1, v0}, Lorg/gnucash/android/importer/ImportAsyncTask;-><init>(Landroid/app/Activity;Lorg/gnucash/android/ui/util/TaskDelegate;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lorg/gnucash/android/importer/ImportAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 450
    return-void
.end method

.method private handleOpenFileIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 288
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 289
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 290
    invoke-static {}, Lorg/gnucash/android/util/BackupManager;->backupActiveBook()Z

    .line 291
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 292
    new-instance v1, Lorg/gnucash/android/importer/ImportAsyncTask;

    invoke-direct {v1, p0}, Lorg/gnucash/android/importer/ImportAsyncTask;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/gnucash/android/importer/ImportAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 293
    invoke-static {}, Lorg/gnucash/android/ui/account/AccountsActivity;->removeFirstRunFlag()V

    .line 295
    :cond_0
    return-void
.end method

.method private hasNewFeatures()Z
    .locals 9

    .prologue
    const v8, 0x7f0f00b6

    const/4 v5, 0x0

    .line 361
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0024

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "minorVersion":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, "currentMinor":I
    invoke-static {p0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 365
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0, v8}, Lorg/gnucash/android/ui/account/AccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 366
    .local v4, "previousMinor":I
    if-le v0, v4, :cond_0

    .line 367
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 368
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, v8}, Lorg/gnucash/android/ui/account/AccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 370
    const/4 v5, 0x1

    .line 372
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v5
.end method

.method public static importXmlFileFromIntent(Landroid/app/Activity;Landroid/content/Intent;Lorg/gnucash/android/ui/util/TaskDelegate;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "onFinishTask"    # Lorg/gnucash/android/ui/util/TaskDelegate;

    .prologue
    .line 503
    invoke-static {}, Lorg/gnucash/android/util/BackupManager;->backupActiveBook()Z

    .line 504
    new-instance v0, Lorg/gnucash/android/importer/ImportAsyncTask;

    invoke-direct {v0, p0, p2}, Lorg/gnucash/android/importer/ImportAsyncTask;-><init>(Landroid/app/Activity;Lorg/gnucash/android/ui/util/TaskDelegate;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/gnucash/android/importer/ImportAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 505
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 326
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f120006

    invoke-static {p0, v2, v3, v4, v5}, Landroid/support/v7/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 329
    invoke-static {p0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 330
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const v2, 0x7f0f00ab

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/account/AccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 332
    .local v0, "firstRun":Z
    if-eqz v0, :cond_0

    .line 333
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lorg/gnucash/android/ui/wizard/FirstRunWizardActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/account/AccountsActivity;->startActivity(Landroid/content/Intent;)V

    .line 336
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const v3, 0x7f0f00bb

    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/account/AccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 337
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->finish()V

    .line 346
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-direct {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->hasNewFeatures()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    invoke-static {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->showWhatsNewDialog(Landroid/content/Context;)Landroid/app/AlertDialog;

    .line 344
    :cond_1
    invoke-static {p0}, Lorg/gnucash/android/app/GnuCashApplication;->startScheduledActionExecutionService(Landroid/content/Context;)V

    .line 345
    invoke-static {p0}, Lorg/gnucash/android/util/BackupManager;->schedulePeriodicBackups(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static openExportFragment(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 3
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;

    .prologue
    .line 406
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->EXPORT:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 409
    return-void
.end method

.method public static removeFirstRunFlag()V
    .locals 4

    .prologue
    .line 532
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 533
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 534
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const v2, 0x7f0f00ab

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 535
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 536
    return-void
.end method

.method public static showWhatsNewDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 380
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/StringBuilder;

    const v4, 0x7f0f01eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .local v2, "releaseTitle":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 384
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v4, " - v"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0265

    .line 392
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f00d6

    new-instance v6, Lorg/gnucash/android/ui/account/AccountsActivity$3;

    invoke-direct {v6}, Lorg/gnucash/android/ui/account/AccountsActivity$3;-><init>()V

    .line 393
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 399
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    .line 390
    return-object v4

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 387
    const-string v4, "AccountsActivity"

    const-string v5, "Error displaying \'Whats new\' dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 512
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/gnucash/android/ui/account/AccountsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    .local v0, "accountsActivityIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 514
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 516
    return-void
.end method

.method public static startXmlFileChooser(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    .line 460
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v2, "pickIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const-string v3, "*/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v3, "Select GnuCash account file"

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 466
    .local v0, "chooser":Landroid/content/Intent;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "No file manager for selecting files available"

    invoke-static {v3}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 469
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 470
    const v3, 0x7f0f01fc

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static startXmlFileChooser(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v5, 0x1

    .line 481
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v2, "pickIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v3, "*/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v3, "Select GnuCash account file"

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 487
    .local v0, "chooser":Landroid/content/Intent;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v1

    .line 489
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "No file manager for selecting files available"

    invoke-static {v3}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 490
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 491
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0f01fc

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public accountSelected(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 520
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string v1, "account_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/account/AccountsActivity;->startActivity(Landroid/content/Intent;)V

    .line 525
    return-void
.end method

.method public getContentView()I
    .locals 1

    .prologue
    .line 213
    const v0, 0x7f0b001e

    return v0
.end method

.method public getCurrentAccountListFragment()Lorg/gnucash/android/ui/account/AccountsListFragment;
    .locals 3

    .prologue
    .line 204
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 205
    .local v1, "index":I
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mFragmentPageReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 206
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 207
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mPagerAdapter:Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;

    invoke-virtual {v2, v1}, Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 208
    :cond_0
    check-cast v0, Lorg/gnucash/android/ui/account/AccountsListFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 218
    const v0, 0x7f0f01a2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/account/AccountsActivity;->handleOpenFileIntent(Landroid/content/Intent;)V

    .line 228
    invoke-direct {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->init()V

    .line 230
    const v2, 0x7f0901e1

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/account/AccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    .line 231
    .local v1, "tabLayout":Landroid/support/design/widget/TabLayout;
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    const v3, 0x7f0f01d3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 232
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    const v3, 0x7f0f01a4

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 233
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    const v3, 0x7f0f01c5

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 234
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 237
    new-instance v2, Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;-><init>(Lorg/gnucash/android/ui/account/AccountsActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mPagerAdapter:Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;

    .line 238
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mPagerAdapter:Lorg/gnucash/android/ui/account/AccountsActivity$AccountViewPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 240
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v3, v1}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 241
    new-instance v2, Lorg/gnucash/android/ui/account/AccountsActivity$1;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/account/AccountsActivity$1;-><init>(Lorg/gnucash/android/ui/account/AccountsActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 258
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->setCurrentTab()V

    .line 260
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    new-instance v3, Lorg/gnucash/android/ui/account/AccountsActivity$2;

    invoke-direct {v3, p0}, Lorg/gnucash/android/ui/account/AccountsActivity$2;-><init>(Lorg/gnucash/android/ui/account/AccountsActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 413
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 414
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0c0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 415
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 350
    invoke-super {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onDestroy()V

    .line 351
    invoke-static {p0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 352
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_open_tab"

    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 353
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 299
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 300
    invoke-virtual {p0, p1}, Lorg/gnucash/android/ui/account/AccountsActivity;->setIntent(Landroid/content/Intent;)V

    .line 301
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->setCurrentTab()V

    .line 303
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 304
    .local v1, "index":I
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mFragmentPageReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 305
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 306
    check-cast v0, Lorg/gnucash/android/ui/common/Refreshable;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0}, Lorg/gnucash/android/ui/common/Refreshable;->refresh()V

    .line 308
    :cond_0
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/account/AccountsActivity;->handleOpenFileIntent(Landroid/content/Intent;)V

    .line 309
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 420
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 425
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 422
    :pswitch_0
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onStart()V

    .line 276
    sget-object v0, Lorg/gnucash/android/ui/account/AccountsActivity;->rateAppConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v0}, Lcom/kobakei/ratethisapp/RateThisApp;->init(Lcom/kobakei/ratethisapp/RateThisApp$Config;)V

    .line 277
    invoke-static {p0}, Lcom/kobakei/ratethisapp/RateThisApp;->onStart(Landroid/content/Context;)V

    .line 278
    invoke-static {p0}, Lcom/kobakei/ratethisapp/RateThisApp;->showRateDialogIfNeeded(Landroid/content/Context;)Z

    .line 280
    return-void
.end method

.method public setCurrentTab()V
    .locals 5

    .prologue
    .line 315
    invoke-static {p0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 316
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "last_open_tab"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 317
    .local v1, "lastTabIndex":I
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "org.gnucash.android.extra.TAB_INDEX"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 318
    .local v0, "index":I
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 319
    return-void
.end method
