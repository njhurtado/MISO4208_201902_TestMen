.class public Lorg/gnucash/android/ui/transaction/TransactionsActivity;
.super Lorg/gnucash/android/ui/common/BaseDrawerActivity;
.source "TransactionsActivity.java"

# interfaces
.implements Lorg/gnucash/android/ui/common/Refreshable;
.implements Lorg/gnucash/android/ui/account/OnAccountClickedListener;
.implements Lorg/gnucash/android/ui/transaction/OnTransactionClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_NUM_PAGES:I = 0x2

.field private static final INDEX_SUB_ACCOUNTS_FRAGMENT:I = 0x0

.field private static final INDEX_TRANSACTIONS_FRAGMENT:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "TransactionsActivity"

.field private static mDayMonthDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private mAccountUID:Ljava/lang/String;

.field private mAccountsCursor:Landroid/database/Cursor;

.field private mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field mCreateFloatingButton:Landroid/support/design/widget/FloatingActionButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b9
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

.field private mIsPlaceholderAccount:Z

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field mSumTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090215
    .end annotation
.end field

.field mTabLayout:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e1
    .end annotation
.end field

.field mToolbarSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090209
    .end annotation
.end field

.field private mTransactionListNavigationListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090178
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, d MMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mDayMonthDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;-><init>()V

    .line 102
    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountsCursor:Landroid/database/Cursor;

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mFragmentPageReferenceMap:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity$1;-><init>(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTransactionListNavigationListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lorg/gnucash/android/ui/transaction/TransactionsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mIsPlaceholderAccount:Z

    return v0
.end method

.method static synthetic access$202(Lorg/gnucash/android/ui/transaction/TransactionsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mIsPlaceholderAccount:Z

    return p1
.end method

.method static synthetic access$300(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mFragmentPageReferenceMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static displayBalance(Landroid/widget/TextView;Lorg/gnucash/android/model/Money;)V
    .locals 4
    .param p0, "balanceTextView"    # Landroid/widget/TextView;
    .param p1, "balance"    # Lorg/gnucash/android/model/Money;

    .prologue
    .line 485
    invoke-virtual {p1}, Lorg/gnucash/android/model/Money;->formattedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 487
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lorg/gnucash/android/model/Money;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 490
    .local v1, "fontColor":I
    :goto_0
    invoke-virtual {p1}, Lorg/gnucash/android/model/Money;->asBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-nez v2, :cond_0

    .line 491
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 492
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    return-void

    .line 489
    .end local v1    # "fontColor":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getPrettyDateFormat(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dateMillis"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 504
    new-instance v8, Lorg/joda/time/LocalDate;

    invoke-direct {v8, p1, p2}, Lorg/joda/time/LocalDate;-><init>(J)V

    .line 505
    .local v8, "transactionTime":Lorg/joda/time/LocalDate;
    new-instance v7, Lorg/joda/time/LocalDate;

    invoke-direct {v7}, Lorg/joda/time/LocalDate;-><init>()V

    .line 506
    .local v7, "today":Lorg/joda/time/LocalDate;
    const/4 v6, 0x0

    .line 507
    .local v6, "prettyDateText":Ljava/lang/String;
    invoke-virtual {v7, v1}, Lorg/joda/time/LocalDate;->minusDays(I)Lorg/joda/time/LocalDate;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/joda/time/LocalDate;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {v7, v1}, Lorg/joda/time/LocalDate;->plusDays(I)Lorg/joda/time/LocalDate;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/joda/time/LocalDate;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 515
    :goto_0
    return-object v6

    .line 509
    :cond_0
    invoke-virtual {v8}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {v7}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 510
    sget-object v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mDayMonthDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 512
    :cond_1
    const v0, 0x10004

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private setTitleIndicatorColor()V
    .locals 3

    .prologue
    .line 362
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    invoke-static {v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getActiveAccountColorResource(Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, "iColor":I
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TabLayout;->setBackgroundColor(I)V

    .line 366
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 370
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0}, Lorg/gnucash/android/app/GnuCashApplication;->darken(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 371
    :cond_1
    return-void
.end method

.method private setupActionBarNavigation()V
    .locals 4

    .prologue
    .line 378
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAllRecordsOrderedByFullName()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountsCursor:Landroid/database/Cursor;

    .line 383
    new-instance v0, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    .line 384
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountsCursor:Landroid/database/Cursor;

    const v3, 0x7f0b001c

    invoke-direct {v0, v1, v2, v3}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 386
    .local v0, "mSpinnerAdapter":Landroid/widget/SpinnerAdapter;
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mToolbarSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 387
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mToolbarSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTransactionListNavigationListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 388
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 390
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->updateNavigationSelection()V

    .line 391
    return-void
.end method


# virtual methods
.method public accountSelected(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 539
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/transaction/TransactionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 540
    .local v0, "restartIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const-string v1, "account_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 543
    return-void
.end method

.method public createNewTransaction(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 520
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    .local v0, "createTransactionIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string v1, "account_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->TRANSACTION:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 525
    return-void
.end method

.method public editTransaction(Ljava/lang/String;)V
    .locals 3
    .param p1, "transactionUID"    # Ljava/lang/String;

    .prologue
    .line 529
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    .local v0, "createTransactionIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v1, "account_uid"

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v1, "selected_transaction_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->TRANSACTION:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 535
    return-void
.end method

.method public getContentView()I
    .locals 1

    .prologue
    .line 275
    const v0, 0x7f0b0026

    return v0
.end method

.method public getCurrentAccountUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 280
    const v0, 0x7f0f01e5

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 457
    if-nez p2, :cond_0

    .line 463
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->refresh()V

    .line 461
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->setupActionBarNavigation()V

    .line 462
    invoke-super {p0, p1, p2, p3}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 285
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 287
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 289
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_uid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    .line 290
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 292
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->isPlaceholderAccount(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mIsPlaceholderAccount:Z

    .line 294
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f0f0174

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 295
    iget-boolean v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mIsPlaceholderAccount:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f0f0175

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 299
    :cond_0
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->setupActionBarNavigation()V

    .line 301
    new-instance v0, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/gnucash/android/ui/transaction/TransactionsActivity$AccountViewPagerAdapter;-><init>(Lorg/gnucash/android/ui/transaction/TransactionsActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 302
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 303
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v1, v2}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 305
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lorg/gnucash/android/ui/transaction/TransactionsActivity$2;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity$2;-><init>(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 323
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getTransactionsCount(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    .line 324
    invoke-virtual {v0, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getSubAccountCount(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 325
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 330
    :goto_0
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mCreateFloatingButton:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lorg/gnucash/android/ui/transaction/TransactionsActivity$3;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity$3;-><init>(Lorg/gnucash/android/ui/transaction/TransactionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 467
    invoke-super {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onDestroy()V

    .line 468
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 469
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 429
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 451
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 431
    :sswitch_0
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_0

    .line 434
    :sswitch_1
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v2

    .line 435
    .local v2, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v0

    .line 436
    .local v0, "accountId":J
    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->isFavoriteAccount(Ljava/lang/String;)Z

    move-result v4

    .line 438
    .local v4, "isFavorite":Z
    const-string v7, "favorite"

    if-eqz v4, :cond_0

    const-string v5, "0"

    :goto_1
    invoke-virtual {v2, v0, v1, v7, v5}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->updateAccount(JLjava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->supportInvalidateOptionsMenu()V

    move v5, v6

    .line 440
    goto :goto_0

    .line 438
    :cond_0
    const-string v5, "1"

    goto :goto_1

    .line 443
    .end local v0    # "accountId":J
    .end local v2    # "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .end local v4    # "isFavorite":Z
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    .local v3, "editAccountIntent":Landroid/content/Intent;
    const-string v5, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const-string v5, "account_uid"

    iget-object v7, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v5, "form_type"

    sget-object v7, Lorg/gnucash/android/ui/common/FormActivity$FormType;->ACCOUNT:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v7}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const/16 v5, 0x10

    invoke-virtual {p0, v3, v5}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v5, v6

    .line 448
    goto :goto_0

    .line 429
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f090139 -> :sswitch_2
        0x7f09013b -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 414
    const v3, 0x7f09013b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 416
    .local v0, "favoriteAccountMenuItem":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 417
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    .line 423
    :goto_0
    return v3

    .line 419
    :cond_0
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v3

    iget-object v4, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->isFavoriteAccount(Ljava/lang/String;)Z

    move-result v2

    .line 421
    .local v2, "isFavoriteAccount":Z
    if-eqz v2, :cond_1

    const v1, 0x7f0800c6

    .line 422
    .local v1, "favoriteIcon":I
    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 423
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    goto :goto_0

    .line 421
    .end local v1    # "favoriteIcon":I
    :cond_1
    const v1, 0x7f0800c5

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 354
    invoke-super {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onResume()V

    .line 355
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->setTitleIndicatorColor()V

    .line 356
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->refresh(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->setTitleIndicatorColor()V

    .line 271
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 6
    .param p1, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mFragmentPageReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 257
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mFragmentPageReferenceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/ui/common/Refreshable;

    invoke-interface {v1, p1}, Lorg/gnucash/android/ui/common/Refreshable;->refresh(Ljava/lang/String;)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 263
    :cond_1
    new-instance v1, Lorg/gnucash/android/ui/util/AccountBalanceTask;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mSumTextView:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Lorg/gnucash/android/ui/util/AccountBalanceTask;-><init>(Landroid/widget/TextView;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/gnucash/android/ui/util/AccountBalanceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 265
    return-void
.end method

.method public updateNavigationSelection()V
    .locals 4

    .prologue
    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, "i":I
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAllRecordsOrderedByFullName()Landroid/database/Cursor;

    move-result-object v0

    .line 401
    .local v0, "accountsCursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    const-string v3, "uid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "uid":Ljava/lang/String;
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    iget-object v3, p0, Lorg/gnucash/android/ui/transaction/TransactionsActivity;->mToolbarSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 409
    .end local v2    # "uid":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 410
    return-void

    .line 407
    .restart local v2    # "uid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 408
    goto :goto_0
.end method
