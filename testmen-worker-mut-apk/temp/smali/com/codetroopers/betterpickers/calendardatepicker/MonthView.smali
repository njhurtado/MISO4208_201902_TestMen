.class public abstract Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;
.super Landroid/view/View;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$OnDayClickListener;,
        Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field protected static DAY_SELECTED_CIRCLE_SIZE:I = 0x0

.field protected static DAY_SEPARATOR_WIDTH:I = 0x0

.field protected static final DEFAULT_FOCUS_MONTH:I = -0x1

.field protected static DEFAULT_HEIGHT:I = 0x0

.field protected static final DEFAULT_NUM_DAYS:I = 0x7

.field protected static final DEFAULT_NUM_ROWS:I = 0x6

.field protected static final DEFAULT_SELECTED_DAY:I = -0x1

.field protected static final DEFAULT_SHOW_WK_NUM:I = 0x0

.field protected static final DEFAULT_WEEK_START:I = 0x1

.field private static final DISABLED_DAY_SQUARE_ALPHA:I = 0x3c

.field protected static final MAX_NUM_ROWS:I = 0x6

.field protected static MINI_DAY_NUMBER_TEXT_SIZE:I = 0x0

.field protected static MIN_HEIGHT:I = 0x0

.field protected static MONTH_DAY_LABEL_TEXT_SIZE:I = 0x0

.field protected static MONTH_HEADER_SIZE:I = 0x0

.field protected static MONTH_LABEL_TEXT_SIZE:I = 0x0

.field private static final SELECTED_CIRCLE_ALPHA:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "MonthView"

.field public static final VIEW_PARAMS_FOCUS_MONTH:Ljava/lang/String; = "focus_month"

.field public static final VIEW_PARAMS_HEIGHT:Ljava/lang/String; = "height"

.field public static final VIEW_PARAMS_MONTH:Ljava/lang/String; = "month"

.field public static final VIEW_PARAMS_NUM_DAYS:Ljava/lang/String; = "num_days"

.field public static final VIEW_PARAMS_RANGE_MAX:Ljava/lang/String; = "range_max"

.field public static final VIEW_PARAMS_RANGE_MIN:Ljava/lang/String; = "range_min"

.field public static final VIEW_PARAMS_SELECTED_DAY:Ljava/lang/String; = "selected_day"

.field public static final VIEW_PARAMS_SHOW_WK_NUM:Ljava/lang/String; = "show_wk_num"

.field public static final VIEW_PARAMS_WEEK_START:Ljava/lang/String; = "week_start"

.field public static final VIEW_PARAMS_YEAR:Ljava/lang/String; = "year"

.field protected static mScale:F


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field protected mDayBackgroundColorDisabled:I

.field private final mDayLabelCalendar:Ljava/util/Calendar;

.field private mDayOfWeekStart:I

.field private mDayOfWeekTypeface:Ljava/lang/String;

.field protected mDayTextColorDisabled:I

.field protected mDayTextColorEnabled:I

.field protected mDisabledDaySquarePaint:Landroid/graphics/Paint;

.field protected mDisabledDays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstJulianDay:I

.field protected mFirstMonth:I

.field private final mFormatter:Ljava/util/Formatter;

.field protected mHasToday:Z

.field protected mLastMonth:I

.field private mLockAccessibilityDelegate:Z

.field protected mMonth:I

.field protected mMonthDayLabelPaint:Landroid/graphics/Paint;

.field protected mMonthNumPaint:Landroid/graphics/Paint;

.field protected mMonthTitleBGPaint:Landroid/graphics/Paint;

.field protected mMonthTitleColor:I

.field protected mMonthTitlePaint:Landroid/graphics/Paint;

.field private mMonthTitleTypeface:Ljava/lang/String;

.field protected mNumCells:I

.field protected mNumDays:I

.field private mNumRows:I

.field private mOnDayClickListener:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$OnDayClickListener;

.field protected mPadding:I

.field protected mRangeMax:I

.field protected mRangeMin:I

.field protected mRowHeight:I

.field protected mSelectedCirclePaint:Landroid/graphics/Paint;

.field protected mSelectedDay:I

.field protected mSelectedLeft:I

.field protected mSelectedRight:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field protected mToday:I

.field protected mTodayNumberColor:I

.field private final mTouchHelper:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;

.field protected mWeekStart:I

