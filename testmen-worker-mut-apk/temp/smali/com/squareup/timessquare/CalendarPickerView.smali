.class public Lcom/squareup/timessquare/CalendarPickerView;
.super Landroid/widget/ListView;
.source "CalendarPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;,
        Lcom/squareup/timessquare/CalendarPickerView$CellClickInterceptor;,
        Lcom/squareup/timessquare/CalendarPickerView$DateSelectableFilter;,
        Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;,
        Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;,
        Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;,
        Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;,
        Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;,
        Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;,
        Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;
    }
.end annotation


# instance fields
.field private final adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

.field private cellClickInterceptor:Lcom/squareup/timessquare/CalendarPickerView$CellClickInterceptor;

.field private final cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/timessquare/MonthCellDescriptor;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private dateConfiguredListener:Lcom/squareup/timessquare/CalendarPickerView$DateSelectableFilter;

.field private dateListener:Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

.field private dateTypeface:Landroid/graphics/Typeface;

.field private dayBackgroundResId:I

.field private dayTextColorResId:I

.field private dayViewAdapter:Lcom/squareup/timessquare/DayViewAdapter;

.field private decorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/timessquare/CalendarCellDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private displayHeader:Z

.field private displayOnly:Z

.field private dividerColor:I

.field private fullDateFormat:Ljava/text/DateFormat;

.field private headerTextColor:I

.field final highlightedCals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field final highlightedCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/timessquare/MonthCellDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private invalidDateListener:Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

.field final listener:Lcom/squareup/timessquare/MonthView$Listener;

.field private locale:Ljava/util/Locale;

.field private maxCal:Ljava/util/Calendar;

.field private minCal:Ljava/util/Calendar;

.field private monthCounter:Ljava/util/Calendar;

.field private monthNameFormat:Ljava/text/DateFormat;

.field final months:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/timessquare/MonthDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field final selectedCals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field final selectedCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/timessquare/MonthCellDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

.field private titleTextColor:I

.field private titleTypeface:Landroid/graphics/Typeface;

.field today:Ljava/util/Calendar;

