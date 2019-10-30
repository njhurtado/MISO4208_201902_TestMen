.class public abstract Lorg/gnucash/android/ui/report/BaseReportFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseReportFragment.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;
.implements Lorg/gnucash/android/ui/report/ReportOptionsListener;
.implements Lorg/gnucash/android/ui/common/Refreshable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NO_DATA_COLOR:I = -0x333334

.field public static final SELECTED_VALUE_PATTERN:Ljava/lang/String; = "%s - %.2f (%.2f %%)"

.field protected static TAG:Ljava/lang/String;


# instance fields
.field protected mAccountType:Lorg/gnucash/android/model/AccountType;

.field protected mCommodity:Lorg/gnucash/android/model/Commodity;

.field protected mGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

.field private mReportGenerator:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mReportPeriodEnd:J

.field protected mReportPeriodStart:J

.field protected mReportsActivity:Lorg/gnucash/android/ui/report/ReportsActivity;

.field protected mSelectedValueTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lbutterknife/BindView;
        value = 0x7f0901bd
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lorg/gnucash/android/ui/report/BaseReportFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/report/BaseReportFragment;->$assertionsDisabled:Z

    .line 73
    const-string v0, "BaseReportFragment"

    sput-object v0, Lorg/gnucash/android/ui/report/BaseReportFragment;->TAG:Ljava/lang/String;

    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 78
    iput-wide v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportPeriodStart:J

    .line 82
    iput-wide v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportPeriodEnd:J

    .line 97
    sget-object v0, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->MONTH:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    iput-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    return-void
.end method

.method private toggleBaseReportingOptionsVisibility()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 223
    iget-object v6, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportsActivity:Lorg/gnucash/android/ui/report/ReportsActivity;

    const v7, 0x7f0901fc

    invoke-virtual {v6, v7}, Lorg/gnucash/android/ui/report/ReportsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 224
    .local v2, "timeRangeLayout":Landroid/view/View;
    iget-object v6, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportsActivity:Lorg/gnucash/android/ui/report/ReportsActivity;

    const v7, 0x7f090086

    invoke-virtual {v6, v7}, Lorg/gnucash/android/ui/report/ReportsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 225
    .local v1, "dateRangeDivider":Landroid/view/View;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->requiresTimeRangeOptions()Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    .line 227
    .local v3, "visibility":I
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 228
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 231
    .end local v3    # "visibility":I
    :cond_0
    iget-object v6, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportsActivity:Lorg/gnucash/android/ui/report/ReportsActivity;

    const v7, 0x7f090198

    invoke-virtual {v6, v7}, Lorg/gnucash/android/ui/report/ReportsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, "accountTypeSpinner":Landroid/view/View;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->requiresAccountTypeOptions()Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v4

    .line 233
    .restart local v3    # "visibility":I
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 234
    return-void

    .end local v0    # "accountTypeSpinner":Landroid/view/View;
    .end local v3    # "visibility":I
    :cond_1
    move v3, v5

    .line 226
    goto :goto_0

    .restart local v0    # "accountTypeSpinner":Landroid/view/View;
    :cond_2
    move v3, v5

    .line 232
    goto :goto_1
.end method


# virtual methods
.method protected abstract displayReport()V
.end method

.method protected abstract generateReport()V
.end method