.field protected mWidth:I

.field protected mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x20

    sput v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->DEFAULT_HEIGHT:I

    .line 114
    const/16 v0, 0xa

    sput v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MIN_HEIGHT:I

    .line 126
    const/4 v0, 0x1

    sput v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->DAY_SEPARATOR_WIDTH:I

    .line 134
    const/4 v0, 0x0

    sput v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 206
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 137
    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mPadding:I

    .line 153
    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mFirstJulianDay:I

    .line 155
    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mFirstMonth:I

    .line 157
    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mLastMonth:I

    .line 165
    sget v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->DEFAULT_HEIGHT:I

    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRowHeight:I

    .line 167
    iput-boolean v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mHasToday:Z

    .line 169
    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mSelectedDay:I

    .line 173
    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mToday:I

    .line 175
    iput v4, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mWeekStart:I

    .line 177
    const/4 v1, 0x7

    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    .line 179
    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumCells:I

    .line 181
    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mSelectedLeft:I

    .line 183
    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mSelectedRight:I

    .line 185
    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRangeMin:I

    .line 187
    iput v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRangeMax:I

    .line 192
    const/4 v1, 0x6

    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumRows:I

    .line 347
    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayOfWeekStart:I

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    .line 210
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mCalendar:Ljava/util/Calendar;

    .line 212
    sget v1, Lcom/codetroopers/betterpickers/R$string;->day_of_week_label_typeface:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayOfWeekTypeface:Ljava/lang/String;

    .line 213
    sget v1, Lcom/codetroopers/betterpickers/R$string;->sans_serif:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitleTypeface:Ljava/lang/String;

    .line 215
    sget v1, Lcom/codetroopers/betterpickers/R$color;->date_picker_text_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayTextColorEnabled:I

    .line 216
    sget v1, Lcom/codetroopers/betterpickers/R$color;->date_picker_text_disabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayTextColorDisabled:I

    .line 217
    sget v1, Lcom/codetroopers/betterpickers/R$color;->bpBlue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mTodayNumberColor:I

    .line 218
    sget v1, Lcom/codetroopers/betterpickers/R$color;->bpDarker_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayBackgroundColorDisabled:I

    .line 219
    sget v1, Lcom/codetroopers/betterpickers/R$color;->date_picker_text_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitleColor:I

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 222
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mFormatter:Ljava/util/Formatter;

    .line 224
    sget v1, Lcom/codetroopers/betterpickers/R$dimen;->day_number_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    .line 225
    sget v1, Lcom/codetroopers/betterpickers/R$dimen;->month_label_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_LABEL_TEXT_SIZE:I

    .line 226
    sget v1, Lcom/codetroopers/betterpickers/R$dimen;->month_day_label_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    .line 227
    sget v1, Lcom/codetroopers/betterpickers/R$dimen;->month_list_item_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_HEADER_SIZE:I

    .line 228
    sget v1, Lcom/codetroopers/betterpickers/R$dimen;->day_number_select_circle_radius:I

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    .line 231
    sget v1, Lcom/codetroopers/betterpickers/R$dimen;->date_picker_view_animator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sget v2, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_HEADER_SIZE:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRowHeight:I

    .line 234
    new-instance v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;

    invoke-direct {v1, p0, p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;-><init>(Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mTouchHelper:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;

    .line 235
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mTouchHelper:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 236
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 237
    iput-boolean v4, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mLockAccessibilityDelegate:Z

    .line 240
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->initView()V

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->onDayClick(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->findDayOffset()I

    move-result v0

    return v0
.end method

.method private calculateNumRows()I
    .locals 5

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->findDayOffset()I

    move-result v1

    .line 425
    .local v1, "offset":I
    iget v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumCells:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    div-int v0, v3, v4

    .line 426
    .local v0, "dividend":I
    iget v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumCells:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    rem-int v2, v3, v4

    .line 427
    .local v2, "remainder":I
    if-lez v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v3, v0

    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private drawMonthDayLabels(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x7

    .line 465
    sget v5, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_HEADER_SIZE:I

    sget v6, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 466
    .local v4, "y":I
    iget v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mWidth:I

    iget v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    mul-int/lit8 v6, v6, 0x2

    div-int v1, v5, v6

    .line 468
    .local v1, "dayWidthHalf":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    if-ge v2, v5, :cond_0

    .line 469
    iget v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mWeekStart:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    rem-int v0, v5, v6

    .line 470
    .local v0, "calendarDay":I
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v1

    iget v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mPadding:I

    add-int v3, v5, v6

    .line 471
    .local v3, "x":I
    iget-object v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 472
    iget-object v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    .line 473
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 472
    invoke-virtual {v5, v9, v6, v7}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    int-to-float v6, v3

    int-to-float v7, v4

    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    .line 472
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "calendarDay":I
    .end local v3    # "x":I
    :cond_0
    return-void
.end method

.method private drawMonthTitle(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 459
    iget v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mWidth:I

    iget v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 460
    .local v0, "x":I
    sget v2, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_HEADER_SIZE:I

    sget v3, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_LABEL_TEXT_SIZE:I

    div-int/lit8 v3, v3, 0x3

    add-int v1, v2, v3

    .line 461
    .local v1, "y":I
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getMonthAndYearString()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 462
    return-void
.end method

.method private findDayOffset()I
    .locals 2

    .prologue
    .line 538
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mWeekStart:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayOfWeekStart:I

    goto :goto_0
.end method

.method private getMonthAndYearString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 451
    const/16 v6, 0x34

    .line 452
    .local v6, "flags":I
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 453
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 454
    .local v2, "millis":J
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mFormatter:Ljava/util/Formatter;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, "monthTitle":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDayInRange(I)Z
    .locals 1
    .param p1, "day"    # I

    .prologue
    .line 515
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRangeMax:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRangeMax:I

    if-gt p1, v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRangeMin:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRangeMin:I

    if-lt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDayClick(I)V
    .locals 4
    .param p1, "day"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mOnDayClickListener:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$OnDayClickListener;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mOnDayClickListener:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$OnDayClickListener;

    new-instance v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    iget v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mYear:I

    iget v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonth:I

    invoke-direct {v1, v2, v3, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;-><init>(III)V

    invoke-interface {v0, p0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$OnDayClickListener;->onDayClick(Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mTouchHelper:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    .line 579
    return-void
.end method

.method private sameDay(ILandroid/text/format/Time;)Z
    .locals 2
    .param p1, "day"    # I
    .param p2, "today"    # Landroid/text/format/Time;

    .prologue
    .line 431
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mYear:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonth:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/text/format/Time;->monthDay:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mTouchHelper:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->clearFocusedVirtualView()V

    .line 597
    return-void
.end method

.method public abstract drawMonthDay(Landroid/graphics/Canvas;IIIIIIIIIZ)V
.end method

.method protected drawMonthNums(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget v1, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRowHeight:I

    sget v2, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->DAY_SEPARATOR_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_HEADER_SIZE:I

    add-int v7, v1, v2

    .line 486
    .local v7, "y":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    mul-int/lit8 v2, v2, 0x2

    div-int v13, v1, v2

    .line 487
    .local v13, "dayWidthHalf":I
    invoke-direct/range {p0 .. p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->findDayOffset()I

    move-result v15

    .line 488
    .local v15, "j":I
    const/4 v5, 0x1

    .local v5, "dayNumber":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumCells:I

    if-gt v5, v1, :cond_3

    .line 489
    mul-int/lit8 v1, v15, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mPadding:I

    add-int v6, v1, v2

    .line 491
    .local v6, "x":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRowHeight:I

    sget v2, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->DAY_SEPARATOR_WIDTH:I

    sub-int v16, v1, v2

    .line 493
    .local v16, "yRelativeToDay":I
    sub-int v8, v6, v13

    .line 494
    .local v8, "startX":I
    add-int v9, v6, v13

    .line 495
    .local v9, "stopX":I
    sub-int v10, v7, v16

    .line 496
    .local v10, "startY":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRowHeight:I

    add-int v11, v10, v1

    .line 498
    .local v11, "stopY":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mYear:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonth:I

    invoke-static {v1, v2, v5}, Lcom/codetroopers/betterpickers/Utils;->formatDisabledDayForKey(III)I

    move-result v14

    .line 500
    .local v14, "disabledDayKey":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->isDayInRange(I)Z

    move-result v12

    .line 501
    .local v12, "dayIsEnabled":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDisabledDays:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 502
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDisabledDays:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    const/4 v12, 0x1

    .line 504
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mYear:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonth:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v12}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->drawMonthDay(Landroid/graphics/Canvas;IIIIIIIIIZ)V

    .line 506
    add-int/lit8 v15, v15, 0x1

    .line 507
    move-object/from16 v0, p0

    iget v1, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    if-ne v15, v1, :cond_1

    .line 508
    const/4 v15, 0x0

    .line 509
    move-object/from16 v0, p0

    iget v1, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRowHeight:I

    add-int/2addr v7, v1

    .line 488
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 502
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 512
    .end local v6    # "x":I
    .end local v8    # "startX":I
    .end local v9    # "stopX":I
    .end local v10    # "startY":I
    .end local v11    # "stopY":I
    .end local v12    # "dayIsEnabled":Z
    .end local v14    # "disabledDayKey":I
    .end local v16    # "yRelativeToDay":I
    :cond_3
    return-void
.end method

.method public getAccessibilityFocus()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
    .locals 4

    .prologue
    .line 585
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mTouchHelper:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v0

    .line 586
    .local v0, "day":I
    if-ltz v0, :cond_0

    .line 587
    new-instance v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    iget v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mYear:I

    iget v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonth:I

    invoke-direct {v1, v2, v3, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;-><init>(III)V

    .line 589
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDayFromLocation(FF)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, -0x1

    .line 551
    iget v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mPadding:I

    .line 552
    .local v2, "dayStart":I
    int-to-float v5, v2

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mWidth:I

    iget v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mPadding:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_2

    :cond_0
    move v1, v4

    .line 564
    :cond_1
    :goto_0
    return v1

    .line 556
    :cond_2
    sget v5, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_HEADER_SIZE:I

    int-to-float v5, v5

    sub-float v5, p2, v5

    float-to-int v5, v5

    iget v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRowHeight:I

    div-int v3, v5, v6

    .line 557
    .local v3, "row":I
    int-to-float v5, v2

    sub-float v5, p1, v5

    iget v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mWidth:I

    sub-int/2addr v6, v2

    iget v7, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mPadding:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v0, v5

    .line 559
    .local v0, "column":I
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->findDayOffset()I

    move-result v5

    sub-int v5, v0, v5

    add-int/lit8 v1, v5, 0x1

    .line 560
    .local v1, "day":I
    iget v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumDays:I

    mul-int/2addr v5, v3

    add-int/2addr v1, v5

    .line 561
    const/4 v5, 0x1

    if-lt v1, v5, :cond_3

    iget v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumCells:I

    if-le v1, v5, :cond_1

    :cond_3
    move v1, v4

    .line 562
    goto :goto_0
.end method

.method protected initView()V
    .locals 5

    .prologue
    const/16 v4, 0x3c

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 292
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    .line 293
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 294
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 295
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_LABEL_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 296
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitleTypeface:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 297
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayTextColorEnabled:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 299
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    .line 302
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 303
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 304
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 305
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 307
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    .line 308
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 309
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 310
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mTodayNumberColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 312
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 313
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 315
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDisabledDaySquarePaint:Landroid/graphics/Paint;

    .line 316
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDisabledDaySquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 317
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDisabledDaySquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 318
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDisabledDaySquarePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayBackgroundColorDisabled:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDisabledDaySquarePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 320
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDisabledDaySquarePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 321
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDisabledDaySquarePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 323
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    .line 324
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 325
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 326
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayTextColorEnabled:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayOfWeekTypeface:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 328
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 329
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 330
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 332
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 333
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 335
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 336
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 337
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 338
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->drawMonthTitle(Landroid/graphics/Canvas;)V

    .line 343
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->drawMonthDayLabels(Landroid/graphics/Canvas;)V

    .line 344
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->drawMonthNums(Landroid/graphics/Canvas;)V

    .line 345
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 438
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRowHeight:I

    iget v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumRows:I

    mul-int/2addr v1, v2

    sget v2, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MONTH_HEADER_SIZE:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->setMeasuredDimension(II)V

    .line 440
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 444
    iput p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mWidth:I

    .line 447
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mTouchHelper:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 448
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 285
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 279
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getDayFromLocation(FF)I

    move-result v0

    .line 280
    .local v0, "day":I
    if-ltz v0, :cond_0

    .line 281
    invoke-direct {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->onDayClick(I)V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public restoreAccessibilityFocus(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)Z
    .locals 2
    .param p1, "day"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .prologue
    .line 606
    iget v0, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mYear:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonth:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumCells:I

    if-le v0, v1, :cond_1

    .line 607
    :cond_0
    const/4 v0, 0x0

    .line 610
    :goto_0
    return v0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mTouchHelper:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;

    iget v1, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->setFocusedVirtualView(I)V

    .line 610
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reuse()V
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x6

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumRows:I

    .line 420
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->requestLayout()V

    .line 421
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 2
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 257
    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 259
    :cond_0
    return-void
.end method

.method public setDisabledDays(Landroid/util/SparseArray;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "disabledDays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;>;"
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDisabledDays:Landroid/util/SparseArray;

    .line 416
    return-void
.end method

.method public setMonthParams(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    .line 358
    const-string v3, "month"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "year"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 359
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "You must specify month and year for this view"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_0
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->setTag(Ljava/lang/Object;)V

    .line 363
    const-string v3, "height"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    const-string v3, "height"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRowHeight:I

    .line 365
    iget v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRowHeight:I

    sget v4, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MIN_HEIGHT:I

    if-ge v3, v4, :cond_1

    .line 366
    sget v3, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->MIN_HEIGHT:I

    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRowHeight:I

    .line 369
    :cond_1
    const-string v3, "selected_day"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    const-string v3, "selected_day"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mSelectedDay:I

    .line 372
    :cond_2
    const-string v3, "range_min"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 373
    const-string v3, "range_min"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRangeMin:I

    .line 375
    :cond_3
    const-string v3, "range_max"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 376
    const-string v3, "range_max"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mRangeMax:I

    .line 380
    :cond_4
    const-string v3, "month"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonth:I

    .line 381
    const-string v3, "year"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mYear:I

    .line 384
    new-instance v2, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 385
    .local v2, "today":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 386
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mHasToday:Z

    .line 387
    const/4 v3, -0x1

    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mToday:I

    .line 389
    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    iget v5, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonth:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 390
    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mCalendar:Ljava/util/Calendar;

    iget v4, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mYear:I

    invoke-virtual {v3, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 391
    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 392
    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayOfWeekStart:I

    .line 394
    const-string v3, "week_start"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 395
    const-string v3, "week_start"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mWeekStart:I

    .line 400
    :goto_0
    iget v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonth:I

    iget v4, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mYear:I

    invoke-static {v3, v4}, Lcom/codetroopers/betterpickers/Utils;->getDaysInMonth(II)I

    move-result v3

    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumCells:I

    .line 401
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumCells:I

    if-ge v1, v3, :cond_7

    .line 402
    add-int/lit8 v0, v1, 0x1

    .line 403
    .local v0, "day":I
    invoke-direct {p0, v0, v2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->sameDay(ILandroid/text/format/Time;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 404
    iput-boolean v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mHasToday:Z

    .line 405
    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mToday:I

    .line 401
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 397
    .end local v0    # "day":I
    .end local v1    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mWeekStart:I

    goto :goto_0

    .line 408
    .restart local v1    # "i":I
    :cond_7
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->calculateNumRows()I

    move-result v3

    iput v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mNumRows:I

    .line 411
    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mTouchHelper:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;

    invoke-virtual {v3}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 412
    return-void
.end method

.method public setOnDayClickListener(Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$OnDayClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$OnDayClickListener;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mOnDayClickListener:Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$OnDayClickListener;

    .line 263
    return-void
.end method

.method public setTheme(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "themeColors"    # Landroid/content/res/TypedArray;

    .prologue
    .line 244
    sget v0, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpAmPmTextColor:I

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->ampm_text_color:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mMonthTitleColor:I

    .line 245
    sget v0, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpBodySelectedTextColor:I

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->bpBlue:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mTodayNumberColor:I

    .line 246
    sget v0, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpBodyUnselectedTextColor:I

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->date_picker_text_disabled:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayTextColorEnabled:I

    .line 247
    sget v0, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpDisabledDayTextColor:I

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->date_picker_text_disabled:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayTextColorDisabled:I

    .line 248
    sget v0, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpDisabledDayBackgroundColor:I

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->bpDarker_red:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->mDayBackgroundColorDisabled:I

    .line 249
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->initView()V

    .line 250
    return-void
.end method