.field private weekdayNameFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    .line 65
    new-instance v4, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;

    invoke-direct {v4, p0, v6}, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;-><init>(Lcom/squareup/timessquare/CalendarPickerView;Lcom/squareup/timessquare/CalendarPickerView$1;)V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->highlightedCells:Ljava/util/List;

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    .line 70
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->highlightedCals:Ljava/util/List;

    .line 92
    new-instance v4, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;

    invoke-direct {v4, p0, v6}, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;-><init>(Lcom/squareup/timessquare/CalendarPickerView;Lcom/squareup/timessquare/CalendarPickerView$1;)V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->invalidDateListener:Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

    .line 96
    new-instance v4, Lcom/squareup/timessquare/DefaultDayViewAdapter;

    invoke-direct {v4}, Lcom/squareup/timessquare/DefaultDayViewAdapter;-><init>()V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->dayViewAdapter:Lcom/squareup/timessquare/DayViewAdapter;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 113
    .local v3, "res":Landroid/content/res/Resources;
    sget-object v4, Lcom/squareup/timessquare/R$styleable;->CalendarPickerView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/squareup/timessquare/R$styleable;->CalendarPickerView_android_background:I

    sget v5, Lcom/squareup/timessquare/R$color;->calendar_bg:I

    .line 115
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 114
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 116
    .local v1, "bg":I
    sget v4, Lcom/squareup/timessquare/R$styleable;->CalendarPickerView_tsquare_dividerColor:I

    sget v5, Lcom/squareup/timessquare/R$color;->calendar_divider:I

    .line 117
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 116
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->dividerColor:I

    .line 118
    sget v4, Lcom/squareup/timessquare/R$styleable;->CalendarPickerView_tsquare_dayBackground:I

    sget v5, Lcom/squareup/timessquare/R$drawable;->calendar_bg_selector:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->dayBackgroundResId:I

    .line 120
    sget v4, Lcom/squareup/timessquare/R$styleable;->CalendarPickerView_tsquare_dayTextColor:I

    sget v5, Lcom/squareup/timessquare/R$color;->calendar_text_selector:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->dayTextColorResId:I

    .line 122
    sget v4, Lcom/squareup/timessquare/R$styleable;->CalendarPickerView_tsquare_titleTextColor:I

    sget v5, Lcom/squareup/timessquare/R$color;->calendar_text_active:I

    .line 123
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 122
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->titleTextColor:I

    .line 124
    sget v4, Lcom/squareup/timessquare/R$styleable;->CalendarPickerView_tsquare_displayHeader:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->displayHeader:Z

    .line 125
    sget v4, Lcom/squareup/timessquare/R$styleable;->CalendarPickerView_tsquare_headerTextColor:I

    sget v5, Lcom/squareup/timessquare/R$color;->calendar_text_active:I

    .line 126
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 125
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->headerTextColor:I

    .line 127
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    new-instance v4, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    invoke-direct {v4, p0, v6}, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;-><init>(Lcom/squareup/timessquare/CalendarPickerView;Lcom/squareup/timessquare/CalendarPickerView$1;)V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    .line 130
    invoke-virtual {p0, v6}, Lcom/squareup/timessquare/CalendarPickerView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 131
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/squareup/timessquare/CalendarPickerView;->setDividerHeight(I)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/squareup/timessquare/CalendarPickerView;->setBackgroundColor(I)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/squareup/timessquare/CalendarPickerView;->setCacheColorHint(I)V

    .line 134
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    .line 135
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->today:Ljava/util/Calendar;

    .line 136
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    .line 137
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    .line 138
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    .line 139
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget v5, Lcom/squareup/timessquare/R$string;->month_name_format:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthNameFormat:Ljava/text/DateFormat;

    .line 140
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget v5, Lcom/squareup/timessquare/R$string;->day_name_format:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->weekdayNameFormat:Ljava/text/DateFormat;

    .line 141
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->fullDateFormat:Ljava/text/DateFormat;

    .line 143
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarPickerView;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 145
    .local v2, "nextYear":Ljava/util/Calendar;
    invoke-virtual {v2, v7, v7}, Ljava/util/Calendar;->add(II)V

    .line 147
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/squareup/timessquare/CalendarPickerView;->init(Ljava/util/Date;Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 148
    invoke-virtual {v4, v5}, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;->withSelectedDate(Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    .line 150
    .end local v2    # "nextYear":Ljava/util/Calendar;
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/squareup/timessquare/CalendarPickerView;Ljava/util/Date;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->isDateSelectable(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->invalidDateListener:Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/squareup/timessquare/CalendarPickerView;Ljava/util/Date;Lcom/squareup/timessquare/MonthCellDescriptor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;
    .param p1, "x1"    # Ljava/util/Date;
    .param p2, "x2"    # Lcom/squareup/timessquare/MonthCellDescriptor;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/squareup/timessquare/CalendarPickerView;->doSelectDate(Ljava/util/Date;Lcom/squareup/timessquare/MonthCellDescriptor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->dateListener:Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/DayViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->dayViewAdapter:Lcom/squareup/timessquare/DayViewAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/squareup/timessquare/CalendarPickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->dividerColor:I

    return v0
.end method

.method static synthetic access$1700(Lcom/squareup/timessquare/CalendarPickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->dayBackgroundResId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/squareup/timessquare/CalendarPickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->dayTextColorResId:I

    return v0
.end method

.method static synthetic access$1900(Lcom/squareup/timessquare/CalendarPickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->titleTextColor:I

    return v0
.end method

.method static synthetic access$2000(Lcom/squareup/timessquare/CalendarPickerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->displayHeader:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/squareup/timessquare/CalendarPickerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->headerTextColor:I

    return v0
.end method

.method static synthetic access$2200(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->decorators:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/squareup/timessquare/CalendarPickerView;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->titleTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/squareup/timessquare/CalendarPickerView;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->dateTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->fullDateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$300(Lcom/squareup/timessquare/CalendarPickerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->validateAndUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/squareup/timessquare/CalendarPickerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->scrollToSelectedDates()V

    return-void
.end method

.method static synthetic access$500(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$600(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->weekdayNameFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$602(Lcom/squareup/timessquare/CalendarPickerView;Ljava/text/DateFormat;)Ljava/text/DateFormat;
    .locals 0
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;
    .param p1, "x1"    # Ljava/text/DateFormat;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->weekdayNameFormat:Ljava/text/DateFormat;

    return-object p1
.end method

.method static synthetic access$700(Lcom/squareup/timessquare/CalendarPickerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->displayOnly:Z

    return v0
.end method

.method static synthetic access$702(Lcom/squareup/timessquare/CalendarPickerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->displayOnly:Z

    return p1
.end method

.method static synthetic access$800(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$CellClickInterceptor;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->cellClickInterceptor:Lcom/squareup/timessquare/CalendarPickerView$CellClickInterceptor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    return-object v0
.end method

.method private applyMultiSelect(Ljava/util/Date;Ljava/util/Calendar;)Ljava/util/Date;
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "selectedCal"    # Ljava/util/Calendar;

    .prologue
    .line 650
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 651
    .local v1, "selectedCell":Lcom/squareup/timessquare/MonthCellDescriptor;
    invoke-virtual {v1}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 653
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/squareup/timessquare/MonthCellDescriptor;->setSelected(Z)V

    .line 654
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 655
    const/4 p1, 0x0

    .line 659
    .end local v1    # "selectedCell":Lcom/squareup/timessquare/MonthCellDescriptor;
    :cond_1
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 660
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {v0, p2}, Lcom/squareup/timessquare/CalendarPickerView;->sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 661
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 665
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_3
    return-object p1
.end method

.method private static betweenDates(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "minCal"    # Ljava/util/Calendar;
    .param p2, "maxCal"    # Ljava/util/Calendar;

    .prologue
    .line 859
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 860
    .local v0, "date":Ljava/util/Date;
    invoke-static {v0, p1, p2}, Lcom/squareup/timessquare/CalendarPickerView;->betweenDates(Ljava/util/Date;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    return v1
.end method

.method static betweenDates(Ljava/util/Date;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "minCal"    # Ljava/util/Calendar;
    .param p2, "maxCal"    # Ljava/util/Calendar;

    .prologue
    .line 864
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 865
    .local v0, "min":Ljava/util/Date;
    invoke-virtual {p0, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private clearOldSelections()V
    .locals 6

    .prologue
    .line 628
    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 630
    .local v1, "selectedCell":Lcom/squareup/timessquare/MonthCellDescriptor;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/squareup/timessquare/MonthCellDescriptor;->setSelected(Z)V

    .line 632
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->dateListener:Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    if-eqz v4, :cond_0

    .line 633
    invoke-virtual {v1}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v2

    .line 635
    .local v2, "selectedDate":Ljava/util/Date;
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    sget-object v5, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->RANGE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    if-ne v4, v5, :cond_2

    .line 636
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 637
    .local v0, "index":I
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_0

    .line 638
    :cond_1
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->dateListener:Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    invoke-interface {v4, v2}, Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;->onDateUnselected(Ljava/util/Date;)V

    goto :goto_0

    .line 641
    .end local v0    # "index":I
    :cond_2
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->dateListener:Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    invoke-interface {v4, v2}, Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;->onDateUnselected(Ljava/util/Date;)V

    goto :goto_0

    .line 645
    .end local v1    # "selectedCell":Lcom/squareup/timessquare/MonthCellDescriptor;
    .end local v2    # "selectedDate":Ljava/util/Date;
    :cond_3
    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 646
    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 647
    return-void
.end method

.method private static containsDate(Ljava/util/List;Ljava/util/Calendar;)Z
    .locals 3
    .param p1, "cal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;",
            "Ljava/util/Calendar;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 828
    .local p0, "selectedCals":Ljava/util/List;, "Ljava/util/List<Ljava/util/Calendar;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 829
    .local v0, "selectedCal":Ljava/util/Calendar;
    invoke-static {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    const/4 v1, 0x1

    .line 833
    .end local v0    # "selectedCal":Ljava/util/Calendar;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private containsDate(Ljava/util/List;Ljava/util/Date;)Z
    .locals 2
    .param p2, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, "selectedCals":Ljava/util/List;, "Ljava/util/List<Ljava/util/Calendar;>;"
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 823
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 824
    invoke-static {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->containsDate(Ljava/util/List;Ljava/util/Calendar;)Z

    move-result v1

    return v1
.end method

.method private static dbg(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "minDate"    # Ljava/util/Date;
    .param p1, "maxDate"    # Ljava/util/Date;

    .prologue
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmaxDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doSelectDate(Ljava/util/Date;Lcom/squareup/timessquare/MonthCellDescriptor;)Z
    .locals 13
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "cell"    # Lcom/squareup/timessquare/MonthCellDescriptor;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 559
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 560
    .local v2, "newlySelectedCal":Ljava/util/Calendar;
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 562
    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->setMidnight(Ljava/util/Calendar;)V

    .line 565
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 566
    .local v3, "selectedCell":Lcom/squareup/timessquare/MonthCellDescriptor;
    sget-object v10, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->NONE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    invoke-virtual {v3, v10}, Lcom/squareup/timessquare/MonthCellDescriptor;->setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    goto :goto_0

    .line 569
    .end local v3    # "selectedCell":Lcom/squareup/timessquare/MonthCellDescriptor;
    :cond_0
    sget-object v7, Lcom/squareup/timessquare/CalendarPickerView$3;->$SwitchMap$com$squareup$timessquare$CalendarPickerView$SelectionMode:[I

    iget-object v10, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    invoke-virtual {v10}, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->ordinal()I

    move-result v10

    aget v7, v7, v10

    packed-switch v7, :pswitch_data_0

    .line 588
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown selectionMode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 571
    :pswitch_0
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v8, :cond_7

    .line 573
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->clearOldSelections()V

    .line 591
    :cond_1
    :goto_1
    if-eqz p1, :cond_8

    .line 593
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/timessquare/MonthCellDescriptor;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 594
    :cond_2
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual {p2, v8}, Lcom/squareup/timessquare/MonthCellDescriptor;->setSelected(Z)V

    .line 597
    :cond_3
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    sget-object v10, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->RANGE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    if-ne v7, v10, :cond_8

    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v8, :cond_8

    .line 601
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/timessquare/MonthCellDescriptor;

    invoke-virtual {v7}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v5

    .line 602
    .local v5, "start":Ljava/util/Date;
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/timessquare/MonthCellDescriptor;

    invoke-virtual {v7}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 603
    .local v0, "end":Ljava/util/Date;
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/timessquare/MonthCellDescriptor;

    sget-object v10, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->FIRST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    invoke-virtual {v7, v10}, Lcom/squareup/timessquare/MonthCellDescriptor;->setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    .line 604
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/timessquare/MonthCellDescriptor;

    sget-object v10, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->LAST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    invoke-virtual {v7, v10}, Lcom/squareup/timessquare/MonthCellDescriptor;->setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    .line 606
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 607
    .local v1, "month":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 608
    .local v6, "week":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 609
    .local v4, "singleCell":Lcom/squareup/timessquare/MonthCellDescriptor;
    invoke-virtual {v4}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 610
    invoke-virtual {v4}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 611
    invoke-virtual {v4}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 612
    invoke-virtual {v4, v8}, Lcom/squareup/timessquare/MonthCellDescriptor;->setSelected(Z)V

    .line 613
    sget-object v12, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->MIDDLE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    invoke-virtual {v4, v12}, Lcom/squareup/timessquare/MonthCellDescriptor;->setRangeState(Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    .line 614
    iget-object v12, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 574
    .end local v0    # "end":Ljava/util/Date;
    .end local v1    # "month":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;>;"
    .end local v4    # "singleCell":Lcom/squareup/timessquare/MonthCellDescriptor;
    .end local v5    # "start":Ljava/util/Date;
    .end local v6    # "week":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;"
    :cond_7
    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 576
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->clearOldSelections()V

    goto/16 :goto_1

    .line 581
    :pswitch_1
    invoke-direct {p0, p1, v2}, Lcom/squareup/timessquare/CalendarPickerView;->applyMultiSelect(Ljava/util/Date;Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object p1

    .line 582
    goto/16 :goto_1

    .line 585
    :pswitch_2
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->clearOldSelections()V

    goto/16 :goto_1

    .line 623
    :cond_8
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->validateAndUpdate()V

    .line 624
    if-eqz p1, :cond_9

    move v7, v8

    :goto_3
    return v7

    :cond_9
    move v7, v9

    goto :goto_3

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMonthCellWithIndexByDate(Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;
    .locals 10
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 710
    const/4 v2, 0x0

    .line 711
    .local v2, "index":I
    iget-object v6, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .line 712
    .local v4, "searchCal":Ljava/util/Calendar;
    invoke-virtual {v4, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 713
    iget-object v6, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 715
    .local v0, "actCal":Ljava/util/Calendar;
    iget-object v6, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 716
    .local v3, "monthCells":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 717
    .local v5, "weekCells":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 718
    .local v1, "actCell":Lcom/squareup/timessquare/MonthCellDescriptor;
    invoke-virtual {v1}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 719
    invoke-static {v0, v4}, Lcom/squareup/timessquare/CalendarPickerView;->sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v1}, Lcom/squareup/timessquare/MonthCellDescriptor;->isSelectable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 720
    new-instance v6, Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;

    invoke-direct {v6, v1, v2}, Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;-><init>(Lcom/squareup/timessquare/MonthCellDescriptor;I)V

    .line 726
    .end local v1    # "actCell":Lcom/squareup/timessquare/MonthCellDescriptor;
    .end local v3    # "monthCells":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;>;"
    .end local v5    # "weekCells":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;"
    :goto_1
    return-object v6

    .line 724
    .restart local v3    # "monthCells":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 725
    goto :goto_0

    .line 726
    .end local v3    # "monthCells":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;>;"
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private isDateSelectable(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 874
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->dateConfiguredListener:Lcom/squareup/timessquare/CalendarPickerView$DateSelectableFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->dateConfiguredListener:Lcom/squareup/timessquare/CalendarPickerView$DateSelectableFilter;

    invoke-interface {v0, p1}, Lcom/squareup/timessquare/CalendarPickerView$DateSelectableFilter;->isDateSelectable(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static maxDate(Ljava/util/List;)Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;)",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .prologue
    .line 845
    .local p0, "selectedCals":Ljava/util/List;, "Ljava/util/List<Ljava/util/Calendar;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 846
    :cond_0
    const/4 v0, 0x0

    .line 849
    :goto_0
    return-object v0

    .line 848
    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 849
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    goto :goto_0
.end method

.method private static minDate(Ljava/util/List;)Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;)",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .prologue
    .line 837
    .local p0, "selectedCals":Ljava/util/List;, "Ljava/util/List<Ljava/util/Calendar;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 838
    :cond_0
    const/4 v0, 0x0

    .line 841
    :goto_0
    return-object v0

    .line 840
    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 841
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    goto :goto_0
.end method

.method private static sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "selectedDate"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 853
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 854
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 855
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sameMonth(Ljava/util/Calendar;Lcom/squareup/timessquare/MonthDescriptor;)Z
    .locals 3
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "month"    # Lcom/squareup/timessquare/MonthDescriptor;

    .prologue
    const/4 v0, 0x1

    .line 870
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/squareup/timessquare/MonthDescriptor;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/squareup/timessquare/MonthDescriptor;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollToSelectedDates()V
    .locals 8

    .prologue
    .line 348
    const/4 v3, 0x0

    .line 349
    .local v3, "selectedIndex":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 350
    .local v5, "todayIndex":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .line 351
    .local v4, "today":Ljava/util/Calendar;
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    iget-object v6, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 352
    iget-object v6, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/MonthDescriptor;

    .line 353
    .local v1, "month":Lcom/squareup/timessquare/MonthDescriptor;
    if-nez v3, :cond_2

    .line 354
    iget-object v6, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 355
    .local v2, "selectedCal":Ljava/util/Calendar;
    invoke-static {v2, v1}, Lcom/squareup/timessquare/CalendarPickerView;->sameMonth(Ljava/util/Calendar;Lcom/squareup/timessquare/MonthDescriptor;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 356
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 360
    .end local v2    # "selectedCal":Ljava/util/Calendar;
    :cond_1
    if-nez v3, :cond_2

    if-nez v5, :cond_2

    invoke-static {v4, v1}, Lcom/squareup/timessquare/CalendarPickerView;->sameMonth(Ljava/util/Calendar;Lcom/squareup/timessquare/MonthDescriptor;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 361
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 351
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "month":Lcom/squareup/timessquare/MonthDescriptor;
    :cond_3
    if-eqz v3, :cond_5

    .line 366
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/squareup/timessquare/CalendarPickerView;->scrollToSelectedMonth(I)V

    .line 370
    :cond_4
    :goto_1
    return-void

    .line 367
    :cond_5
    if-eqz v5, :cond_4

    .line 368
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/squareup/timessquare/CalendarPickerView;->scrollToSelectedMonth(I)V

    goto :goto_1
.end method

.method private scrollToSelectedMonth(I)V
    .locals 1
    .param p1, "selectedIndex"    # I

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->scrollToSelectedMonth(IZ)V

    .line 331
    return-void
.end method

.method private scrollToSelectedMonth(IZ)V
    .locals 1
    .param p1, "selectedIndex"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 334
    new-instance v0, Lcom/squareup/timessquare/CalendarPickerView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/timessquare/CalendarPickerView$1;-><init>(Lcom/squareup/timessquare/CalendarPickerView;IZ)V

    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarPickerView;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method static setMidnight(Ljava/util/Calendar;)V
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    .line 475
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 476
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 477
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 478
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 479
    return-void
.end method

.method private validateAndUpdate()V
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarPickerView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    invoke-virtual {v0}, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->notifyDataSetChanged()V

    .line 327
    return-void
.end method

.method private validateDate(Ljava/util/Date;)V
    .locals 5
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 547
    if-nez p1, :cond_0

    .line 548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Selected date must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SelectedDate must be between minDate and maxDate.%nminDate: %s%nmaxDate: %s%nselectedDate: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    .line 553
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 551
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_2
    return-void
.end method


# virtual methods
.method public clearHighlightedDates()V
    .locals 3

    .prologue
    .line 688
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->highlightedCells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 689
    .local v0, "cal":Lcom/squareup/timessquare/MonthCellDescriptor;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/squareup/timessquare/MonthCellDescriptor;->setHighlighted(Z)V

    goto :goto_0

    .line 691
    .end local v0    # "cal":Lcom/squareup/timessquare/MonthCellDescriptor;
    :cond_0
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->highlightedCells:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 692
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView;->highlightedCals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 694
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->validateAndUpdate()V

    .line 695
    return-void
.end method

.method public fixDialogDimens()V
    .locals 4

    .prologue
    .line 398
    const-string v0, "Fixing dimensions to h = %d / w = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarPickerView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarPickerView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarPickerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarPickerView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 401
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarPickerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarPickerView;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 403
    new-instance v0, Lcom/squareup/timessquare/CalendarPickerView$2;

    invoke-direct {v0, p0}, Lcom/squareup/timessquare/CalendarPickerView$2;-><init>(Lcom/squareup/timessquare/CalendarPickerView;)V

    invoke-virtual {p0, v0}, Lcom/squareup/timessquare/CalendarPickerView;->post(Ljava/lang/Runnable;)Z

    .line 409
    return-void
.end method

.method public getDecorators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/timessquare/CalendarCellDecorator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->decorators:Ljava/util/List;

    return-object v0
.end method

.method getMonthCells(Lcom/squareup/timessquare/MonthDescriptor;Ljava/util/Calendar;)Ljava/util/List;
    .locals 21
    .param p1, "month"    # Lcom/squareup/timessquare/MonthDescriptor;
    .param p2, "startCal"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/timessquare/MonthDescriptor;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/timessquare/MonthCellDescriptor;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    .line 773
    .local v11, "cal":Ljava/util/Calendar;
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 774
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v12, "cells":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;>;"
    const/4 v1, 0x5

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 776
    const/4 v1, 0x7

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 777
    .local v13, "firstDayOfWeek":I
    invoke-virtual {v11}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int v16, v1, v13

    .line 778
    .local v16, "offset":I
    if-lez v16, :cond_0

    .line 779
    add-int/lit8 v16, v16, -0x7

    .line 781
    :cond_0
    const/4 v1, 0x5

    move/from16 v0, v16

    invoke-virtual {v11, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 783
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-static {v1}, Lcom/squareup/timessquare/CalendarPickerView;->minDate(Ljava/util/List;)Ljava/util/Calendar;

    move-result-object v15

    .line 784
    .local v15, "minSelectedCal":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-static {v1}, Lcom/squareup/timessquare/CalendarPickerView;->maxDate(Ljava/util/List;)Ljava/util/Calendar;

    move-result-object v14

    .line 786
    .local v14, "maxSelectedCal":Ljava/util/Calendar;
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/timessquare/MonthDescriptor;->getMonth()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-lt v1, v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/timessquare/MonthDescriptor;->getYear()I

    move-result v18

    move/from16 v0, v18

    if-ge v1, v0, :cond_9

    :cond_2
    const/4 v1, 0x1

    .line 787
    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/timessquare/MonthDescriptor;->getYear()I

    move-result v18

    move/from16 v0, v18

    if-gt v1, v0, :cond_9

    .line 788
    const-string v1, "Building week row starting at %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v17, "weekCells":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;"
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    const/4 v10, 0x0

    .local v10, "c":I
    :goto_0
    const/4 v1, 0x7

    if-ge v10, v1, :cond_1

    .line 792
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 793
    .local v2, "date":Ljava/util/Date;
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/timessquare/MonthDescriptor;->getMonth()I

    move-result v18

    move/from16 v0, v18

    if-ne v1, v0, :cond_4

    const/4 v3, 0x1

    .line 794
    .local v3, "isCurrentMonth":Z
    :goto_1
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-static {v1, v11}, Lcom/squareup/timessquare/CalendarPickerView;->containsDate(Ljava/util/List;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v5, 0x1

    .line 795
    .local v5, "isSelected":Z
    :goto_2
    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    move-object/from16 v18, v0

    .line 796
    move-object/from16 v0, v18

    invoke-static {v11, v1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->betweenDates(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/squareup/timessquare/CalendarPickerView;->isDateSelectable(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    .line 797
    .local v4, "isSelectable":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/timessquare/CalendarPickerView;->today:Ljava/util/Calendar;

    invoke-static {v11, v1}, Lcom/squareup/timessquare/CalendarPickerView;->sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v6

    .line 798
    .local v6, "isToday":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/timessquare/CalendarPickerView;->highlightedCals:Ljava/util/List;

    invoke-static {v1, v11}, Lcom/squareup/timessquare/CalendarPickerView;->containsDate(Ljava/util/List;Ljava/util/Calendar;)Z

    move-result v7

    .line 799
    .local v7, "isHighlighted":Z
    const/4 v1, 0x5

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 801
    .local v8, "value":I
    sget-object v9, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->NONE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    .line 802
    .local v9, "rangeState":Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v1, v0, :cond_3

    .line 803
    invoke-static {v15, v11}, Lcom/squareup/timessquare/CalendarPickerView;->sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 804
    sget-object v9, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->FIRST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    .line 812
    :cond_3
    :goto_4
    new-instance v1, Lcom/squareup/timessquare/MonthCellDescriptor;

    invoke-direct/range {v1 .. v9}, Lcom/squareup/timessquare/MonthCellDescriptor;-><init>(Ljava/util/Date;ZZZZZILcom/squareup/timessquare/MonthCellDescriptor$RangeState;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    const/4 v1, 0x5

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 791
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 793
    .end local v3    # "isCurrentMonth":Z
    .end local v4    # "isSelectable":Z
    .end local v5    # "isSelected":Z
    .end local v6    # "isToday":Z
    .end local v7    # "isHighlighted":Z
    .end local v8    # "value":I
    .end local v9    # "rangeState":Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 794
    .restart local v3    # "isCurrentMonth":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 796
    .restart local v5    # "isSelected":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 805
    .restart local v4    # "isSelectable":Z
    .restart local v6    # "isToday":Z
    .restart local v7    # "isHighlighted":Z
    .restart local v8    # "value":I
    .restart local v9    # "rangeState":Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-static {v1}, Lcom/squareup/timessquare/CalendarPickerView;->maxDate(Ljava/util/List;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/squareup/timessquare/CalendarPickerView;->sameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 806
    sget-object v9, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->LAST:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    goto :goto_4

    .line 807
    :cond_8
    invoke-static {v11, v15, v14}, Lcom/squareup/timessquare/CalendarPickerView;->betweenDates(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 808
    sget-object v9, Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;->MIDDLE:Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;

    goto :goto_4

    .line 818
    .end local v2    # "date":Ljava/util/Date;
    .end local v3    # "isCurrentMonth":Z
    .end local v4    # "isSelectable":Z
    .end local v5    # "isSelected":Z
    .end local v6    # "isToday":Z
    .end local v7    # "isHighlighted":Z
    .end local v8    # "value":I
    .end local v9    # "rangeState":Lcom/squareup/timessquare/MonthCellDescriptor$RangeState;
    .end local v10    # "c":I
    .end local v17    # "weekCells":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/timessquare/MonthCellDescriptor;>;"
    :cond_9
    return-object v12
.end method

.method public getSelectedDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedDates()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v1, "selectedDates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 462
    .local v0, "cal":Lcom/squareup/timessquare/MonthCellDescriptor;
    invoke-virtual {v0}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    .end local v0    # "cal":Lcom/squareup/timessquare/MonthCellDescriptor;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 465
    return-object v1
.end method

.method public highlightDates(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p1, "dates":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Date;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 670
    .local v1, "date":Ljava/util/Date;
    invoke-direct {p0, v1}, Lcom/squareup/timessquare/CalendarPickerView;->validateDate(Ljava/util/Date;)V

    .line 672
    invoke-direct {p0, v1}, Lcom/squareup/timessquare/CalendarPickerView;->getMonthCellWithIndexByDate(Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;

    move-result-object v2

    .line 673
    .local v2, "monthCellWithMonthIndex":Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;
    if-eqz v2, :cond_0

    .line 674
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 675
    .local v3, "newlyHighlightedCal":Ljava/util/Calendar;
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 676
    iget-object v0, v2, Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;->cell:Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 678
    .local v0, "cell":Lcom/squareup/timessquare/MonthCellDescriptor;
    iget-object v5, p0, Lcom/squareup/timessquare/CalendarPickerView;->highlightedCells:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v5, p0, Lcom/squareup/timessquare/CalendarPickerView;->highlightedCals:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/squareup/timessquare/MonthCellDescriptor;->setHighlighted(Z)V

    goto :goto_0

    .line 684
    .end local v0    # "cell":Lcom/squareup/timessquare/MonthCellDescriptor;
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "monthCellWithMonthIndex":Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;
    .end local v3    # "newlyHighlightedCal":Ljava/util/Calendar;
    :cond_1
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->validateAndUpdate()V

    .line 685
    return-void
.end method

.method public init(Ljava/util/Date;Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 1
    .param p1, "minDate"    # Ljava/util/Date;
    .param p2, "maxDate"    # Ljava/util/Date;

    .prologue
    .line 256
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/squareup/timessquare/CalendarPickerView;->init(Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;)Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;
    .locals 10
    .param p1, "minDate"    # Ljava/util/Date;
    .param p2, "maxDate"    # Ljava/util/Date;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 170
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 171
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minDate and maxDate must be non-null.  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 172
    invoke-static {p1, p2}, Lcom/squareup/timessquare/CalendarPickerView;->dbg(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 174
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minDate must be before maxDate.  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 176
    invoke-static {p1, p2}, Lcom/squareup/timessquare/CalendarPickerView;->dbg(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 178
    :cond_2
    if-nez p3, :cond_3

    .line 179
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Locale is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    :cond_3
    iput-object p3, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    .line 184
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->today:Ljava/util/Calendar;

    .line 185
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    .line 186
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    .line 187
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    .line 188
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 189
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarPickerView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/squareup/timessquare/R$string;->month_name_format:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthNameFormat:Ljava/text/DateFormat;

    .line 190
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/timessquare/MonthDescriptor;

    .line 191
    .local v3, "month":Lcom/squareup/timessquare/MonthDescriptor;
    iget-object v5, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthNameFormat:Ljava/text/DateFormat;

    invoke-virtual {v3}, Lcom/squareup/timessquare/MonthDescriptor;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/squareup/timessquare/MonthDescriptor;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v3    # "month":Lcom/squareup/timessquare/MonthDescriptor;
    :cond_4
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 194
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarPickerView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/squareup/timessquare/R$string;->day_name_format:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->weekdayNameFormat:Ljava/text/DateFormat;

    .line 195
    invoke-static {v8, p3}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->fullDateFormat:Ljava/text/DateFormat;

    .line 197
    sget-object v4, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->SINGLE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    iput-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectionMode:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    .line 199
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 200
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->selectedCells:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 201
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->highlightedCals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 202
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->highlightedCells:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 205
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 206
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 207
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    invoke-virtual {v4, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 208
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    invoke-virtual {v4, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 209
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    invoke-static {v4}, Lcom/squareup/timessquare/CalendarPickerView;->setMidnight(Ljava/util/Calendar;)V

    .line 210
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    invoke-static {v4}, Lcom/squareup/timessquare/CalendarPickerView;->setMidnight(Ljava/util/Calendar;)V

    .line 211
    iput-boolean v9, p0, Lcom/squareup/timessquare/CalendarPickerView;->displayOnly:Z

    .line 215
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    const/16 v5, 0xc

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 218
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/squareup/timessquare/CalendarPickerView;->minCal:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 219
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 220
    .local v1, "maxMonth":I
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->maxCal:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 221
    .local v2, "maxYear":I
    :goto_1
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-le v4, v1, :cond_5

    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    .line 222
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v4, v2, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    .line 223
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    if-ge v4, v5, :cond_6

    .line 224
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 225
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Lcom/squareup/timessquare/MonthDescriptor;

    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    .line 226
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthNameFormat:Ljava/text/DateFormat;

    .line 227
    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/squareup/timessquare/MonthDescriptor;-><init>(IILjava/util/Date;Ljava/lang/String;)V

    .line 228
    .restart local v3    # "month":Lcom/squareup/timessquare/MonthDescriptor;
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->cells:Ljava/util/List;

    iget-object v5, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    invoke-virtual {p0, v3, v5}, Lcom/squareup/timessquare/CalendarPickerView;->getMonthCells(Lcom/squareup/timessquare/MonthDescriptor;Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v4, "Adding month %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v9

    invoke-static {v4, v5}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->monthCounter:Ljava/util/Calendar;

    invoke-virtual {v4, v8, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 234
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "month":Lcom/squareup/timessquare/MonthDescriptor;
    :cond_6
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->validateAndUpdate()V

    .line 235
    new-instance v4, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;

    invoke-direct {v4, p0}, Lcom/squareup/timessquare/CalendarPickerView$FluentInitializer;-><init>(Lcom/squareup/timessquare/CalendarPickerView;)V

    return-object v4
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have at least one month to display.  Did you forget to call init()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 453
    return-void
.end method

.method public scrollToDate(Ljava/util/Date;)Z
    .locals 5
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 373
    const/4 v3, 0x0

    .line 375
    .local v3, "selectedIndex":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 376
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 377
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 378
    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/timessquare/MonthDescriptor;

    .line 379
    .local v2, "month":Lcom/squareup/timessquare/MonthDescriptor;
    invoke-static {v1, v2}, Lcom/squareup/timessquare/CalendarPickerView;->sameMonth(Ljava/util/Calendar;Lcom/squareup/timessquare/MonthDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 384
    .end local v2    # "month":Lcom/squareup/timessquare/MonthDescriptor;
    :cond_0
    if-eqz v3, :cond_2

    .line 385
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/squareup/timessquare/CalendarPickerView;->scrollToSelectedMonth(I)V

    .line 386
    const/4 v4, 0x1

    .line 388
    :goto_1
    return v4

    .line 377
    .restart local v2    # "month":Lcom/squareup/timessquare/MonthDescriptor;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    .end local v2    # "month":Lcom/squareup/timessquare/MonthDescriptor;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public selectDate(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->selectDate(Ljava/util/Date;Z)Z

    move-result v0

    return v0
.end method

.method public selectDate(Ljava/util/Date;Z)Z
    .locals 3
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->validateDate(Ljava/util/Date;)V

    .line 535
    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->getMonthCellWithIndexByDate(Ljava/util/Date;)Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;

    move-result-object v0

    .line 536
    .local v0, "monthCellWithMonthIndex":Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->isDateSelectable(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 537
    :cond_0
    const/4 v1, 0x0

    .line 543
    :cond_1
    :goto_0
    return v1

    .line 539
    :cond_2
    iget-object v2, v0, Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;->cell:Lcom/squareup/timessquare/MonthCellDescriptor;

    invoke-direct {p0, p1, v2}, Lcom/squareup/timessquare/CalendarPickerView;->doSelectDate(Ljava/util/Date;Lcom/squareup/timessquare/MonthCellDescriptor;)Z

    move-result v1

    .line 540
    .local v1, "wasSelected":Z
    if-eqz v1, :cond_1

    .line 541
    iget v2, v0, Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;->monthIndex:I

    invoke-direct {p0, v2, p2}, Lcom/squareup/timessquare/CalendarPickerView;->scrollToSelectedMonth(IZ)V

    goto :goto_0
.end method

.method public setCellClickInterceptor(Lcom/squareup/timessquare/CalendarPickerView$CellClickInterceptor;)V
    .locals 0
    .param p1, "listener"    # Lcom/squareup/timessquare/CalendarPickerView$CellClickInterceptor;

    .prologue
    .line 917
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->cellClickInterceptor:Lcom/squareup/timessquare/CalendarPickerView$CellClickInterceptor;

    .line 918
    return-void
.end method

.method public setCustomDayView(Lcom/squareup/timessquare/DayViewAdapter;)V
    .locals 1
    .param p1, "dayViewAdapter"    # Lcom/squareup/timessquare/DayViewAdapter;

    .prologue
    .line 909
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->dayViewAdapter:Lcom/squareup/timessquare/DayViewAdapter;

    .line 910
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    invoke-virtual {v0}, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->notifyDataSetChanged()V

    .line 913
    :cond_0
    return-void
.end method

.method public setDateSelectableFilter(Lcom/squareup/timessquare/CalendarPickerView$DateSelectableFilter;)V
    .locals 0
    .param p1, "listener"    # Lcom/squareup/timessquare/CalendarPickerView$DateSelectableFilter;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->dateConfiguredListener:Lcom/squareup/timessquare/CalendarPickerView$DateSelectableFilter;

    .line 899
    return-void
.end method

.method public setDateTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "dateTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->dateTypeface:Landroid/graphics/Typeface;

    .line 424
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->validateAndUpdate()V

    .line 425
    return-void
.end method

.method public setDecorators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/timessquare/CalendarCellDecorator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "decorators":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/timessquare/CalendarCellDecorator;>;"
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->decorators:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView;->adapter:Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;

    invoke-virtual {v0}, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->notifyDataSetChanged()V

    .line 103
    :cond_0
    return-void
.end method

.method public setOnDateSelectedListener(Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    .prologue
    .line 878
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->dateListener:Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    .line 879
    return-void
.end method

.method public setOnInvalidDateSelectedListener(Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->invalidDateListener:Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

    .line 888
    return-void
.end method

.method public setTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "titleTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView;->titleTypeface:Landroid/graphics/Typeface;

    .line 416
    invoke-direct {p0}, Lcom/squareup/timessquare/CalendarPickerView;->validateAndUpdate()V

    .line 417
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->setTitleTypeface(Landroid/graphics/Typeface;)V

    .line 432
    invoke-virtual {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->setDateTypeface(Landroid/graphics/Typeface;)V

    .line 433
    return-void
.end method

.method public unfixDialogDimens()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 440
    const-string v0, "Reset the fixed dimensions to allow for re-measurement"

    invoke-static {v0}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarPickerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 443
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarPickerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 444
    invoke-virtual {p0}, Lcom/squareup/timessquare/CalendarPickerView;->requestLayout()V

    .line 445
    return-void
.end method
