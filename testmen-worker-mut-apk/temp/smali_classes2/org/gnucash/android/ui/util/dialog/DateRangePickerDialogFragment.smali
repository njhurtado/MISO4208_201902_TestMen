.class public Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DateRangePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;
    }
.end annotation


# static fields
.field private static final ONE_DAY_IN_MILLIS:J = 0x5265c00L


# instance fields
.field mCalendarPickerView:Lcom/squareup/timessquare/CalendarPickerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090053
    .end annotation
.end field

.field mCancelButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090038
    .end annotation
.end field

.field private mDateRangeSetListener:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;

.field mDoneButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003f
    .end annotation
.end field

.field private mEndRange:Ljava/util/Date;

.field private mStartRange:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 52
    invoke-static {}, Lorg/joda/time/LocalDate;->now()Lorg/joda/time/LocalDate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/joda/time/LocalDate;->minusMonths(I)Lorg/joda/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mStartRange:Ljava/util/Date;

    .line 53
    invoke-static {}, Lorg/joda/time/LocalDate;->now()Lorg/joda/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->toDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mEndRange:Ljava/util/Date;

    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;)Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mDateRangeSetListener:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;

    return-object v0
.end method

.method public static newInstance(JJLorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;)Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;
    .locals 2
    .param p0, "startDate"    # J
    .param p2, "endDate"    # J
    .param p4, "dateRangeSetListener"    # Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;

    .prologue
    .line 65
    new-instance v0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;-><init>()V

    .line 66
    .local v0, "fragment":Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mStartRange:Ljava/util/Date;

    .line 67
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mEndRange:Ljava/util/Date;

    .line 68
    iput-object p4, v0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mDateRangeSetListener:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;

    .line 69
    return-object v0
.end method

.method public static newInstance(Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;)Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;
    .locals 1
    .param p0, "dateRangeSetListener"    # Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;

    .prologue
    .line 58
    new-instance v0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;-><init>()V

    .line 59
    .local v0, "fragment":Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;
    iput-object p0, v0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mDateRangeSetListener:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;

    .line 60
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 116
    .local v0, "dialog":Landroid/app/Dialog;
    const-string v1, "Pick time range"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 75
    const v3, 0x7f0b0047

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, "view":Landroid/view/View;
    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    .local v0, "nextYear":Ljava/util/Calendar;
    invoke-virtual {v0, v5, v5}, Ljava/util/Calendar;->add(II)V

    .line 82
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 83
    .local v1, "today":Ljava/util/Date;
    iget-object v3, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mCalendarPickerView:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v4, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mStartRange:Ljava/util/Date;

    iget-object v5, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mEndRange:Ljava/util/Date;

    invoke-virtual {v3, v4, v5}, Lcom/squareup/timessquare/CalendarPickerView;->init(Ljava/util/Date;Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    move-result-object v3

    sget-object v4, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->RANGE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    .line 84
    invoke-virtual {v3, v4}, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->inMode(Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v1}, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->withSelectedDate(Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    .line 87
    iget-object v3, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    const v4, 0x7f0f0072

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 88
    iget-object v3, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    new-instance v4, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$1;

    invoke-direct {v4, p0}, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$1;-><init>(Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v3, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v4, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$2;

    invoke-direct {v4, p0}, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$2;-><init>(Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-object v2
.end method
