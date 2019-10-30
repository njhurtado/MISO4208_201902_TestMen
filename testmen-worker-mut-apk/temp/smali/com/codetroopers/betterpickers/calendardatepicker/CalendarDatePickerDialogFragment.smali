.class public Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "CalendarDatePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;,
        Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY:I = 0x1f4

.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final DAY_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DEFAULT_END_DATE:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

.field private static final DEFAULT_START_DATE:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

.field private static final KEY_CURRENT_VIEW:Ljava/lang/String; = "current_view"

.field private static final KEY_DATE_END:Ljava/lang/String; = "date_end"

.field private static final KEY_DATE_START:Ljava/lang/String; = "date_start"

.field private static final KEY_DISABLED_DAYS:Ljava/lang/String; = "disabled_days"

.field private static final KEY_LIST_POSITION:Ljava/lang/String; = "list_position"

.field private static final KEY_LIST_POSITION_OFFSET:Ljava/lang/String; = "list_position_offset"

.field private static final KEY_SELECTED_DAY:Ljava/lang/String; = "day"

.field private static final KEY_SELECTED_MONTH:Ljava/lang/String; = "month"

.field private static final KEY_SELECTED_YEAR:Ljava/lang/String; = "year"

.field private static final KEY_THEME:Ljava/lang/String; = "theme"

.field private static final KEY_WEEK_START:Ljava/lang/String; = "week_start"

.field private static final MONTH_AND_DAY_VIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DatePickerDialog"

.field private static final UNINITIALIZED:I = -0x1

.field private static final YEAR_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final YEAR_VIEW:I = 0x1


# instance fields
.field private mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

.field private final mCalendar:Ljava/util/Calendar;

.field private mCallBack:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;

.field private mCancelText:Ljava/lang/String;

.field private mCurrentView:I

.field private mDayOfWeekView:Landroid/widget/TextView;

.field private mDayPickerDescription:Ljava/lang/String;

.field private mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

.field private mDelayAnimation:Z

.field private mDimissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

.field private mDisabledDays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field private mDoneText:Ljava/lang/String;

.field private mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

.field private mMinDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

.field private mMonthAndDayView:Landroid/widget/LinearLayout;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private mSelectedColor:I

.field private mSelectedDateLayout:Landroid/widget/LinearLayout;

.field private mSelectedDayTextView:Landroid/widget/TextView;

.field private mSelectedMonthTextView:Landroid/widget/TextView;

.field private mStyleResId:I

.field private mUnselectedColor:I

.field private mWeekStart:I

.field private mYearPickerDescription:Ljava/lang/String;

.field private mYearPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

.field private mYearView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    const/16 v1, 0x76c

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;-><init>(III)V

    sput-object v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->DEFAULT_START_DATE:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 80
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    const/16 v1, 0x834

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;-><init>(III)V

    sput-object v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->DEFAULT_END_DATE:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mListeners:Ljava/util/HashSet;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCurrentView:I

    .line 105
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mWeekStart:I

    .line 106
    sget-object v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->DEFAULT_START_DATE:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMinDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 107
    sget-object v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->DEFAULT_END_DATE:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMaxDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDelayAnimation:Z

    .line 150
    sget v0, Lcom/codetroopers/betterpickers/R$style;->BetterPickersRadialTimePickerDialog_PrimaryColor:I

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mStyleResId:I

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCallBack:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method private adjustDayInMonthIfNeeded(II)V
    .locals 4
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    const/4 v3, 0x5

    .line 510
    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 511
    .local v0, "day":I
    invoke-static {p1, p2}, Lcom/codetroopers/betterpickers/Utils;->getDaysInMonth(II)I

    move-result v1

    .line 512
    .local v1, "daysInMonth":I
    if-le v0, v1, :cond_0

    .line 513
    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 515
    :cond_0
    return-void
.end method

