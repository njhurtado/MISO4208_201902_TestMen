.class public Lorg/gnucash/android/ui/report/ReportsActivity;
.super Lorg/gnucash/android/ui/common/BaseDrawerActivity;
.source "ReportsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;
.implements Lorg/gnucash/android/ui/common/Refreshable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final COLORS:[I

.field private static final STATE_REPORT_TYPE:Ljava/lang/String; = "STATE_REPORT_TYPE"


# instance fields
.field private mAccountType:Lorg/gnucash/android/model/AccountType;

.field mAccountTypeSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090198
    .end annotation
.end field

.field private mReportGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

.field private mReportPeriodEnd:J

.field private mReportPeriodStart:J

.field private mReportType:Lorg/gnucash/android/ui/report/ReportType;

.field mReportTypeSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mReportTypeSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090209
    .end annotation
.end field

.field private mReportsOverviewFragment:Lorg/gnucash/android/ui/report/ReportsOverviewFragment;

.field private mSkipNextReportTypeSelectedRun:Z

.field mTimeRangeSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901fd
    .end annotation
.end field

.field private mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    const-class v0, Lorg/gnucash/android/ui/report/ReportsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/report/ReportsActivity;->$assertionsDisabled:Z

    .line 68
    const/16 v0, 0x15

    new-array v0, v0, [I

    const-string v3, "#17ee4e"

    .line 69
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    const-string v2, "#cc1f09"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#3940f7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#f9cd04"

    .line 70
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#5f33a8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "#e005b6"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#17d6ed"

    .line 71
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "#e4a9a2"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#8fe6cd"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#8b48fb"

    .line 72
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "#343a36"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "#6decb1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "#f0f8ff"

    .line 73
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "#5c3378"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "#a6dcfd"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "#ba037c"

    .line 74
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "#708809"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "#32072c"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "#fddef8"

    .line 75
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "#fa0e6e"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "#d9e7b5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lorg/gnucash/android/ui/report/ReportsActivity;->COLORS:[I

    .line 68
    return-void

    :cond_0
    move v0, v2

    .line 64
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;-><init>()V

    .line 84
    sget-object v0, Lorg/gnucash/android/model/AccountType;->EXPENSE:Lorg/gnucash/android/model/AccountType;

    iput-object v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mAccountType:Lorg/gnucash/android/model/AccountType;

    .line 85
    sget-object v0, Lorg/gnucash/android/ui/report/ReportType;->NONE:Lorg/gnucash/android/ui/report/ReportType;

    iput-object v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportType:Lorg/gnucash/android/ui/report/ReportType;

    .line 91
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0}, Lorg/joda/time/LocalDate;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/joda/time/LocalDate;->minusMonths(I)Lorg/joda/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->dayOfMonth()Lorg/joda/time/LocalDate$Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDate$Property;->withMinimumValue()Lorg/joda/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodStart:J

    .line 92
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0}, Lorg/joda/time/LocalDate;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/joda/time/LocalDate;->plusDays(I)Lorg/joda/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodEnd:J

    .line 94
    sget-object v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->MONTH:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    iput-object v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mSkipNextReportTypeSelectedRun:Z

    .line 97
    new-instance v0, Lorg/gnucash/android/ui/report/ReportsActivity$1;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/report/ReportsActivity$1;-><init>(Lorg/gnucash/android/ui/report/ReportsActivity;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportTypeSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/report/ReportsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/report/ReportsActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mSkipNextReportTypeSelectedRun:Z

    return v0
.end method

.method static synthetic access$002(Lorg/gnucash/android/ui/report/ReportsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/report/ReportsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mSkipNextReportTypeSelectedRun:Z

    return p1
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/report/ReportsActivity;)Lorg/gnucash/android/ui/report/ReportType;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/report/ReportsActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportType:Lorg/gnucash/android/ui/report/ReportType;

    return-object v0
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/report/ReportsActivity;Lorg/gnucash/android/ui/report/BaseReportFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/report/ReportsActivity;
    .param p1, "x1"    # Lorg/gnucash/android/ui/report/BaseReportFragment;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/report/ReportsActivity;->loadFragment(Lorg/gnucash/android/ui/report/BaseReportFragment;)V

    return-void
.end method

.method static synthetic access$302(Lorg/gnucash/android/ui/report/ReportsActivity;Lorg/gnucash/android/model/AccountType;)Lorg/gnucash/android/model/AccountType;
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/report/ReportsActivity;
    .param p1, "x1"    # Lorg/gnucash/android/model/AccountType;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mAccountType:Lorg/gnucash/android/model/AccountType;

    return-object p1
.end method

.method static synthetic access$400(Lorg/gnucash/android/ui/report/ReportsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/report/ReportsActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->updateAccountTypeOnFragments()V

    return-void
.end method

.method private loadFragment(Lorg/gnucash/android/ui/report/BaseReportFragment;)V
    .locals 3
    .param p1, "fragment"    # Lorg/gnucash/android/ui/report/BaseReportFragment;

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 189
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 191
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0900c8

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 192
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 193
    return-void
.end method

.method private updateAccountTypeOnFragments()V
    .locals 4

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 259
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 260
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v3, v0, Lorg/gnucash/android/ui/report/ReportOptionsListener;

    if-eqz v3, :cond_0

    .line 261
    check-cast v0, Lorg/gnucash/android/ui/report/ReportOptionsListener;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    iget-object v3, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mAccountType:Lorg/gnucash/android/model/AccountType;

    invoke-interface {v0, v3}, Lorg/gnucash/android/ui/report/ReportOptionsListener;->onAccountTypeUpdated(Lorg/gnucash/android/model/AccountType;)V

    goto :goto_0

    .line 264
    :cond_1
    return-void
.end method

.method private updateDateRangeOnFragment()V
    .locals 8

    .prologue
    .line 246
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 247
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 248
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v3, v0, Lorg/gnucash/android/ui/report/ReportOptionsListener;

    if-eqz v3, :cond_0

    .line 249
    check-cast v0, Lorg/gnucash/android/ui/report/ReportOptionsListener;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    iget-wide v4, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodStart:J

    iget-wide v6, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodEnd:J

    invoke-interface {v0, v4, v5, v6, v7}, Lorg/gnucash/android/ui/report/ReportOptionsListener;->onTimeRangeUpdated(JJ)V

    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method

.method private updateGroupingOnFragments()V
    .locals 4

    .prologue
    .line 270
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 271
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 272
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v3, v0, Lorg/gnucash/android/ui/report/ReportOptionsListener;

    if-eqz v3, :cond_0

    .line 273
    check-cast v0, Lorg/gnucash/android/ui/report/ReportOptionsListener;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    iget-object v3, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    invoke-interface {v0, v3}, Lorg/gnucash/android/ui/report/ReportOptionsListener;->onGroupingUpdated(Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;)V

    goto :goto_0

    .line 276
    :cond_1
    return-void
.end method


# virtual methods
.method public getAccountType()Lorg/gnucash/android/model/AccountType;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mAccountType:Lorg/gnucash/android/model/AccountType;

    return-object v0
.end method

.method public getContentView()I
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f0b0022

    return v0
.end method

.method public getReportPeriodEnd()J
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodEnd:J

    return-wide v0
.end method

.method public getReportPeriodStart()J
    .locals 2

    .prologue
    .line 390
    iget-wide v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodStart:J

    return-wide v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 122
    const v0, 0x7f0f01d7

    return v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 176
    instance-of v1, p1, Lorg/gnucash/android/ui/report/BaseReportFragment;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 177
    check-cast v0, Lorg/gnucash/android/ui/report/BaseReportFragment;

    .line 178
    .local v0, "reportFragment":Lorg/gnucash/android/ui/report/BaseReportFragment;
    invoke-virtual {v0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->getReportType()Lorg/gnucash/android/ui/report/ReportType;

    move-result-object v1

    invoke-virtual {v0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->getTitle()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/report/ReportsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/gnucash/android/ui/report/ReportsActivity;->updateReportTypeSpinner(Lorg/gnucash/android/ui/report/ReportType;Ljava/lang/String;)V

    .line 180
    .end local v0    # "reportFragment":Lorg/gnucash/android/ui/report/BaseReportFragment;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x1090009

    const v4, 0x1090008

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const-string v2, "STATE_REPORT_TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/ui/report/ReportType;

    iput-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportType:Lorg/gnucash/android/ui/report/ReportType;

    .line 131
    :cond_0
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    .line 134
    const v2, 0x7f030016

    invoke-static {p0, v2, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 136
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 137
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mTimeRangeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 138
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mTimeRangeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 139
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mTimeRangeSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 141
    const v2, 0x7f030015

    invoke-static {p0, v2, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 143
    .local v1, "dataAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 144
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mAccountTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 145
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mAccountTypeSpinner:Landroid/widget/Spinner;

    new-instance v3, Lorg/gnucash/android/ui/report/ReportsActivity$2;

    invoke-direct {v3, p0}, Lorg/gnucash/android/ui/report/ReportsActivity$2;-><init>(Lorg/gnucash/android/ui/report/ReportsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 165
    new-instance v2, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;

    invoke-direct {v2}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;-><init>()V

    iput-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportsOverviewFragment:Lorg/gnucash/android/ui/report/ReportsOverviewFragment;

    .line 167
    if-nez p1, :cond_1

    .line 168
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportsOverviewFragment:Lorg/gnucash/android/ui/report/ReportsOverviewFragment;

    invoke-direct {p0, v2}, Lorg/gnucash/android/ui/report/ReportsActivity;->loadFragment(Lorg/gnucash/android/ui/report/BaseReportFragment;)V

    .line 170
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public onDateRangeSet(Ljava/util/Date;Ljava/util/Date;)V
    .locals 2
    .param p1, "startDate"    # Ljava/util/Date;
    .param p2, "endDate"    # Ljava/util/Date;

    .prologue
    .line 367
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodStart:J

    .line 368
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodEnd:J

    .line 369
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->updateDateRangeOnFragment()V

    .line 371
    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 359
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 360
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 361
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodStart:J

    .line 362
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->updateDateRangeOnFragment()V

    .line 363
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 319
    new-instance v4, Lorg/joda/time/LocalDate;

    invoke-direct {v4}, Lorg/joda/time/LocalDate;-><init>()V

    invoke-virtual {v4, v6}, Lorg/joda/time/LocalDate;->plusDays(I)Lorg/joda/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodEnd:J

    .line 320
    packed-switch p3, :pswitch_data_0

    .line 347
    :goto_0
    if-eq p3, v7, :cond_0

    .line 348
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->updateDateRangeOnFragment()V

    .line 350
    :cond_0
    return-void

    .line 322
    :pswitch_0
    new-instance v4, Lorg/joda/time/LocalDate;

    invoke-direct {v4}, Lorg/joda/time/LocalDate;-><init>()V

    invoke-virtual {v4}, Lorg/joda/time/LocalDate;->dayOfMonth()Lorg/joda/time/LocalDate$Property;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/LocalDate$Property;->withMinimumValue()Lorg/joda/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodStart:J

    goto :goto_0

    .line 325
    :pswitch_1
    new-instance v4, Lorg/joda/time/LocalDate;

    invoke-direct {v4}, Lorg/joda/time/LocalDate;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/joda/time/LocalDate;->minusMonths(I)Lorg/joda/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/LocalDate;->dayOfMonth()Lorg/joda/time/LocalDate$Property;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/LocalDate$Property;->withMinimumValue()Lorg/joda/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodStart:J

    goto :goto_0

    .line 328
    :pswitch_2
    new-instance v4, Lorg/joda/time/LocalDate;

    invoke-direct {v4}, Lorg/joda/time/LocalDate;-><init>()V

    invoke-virtual {v4, v7}, Lorg/joda/time/LocalDate;->minusMonths(I)Lorg/joda/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/LocalDate;->dayOfMonth()Lorg/joda/time/LocalDate$Property;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/LocalDate$Property;->withMinimumValue()Lorg/joda/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodStart:J

    goto :goto_0

    .line 331
    :pswitch_3
    new-instance v4, Lorg/joda/time/LocalDate;

    invoke-direct {v4}, Lorg/joda/time/LocalDate;-><init>()V

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lorg/joda/time/LocalDate;->minusMonths(I)Lorg/joda/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/LocalDate;->dayOfMonth()Lorg/joda/time/LocalDate$Property;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/LocalDate$Property;->withMinimumValue()Lorg/joda/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodStart:J

    goto :goto_0

    .line 334
    :pswitch_4
    iput-wide v8, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodStart:J

    .line 335
    iput-wide v8, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportPeriodEnd:J

    goto :goto_0

    .line 338
    :pswitch_5
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "mCurrencyCode":Ljava/lang/String;
    iget-object v4, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mTransactionsDbAdapter:Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    iget-object v5, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mAccountType:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v4, v5, v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getTimestampOfEarliestTransaction(Lorg/gnucash/android/model/AccountType;Ljava/lang/String;)J

    move-result-wide v0

    .line 340
    .local v0, "earliestTransactionTime":J
    new-instance v4, Lorg/joda/time/LocalDate;

    invoke-direct {v4}, Lorg/joda/time/LocalDate;-><init>()V

    .line 342
    invoke-virtual {v4, v6}, Lorg/joda/time/LocalDate;->plusDays(I)Lorg/joda/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 340
    invoke-static {v0, v1, v4, v5, p0}, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->newInstance(JJLorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;)Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    move-result-object v3

    .line 344
    .local v3, "rangeFragment":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "range_dialog"

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 395
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 396
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportType:Lorg/gnucash/android/ui/report/ReportType;

    sget-object v1, Lorg/gnucash/android/ui/report/ReportType;->NONE:Lorg/gnucash/android/ui/report/ReportType;

    if-eq v0, v1, :cond_0

    .line 397
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportsOverviewFragment:Lorg/gnucash/android/ui/report/ReportsOverviewFragment;

    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/report/ReportsActivity;->loadFragment(Lorg/gnucash/android/ui/report/BaseReportFragment;)V

    .line 398
    const/4 v0, 0x1

    .line 401
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 286
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 312
    :goto_0
    const/4 v0, 0x0

    :goto_1
    :sswitch_0
    return v0

    .line 291
    :sswitch_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 292
    sget-object v1, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->MONTH:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    iput-object v1, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    .line 293
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->updateGroupingOnFragments()V

    goto :goto_1

    .line 297
    :sswitch_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 298
    sget-object v1, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->QUARTER:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    iput-object v1, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    .line 299
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->updateGroupingOnFragments()V

    goto :goto_1

    .line 303
    :sswitch_3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 304
    sget-object v1, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->YEAR:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    iput-object v1, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    .line 305
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->updateGroupingOnFragments()V

    goto :goto_1

    .line 309
    :sswitch_4
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 286
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_4
        0x7f0900d1 -> :sswitch_1
        0x7f0900d2 -> :sswitch_2
        0x7f0900d3 -> :sswitch_3
        0x7f09013e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 424
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 426
    const-string v0, "STATE_REPORT_TYPE"

    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportType:Lorg/gnucash/android/ui/report/ReportType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 427
    return-void
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 406
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 407
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 408
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v3, v0, Lorg/gnucash/android/ui/common/Refreshable;

    if-eqz v3, :cond_0

    .line 409
    check-cast v0, Lorg/gnucash/android/ui/common/Refreshable;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0}, Lorg/gnucash/android/ui/common/Refreshable;->refresh()V

    goto :goto_0

    .line 412
    :cond_1
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->refresh()V

    .line 420
    return-void
.end method

.method public setAppBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 234
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 235
    .local v0, "resolvedColor":I
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 239
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0}, Lorg/gnucash/android/app/GnuCashApplication;->darken(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 240
    :cond_1
    return-void
.end method

.method public toggleToolbarTitleVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 220
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    sget-boolean v2, Lorg/gnucash/android/ui/report/ReportsActivity;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 222
    :cond_0
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportType:Lorg/gnucash/android/ui/report/ReportType;

    sget-object v3, Lorg/gnucash/android/ui/report/ReportType;->NONE:Lorg/gnucash/android/ui/report/ReportType;

    if-ne v2, v3, :cond_2

    .line 223
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportTypeSpinner:Landroid/widget/Spinner;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 227
    :goto_0
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportType:Lorg/gnucash/android/ui/report/ReportType;

    sget-object v3, Lorg/gnucash/android/ui/report/ReportType;->NONE:Lorg/gnucash/android/ui/report/ReportType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 228
    return-void

    .line 225
    :cond_2
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateReportTypeSpinner(Lorg/gnucash/android/ui/report/ReportType;Ljava/lang/String;)V
    .locals 5
    .param p1, "reportType"    # Lorg/gnucash/android/ui/report/ReportType;
    .param p2, "reportName"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportType:Lorg/gnucash/android/ui/report/ReportType;

    if-ne p1, v2, :cond_0

    .line 216
    :goto_0
    return-void

    .line 202
    :cond_0
    iput-object p1, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportType:Lorg/gnucash/android/ui/report/ReportType;

    .line 203
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 204
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    sget-boolean v2, Lorg/gnucash/android/ui/report/ReportsActivity;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 205
    :cond_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    iget-object v4, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportType:Lorg/gnucash/android/ui/report/ReportType;

    .line 207
    invoke-virtual {v4}, Lorg/gnucash/android/ui/report/ReportType;->getReportNames()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 209
    .local v1, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mSkipNextReportTypeSelectedRun:Z

    .line 210
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 211
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 212
    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportTypeSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lorg/gnucash/android/ui/report/ReportsActivity;->mReportTypeSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 215
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/ReportsActivity;->toggleToolbarTitleVisibility()V

    goto :goto_0
.end method