.method protected getDateDiff(Lorg/joda/time/LocalDateTime;Lorg/joda/time/LocalDateTime;)I
    .locals 5
    .param p1, "start"    # Lorg/joda/time/LocalDateTime;
    .param p2, "end"    # Lorg/joda/time/LocalDateTime;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 244
    sget-object v1, Lorg/gnucash/android/ui/report/BaseReportFragment$2;->$SwitchMap$org$gnucash$android$ui$report$ReportsActivity$GroupInterval:[I

    iget-object v2, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 253
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 246
    :pswitch_0
    invoke-virtual {p1, v4}, Lorg/joda/time/LocalDateTime;->withDayOfYear(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/joda/time/LocalDateTime;->withMillisOfDay(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p2, v4}, Lorg/joda/time/LocalDateTime;->withDayOfYear(I)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/joda/time/LocalDateTime;->withMillisOfDay(I)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/joda/time/Years;->yearsBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Years;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Years;->getYears()I

    move-result v0

    .line 247
    .local v0, "y":I
    invoke-virtual {p0, p2}, Lorg/gnucash/android/ui/report/BaseReportFragment;->getQuarter(Lorg/joda/time/LocalDateTime;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/gnucash/android/ui/report/BaseReportFragment;->getQuarter(Lorg/joda/time/LocalDateTime;)I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    goto :goto_0

    .line 249
    .end local v0    # "y":I
    :pswitch_1
    invoke-virtual {p1, v4}, Lorg/joda/time/LocalDateTime;->withDayOfMonth(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/joda/time/LocalDateTime;->withMillisOfDay(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p2, v4}, Lorg/joda/time/LocalDateTime;->withDayOfMonth(I)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/joda/time/LocalDateTime;->withMillisOfDay(I)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/joda/time/Months;->monthsBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Months;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Months;->getMonths()I

    move-result v1

    goto :goto_0

    .line 251
    :pswitch_2
    invoke-virtual {p1, v4}, Lorg/joda/time/LocalDateTime;->withDayOfYear(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/joda/time/LocalDateTime;->withMillisOfDay(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p2, v4}, Lorg/joda/time/LocalDateTime;->withDayOfYear(I)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/joda/time/LocalDateTime;->withMillisOfDay(I)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/joda/time/Years;->yearsBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Years;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Years;->getYears()I

    move-result v1

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract getLayoutResource()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method protected getQuarter(Lorg/joda/time/LocalDateTime;)I
    .locals 1
    .param p1, "date"    # Lorg/joda/time/LocalDateTime;

    .prologue
    .line 264
    invoke-virtual {p1}, Lorg/joda/time/LocalDateTime;->getMonthOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract getReportType()Lorg/gnucash/android/ui/report/ReportType;
.end method

.method public abstract getTitle()I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end method

.method public onAccountTypeUpdated(Lorg/gnucash/android/model/AccountType;)V
    .locals 1
    .param p1, "accountType"    # Lorg/gnucash/android/model/AccountType;

    .prologue
    .line 330
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mAccountType:Lorg/gnucash/android/model/AccountType;

    if-eq v0, p1, :cond_0

    .line 331
    iput-object p1, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mAccountType:Lorg/gnucash/android/model/AccountType;

    .line 332
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->refresh()V

    .line 334
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 179
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    sget-boolean v2, Lorg/gnucash/android/ui/report/BaseReportFragment;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 180
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->getTitle()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 182
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/report/BaseReportFragment;->setHasOptionsMenu(Z)V

    .line 183
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v2

    .line 184
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodity(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mCommodity:Lorg/gnucash/android/model/Commodity;

    .line 186
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/ui/report/ReportsActivity;

    .line 187
    .local v1, "reportsActivity":Lorg/gnucash/android/ui/report/ReportsActivity;
    invoke-virtual {v1}, Lorg/gnucash/android/ui/report/ReportsActivity;->getReportPeriodStart()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportPeriodStart:J

    .line 188
    invoke-virtual {v1}, Lorg/gnucash/android/ui/report/ReportsActivity;->getReportPeriodEnd()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportPeriodEnd:J

    .line 189
    invoke-virtual {v1}, Lorg/gnucash/android/ui/report/ReportsActivity;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mAccountType:Lorg/gnucash/android/model/AccountType;

    .line 190
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 209
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lorg/gnucash/android/ui/report/ReportsActivity;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Report fragments can only be used with the ReportsActivity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/ui/report/ReportsActivity;

    iput-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportsActivity:Lorg/gnucash/android/ui/report/ReportsActivity;

    .line 213
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/ui/report/BaseReportFragment;->TAG:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 270
    const v0, 0x7f0c0007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 271
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->getLayoutResource()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 171
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 218
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportGenerator:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportGenerator:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 220
    :cond_0
    return-void
.end method

.method public onGroupingUpdated(Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;)V
    .locals 1
    .param p1, "groupInterval"    # Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    .prologue
    .line 313
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    if-eq v0, p1, :cond_0

    .line 314
    iput-object p1, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mGroupInterval:Lorg/gnucash/android/ui/report/ReportsActivity$GroupInterval;

    .line 315
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->refresh()V

    .line 317
    :cond_0
    return-void
.end method

.method public onNothingSelected()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mSelectedValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mSelectedValueTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0176

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 345
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 201
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportsActivity:Lorg/gnucash/android/ui/report/ReportsActivity;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->getReportType()Lorg/gnucash/android/ui/report/ReportType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/ui/report/ReportType;->getTitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/report/ReportsActivity;->setAppBarColor(I)V

    .line 202
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportsActivity:Lorg/gnucash/android/ui/report/ReportsActivity;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/report/ReportsActivity;->toggleToolbarTitleVisibility()V

    .line 203
    invoke-direct {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->toggleBaseReportingOptionsVisibility()V

    .line 204
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 195
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->refresh()V

    .line 196
    return-void
.end method

.method public onTimeRangeUpdated(JJ)V
    .locals 3
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 321
    iget-wide v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportPeriodStart:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportPeriodEnd:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    iput-wide p1, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportPeriodStart:J

    .line 323
    iput-wide p3, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportPeriodEnd:J

    .line 324
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->refresh()V

    .line 326
    :cond_1
    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 0
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I
    .param p3, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 339
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportGenerator:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportGenerator:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 278
    :cond_0
    new-instance v0, Lorg/gnucash/android/ui/report/BaseReportFragment$1;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/report/BaseReportFragment$1;-><init>(Lorg/gnucash/android/ui/report/BaseReportFragment;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportGenerator:Landroid/os/AsyncTask;

    .line 297
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportGenerator:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 298
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->refresh()V

    .line 309
    return-void
.end method

.method public requiresAccountTypeOptions()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public requiresTimeRangeOptions()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method