.method private setCurrentView(I)V
    .locals 14
    .param p1, "viewIndex"    # I

    .prologue
    const-wide/16 v12, 0x1f4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 364
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 366
    .local v2, "millis":J
    packed-switch p1, :pswitch_data_0

    .line 413
    :goto_0
    return-void

    .line 368
    :pswitch_0
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMonthAndDayView:Landroid/widget/LinearLayout;

    const v7, 0x3f666666    # 0.9f

    const v8, 0x3f866666    # 1.05f

    invoke-static {v6, v7, v8}, Lcom/codetroopers/betterpickers/Utils;->getPulseAnimator(Landroid/view/View;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    .line 369
    .local v4, "pulseAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    iget-boolean v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDelayAnimation:Z

    if-eqz v6, :cond_0

    .line 370
    invoke-virtual {v4, v12, v13}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 371
    iput-boolean v9, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDelayAnimation:Z

    .line 373
    :cond_0
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    invoke-virtual {v6}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->onDateChanged()V

    .line 374
    iget v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCurrentView:I

    if-eq v6, p1, :cond_1

    .line 375
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 376
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 377
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedDayTextView:Landroid/widget/TextView;

    iget v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedMonthTextView:Landroid/widget/TextView;

    iget v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearView:Landroid/widget/TextView;

    iget v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mUnselectedColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    invoke-virtual {v6, v9}, Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 381
    iput p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCurrentView:I

    .line 383
    :cond_1
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 385
    const/16 v1, 0x10

    .line 386
    .local v1, "flags":I
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "dayString":Ljava/lang/String;
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    iget-object v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectDay:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/codetroopers/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 391
    .end local v0    # "dayString":Ljava/lang/String;
    .end local v1    # "flags":I
    .end local v4    # "pulseAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    :pswitch_1
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearView:Landroid/widget/TextView;

    const v7, 0x3f59999a    # 0.85f

    const v8, 0x3f8ccccd    # 1.1f

    invoke-static {v6, v7, v8}, Lcom/codetroopers/betterpickers/Utils;->getPulseAnimator(Landroid/view/View;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    .line 392
    .restart local v4    # "pulseAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    iget-boolean v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDelayAnimation:Z

    if-eqz v6, :cond_2

    .line 393
    invoke-virtual {v4, v12, v13}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 394
    iput-boolean v9, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDelayAnimation:Z

    .line 396
    :cond_2
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    invoke-virtual {v6}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->onDateChanged()V

    .line 397
    iget v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCurrentView:I

    if-eq v6, p1, :cond_3

    .line 398
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 399
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 400
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedDayTextView:Landroid/widget/TextView;

    iget v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mUnselectedColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedMonthTextView:Landroid/widget/TextView;

    iget v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mUnselectedColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearView:Landroid/widget/TextView;

    iget v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    invoke-virtual {v6, v10}, Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 404
    iput p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCurrentView:I

    .line 406
    :cond_3
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 408
    sget-object v6, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "yearString":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearPickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    iget-object v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectYear:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/codetroopers/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDisplay(Z)V
    .locals 10
    .param p1, "announce"    # Z

    .prologue
    const/4 v9, 0x2

    .line 416
    iget-object v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayOfWeekView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 417
    iget-object v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayOfWeekView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x7

    .line 418
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    .line 417
    invoke-virtual {v6, v7, v9, v8}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 418
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 417
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_0
    iget-object v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedMonthTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x1

    .line 422
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    .line 421
    invoke-virtual {v6, v9, v7, v8}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 422
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 421
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedDayTextView:Landroid/widget/TextView;

    sget-object v6, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearView:Landroid/widget/TextView;

    sget-object v6, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 428
    .local v2, "millis":J
    iget-object v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    invoke-virtual {v5, v2, v3}, Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;->setDateMillis(J)V

    .line 429
    const/16 v0, 0x18

    .line 430
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, "monthAndDayText":Ljava/lang/String;
    iget-object v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 433
    if-eqz p1, :cond_1

    .line 434
    const/16 v0, 0x14

    .line 435
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "fullDateText":Ljava/lang/String;
    iget-object v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    invoke-static {v5, v1}, Lcom/codetroopers/betterpickers/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 438
    .end local v1    # "fullDateText":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updatePickers()V
    .locals 2

    .prologue
    .line 554
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 555
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;

    invoke-interface {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;->onDateChanged()V

    goto :goto_0

    .line 558
    :cond_0
    return-void
.end method


# virtual methods
.method public getDisabledDays()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDisabledDays:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mWeekStart:I

    return v0
.end method

.method public getMaxDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMaxDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    return-object v0
.end method

.method public getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMinDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    return-object v0
.end method

.method public getSelectedDay()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
    .locals 2

    .prologue
    .line 563
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public isThemeDark()Z
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mStyleResId:I

    sget v1, Lcom/codetroopers/betterpickers/R$style;->BetterPickersRadialTimePickerDialog_Dark:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->tryVibrate()V

    .line 528
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/codetroopers/betterpickers/R$id;->date_picker_year:I

    if-ne v0, v1, :cond_1

    .line 529
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->setCurrentView(I)V

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/codetroopers/betterpickers/R$id;->date_picker_month_and_day:I

    if-ne v0, v1, :cond_0

    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->setCurrentView(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 194
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 197
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 198
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 200
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    const-string v20, "DatePickerDialog"

    const-string v21, "onCreateView: "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getShowsDialog()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->requestFeature(I)Z

    .line 231
    :cond_0
    sget v20, Lcom/codetroopers/betterpickers/R$layout;->calendar_date_picker_dialog:I

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 233
    .local v19, "view":Landroid/view/View;
    sget v20, Lcom/codetroopers/betterpickers/R$id;->day_picker_selected_date_layout:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedDateLayout:Landroid/widget/LinearLayout;

    .line 234
    sget v20, Lcom/codetroopers/betterpickers/R$id;->date_picker_header:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayOfWeekView:Landroid/widget/TextView;

    .line 235
    sget v20, Lcom/codetroopers/betterpickers/R$id;->date_picker_month_and_day:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMonthAndDayView:Landroid/widget/LinearLayout;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMonthAndDayView:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    sget v20, Lcom/codetroopers/betterpickers/R$id;->date_picker_month:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedMonthTextView:Landroid/widget/TextView;

    .line 238
    sget v20, Lcom/codetroopers/betterpickers/R$id;->date_picker_day:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedDayTextView:Landroid/widget/TextView;

    .line 239
    sget v20, Lcom/codetroopers/betterpickers/R$id;->date_picker_year:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearView:Landroid/widget/TextView;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const/4 v14, -0x1

    .line 243
    .local v14, "listPosition":I
    const/4 v15, 0x0

    .line 244
    .local v15, "listPositionOffset":I
    const/4 v11, 0x0

    .line 245
    .local v11, "currentView":I
    if-eqz p3, :cond_1

    .line 246
    const-string v20, "week_start"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mWeekStart:I

    .line 247
    new-instance v20, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    const-string v21, "date_start"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;-><init>(J)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMinDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 248
    new-instance v20, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    const-string v21, "date_end"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;-><init>(J)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMaxDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 249
    const-string v20, "current_view"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 250
    const-string v20, "list_position"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 251
    const-string v20, "list_position_offset"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 252
    const-string v20, "theme"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mStyleResId:I

    .line 253
    const-string v20, "disabled_days"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDisabledDays:Landroid/util/SparseArray;

    .line 256
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 257
    .local v4, "activity":Landroid/app/Activity;
    new-instance v20, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleDayPickerView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v4, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleDayPickerView;-><init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    .line 258
    new-instance v20, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v4, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;-><init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 261
    .local v17, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mStyleResId:I

    move/from16 v21, v0

    sget-object v22, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs:[I

    invoke-virtual/range {v20 .. v22}, Landroid/support/v4/app/FragmentActivity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 262
    .local v18, "themeColors":Landroid/content/res/TypedArray;
    sget v20, Lcom/codetroopers/betterpickers/R$string;->day_picker_description:I

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerDescription:Ljava/lang/String;

    .line 263
    sget v20, Lcom/codetroopers/betterpickers/R$string;->select_day:I

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectDay:Ljava/lang/String;

    .line 264
    sget v20, Lcom/codetroopers/betterpickers/R$string;->year_picker_description:I

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearPickerDescription:Ljava/lang/String;

    .line 265
    sget v20, Lcom/codetroopers/betterpickers/R$string;->select_year:I

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectYear:Ljava/lang/String;

    .line 267
    sget v20, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpHeaderBackgroundColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    sget v22, Lcom/codetroopers/betterpickers/R$color;->bpWhite:I

    invoke-static/range {v21 .. v22}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    .line 268
    .local v13, "headerBackgroundColor":I
    sget v20, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpPreHeaderBackgroundColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    sget v22, Lcom/codetroopers/betterpickers/R$color;->bpWhite:I

    invoke-static/range {v21 .. v22}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    .line 269
    .local v16, "preHeaderBackgroundColor":I
    sget v20, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpBodyBackgroundColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    sget v22, Lcom/codetroopers/betterpickers/R$color;->bpWhite:I

    invoke-static/range {v21 .. v22}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 270
    .local v7, "bodyBgColor":I
    sget v20, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpButtonsBackgroundColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    sget v22, Lcom/codetroopers/betterpickers/R$color;->bpWhite:I

    invoke-static/range {v21 .. v22}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 271
    .local v8, "buttonBgColor":I
    sget v20, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpButtonsTextColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    sget v22, Lcom/codetroopers/betterpickers/R$color;->bpBlue:I

    invoke-static/range {v21 .. v22}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 272
    .local v9, "buttonTextColor":I
    sget v20, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpHeaderSelectedTextColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    sget v22, Lcom/codetroopers/betterpickers/R$color;->bpWhite:I

    invoke-static/range {v21 .. v22}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedColor:I

    .line 273
    sget v20, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpHeaderUnselectedTextColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    sget v22, Lcom/codetroopers/betterpickers/R$color;->radial_gray_light:I

    invoke-static/range {v21 .. v22}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mUnselectedColor:I

    .line 276
    sget v20, Lcom/codetroopers/betterpickers/R$id;->animator:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;->setDateMillis(J)V

    .line 281
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 282
    .local v5, "animation":Landroid/view/animation/Animation;
    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 285
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 286
    .local v6, "animation2":Landroid/view/animation/Animation;
    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mAnimator:Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/codetroopers/betterpickers/calendardatepicker/AccessibleDateAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 289
    sget v20, Lcom/codetroopers/betterpickers/R$id;->done_button:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 290
    .local v12, "doneButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDoneText:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDoneText:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_2
    invoke-virtual {v12, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 294
    new-instance v20, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$1;-><init>(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    sget v20, Lcom/codetroopers/betterpickers/R$id;->cancel_button:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 307
    .local v10, "cancelButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCancelText:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCancelText:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_3
    invoke-virtual {v10, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 311
    new-instance v20, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$2;-><init>(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    sget v20, Lcom/codetroopers/betterpickers/R$id;->ok_cancel_buttons_layout:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 321
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->updateDisplay(Z)V

    .line 322
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->setCurrentView(I)V

    .line 324
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v14, v0, :cond_4

    .line 325
    if-nez v11, :cond_6

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->postSetSelection(I)V

    .line 332
    :cond_4
    :goto_0
    new-instance v20, Lcom/codetroopers/betterpickers/HapticFeedbackController;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/codetroopers/betterpickers/HapticFeedbackController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setTheme(Landroid/content/res/TypedArray;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->setTheme(Landroid/content/res/TypedArray;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mSelectedDateLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMonthAndDayView:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayOfWeekView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayOfWeekView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 344
    :cond_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->setBackgroundColor(I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->setBackgroundColor(I)V

    .line 348
    return-object v19

    .line 327
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_4

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->postSetSelectionFromTop(II)V

    goto/16 :goto_0
.end method

.method public onDayOfMonthSelected(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v2, 0x1

    .line 546
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 547
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 548
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 549
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->updatePickers()V

    .line 550
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->updateDisplay(Z)V

    .line 551
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 520
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDimissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDimissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    invoke-interface {v0, p1}, Lcom/codetroopers/betterpickers/OnDialogDismissListener;->onDialogDismiss(Landroid/content/DialogInterface;)V

    .line 523
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 360
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/HapticFeedbackController;->stop()V

    .line 361
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 353
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 354
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/HapticFeedbackController;->start()V

    .line 355
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 204
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    const-string v1, "year"

    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    const-string v1, "month"

    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string v1, "day"

    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    const-string v1, "week_start"

    iget v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mWeekStart:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    const-string v1, "date_start"

    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMinDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->getDateInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 210
    const-string v1, "date_end"

    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMaxDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->getDateInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 211
    const-string v1, "current_view"

    iget v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCurrentView:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const-string v1, "theme"

    iget v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mStyleResId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const/4 v0, -0x1

    .line 214
    .local v0, "listPosition":I
    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCurrentView:I

    if-nez v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->getMostVisiblePosition()I

    move-result v0

    .line 220
    :cond_0
    :goto_0
    const-string v1, "list_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v1, "disabled_days"

    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDisabledDays:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 222
    return-void

    .line 216
    :cond_1
    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCurrentView:I

    if-ne v1, v4, :cond_0

    .line 217
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->getFirstVisiblePosition()I

    move-result v0

    .line 218
    const-string v1, "list_position_offset"

    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mYearPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->getFirstPositionOffset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onYearSelected(I)V
    .locals 3
    .param p1, "year"    # I

    .prologue
    const/4 v2, 0x1

    .line 537
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->adjustDayInMonthIfNeeded(II)V

    .line 538
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 539
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->updatePickers()V

    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->setCurrentView(I)V

    .line 541
    invoke-direct {p0, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->updateDisplay(Z)V

    .line 542
    return-void
.end method

.method public registerOnDateChangedListener(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    return-void
.end method

.method public setCancelText(Ljava/lang/String;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCancelText:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public setDateRange(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .locals 2
    .param p1, "startDate"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "endDate"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 461
    sget-object v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->DEFAULT_START_DATE:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMinDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 465
    :goto_0
    if-nez p2, :cond_1

    .line 466
    sget-object v0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->DEFAULT_END_DATE:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMaxDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 470
    :goto_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMaxDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMinDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->compareTo(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)I

    move-result v0

    if-gez v0, :cond_2

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "End date must be larger than start date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_0
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMinDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    goto :goto_0

    .line 468
    :cond_1
    iput-object p2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mMaxDate:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    goto :goto_1

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->onChange()V

    .line 476
    :cond_3
    return-object p0
.end method

.method public setDisabledDays(Landroid/util/SparseArray;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .locals 1
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;",
            ">;)",
            "Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, "disabledDays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;>;"
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDisabledDays:Landroid/util/SparseArray;

    .line 489
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->onChange()V

    .line 492
    :cond_0
    return-object p0
.end method

.method public setDoneText(Ljava/lang/String;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDoneText:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public setFirstDayOfWeek(I)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .locals 2
    .param p1, "startOfWeek"    # I

    .prologue
    .line 441
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 442
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be between Calendar.SUNDAY and Calendar.SATURDAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_1
    iput p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mWeekStart:I

    .line 445
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDayPickerView:Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;->onChange()V

    .line 448
    :cond_2
    return-object p0
.end method

.method public setOnDateSetListener(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .locals 0
    .param p1, "listener"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCallBack:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;

    .line 497
    return-object p0
.end method

.method public setOnDismissListener(Lcom/codetroopers/betterpickers/OnDialogDismissListener;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .locals 0
    .param p1, "ondialogdismisslistener"    # Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mDimissCallback:Lcom/codetroopers/betterpickers/OnDialogDismissListener;

    .line 502
    return-object p0
.end method

.method public setPreselectedDate(III)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .locals 2
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 174
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 175
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 176
    return-object p0
.end method

.method public setThemeCustom(I)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .locals 0
    .param p1, "styleResId"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mStyleResId:I

    .line 169
    return-object p0
.end method

.method public setThemeDark()Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .locals 1

    .prologue
    .line 158
    sget v0, Lcom/codetroopers/betterpickers/R$style;->BetterPickersRadialTimePickerDialog_Dark:I

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mStyleResId:I

    .line 159
    return-object p0
.end method

.method public setThemeLight()Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;
    .locals 1

    .prologue
    .line 163
    sget v0, Lcom/codetroopers/betterpickers/R$style;->BetterPickersRadialTimePickerDialog_Light:I

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mStyleResId:I

    .line 164
    return-object p0
.end method

.method public tryVibrate()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/HapticFeedbackController;->tryVibrate()V

    .line 599
    return-void
.end method

.method public unregisterOnDateChangedListener(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 594
    return-void
.end method
