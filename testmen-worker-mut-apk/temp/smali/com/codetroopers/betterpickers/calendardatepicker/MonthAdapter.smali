.class public abstract Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthAdapter.java"

# interfaces
.implements Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
    }
.end annotation


# static fields
.field protected static final MONTHS_IN_YEAR:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SimpleMonthAdapter"

.field protected static WEEK_7_OVERHANG_HEIGHT:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

.field private mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

.field private mThemeColors:Landroid/content/res/TypedArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x7

    sput v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mContext:Landroid/content/Context;

    .line 190
    iput-object p2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    .line 191
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->init()V

    .line 192
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getSelectedDay()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->setSelectedDay(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V

    .line 193
    return-void
.end method

.method private isDayDisabled(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)Z
    .locals 5
    .param p1, "day"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .prologue
    const/4 v0, 0x0

    .line 330
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getDisabledDays()Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getDisabledDays()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    iget v3, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    iget v4, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    .line 334
    invoke-static {v2, v3, v4}, Lcom/codetroopers/betterpickers/Utils;->formatDisabledDayForKey(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDayInRange(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)Z
    .locals 1
    .param p1, "day"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->compareTo(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMaxDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->compareTo(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRangeMaxInMonth(II)Z
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMaxDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v0

    iget v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMaxDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v0

    iget v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRangeMinInMonth(II)Z
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v0

    iget v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v0

    iget v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectedDayInMonth(II)Z
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    iget v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    iget v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract createMonthView(Landroid/content/Context;)Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMaxDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v0

    iget v0, v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v1

    iget v1, v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    .line 225
    invoke-interface {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMaxDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v1

    iget v1, v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    rsub-int/lit8 v1, v1, 0xb

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v1

    iget v1, v1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    sub-int/2addr v0, v1

    .line 224
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 235
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedDay()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_5

    move-object v2, p2

    .line 250
    check-cast v2, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    .line 252
    .local v2, "monthView":Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;
    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 263
    .restart local v0    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    .restart local v0    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 268
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v8}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v8

    iget v8, v8, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    add-int/2addr v8, p1

    rem-int/lit8 v1, v8, 0xc

    .line 269
    .local v1, "month":I
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v8}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v8

    iget v8, v8, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    add-int/2addr v8, p1

    div-int/lit8 v8, v8, 0xc

    iget-object v9, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v9}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v9

    iget v9, v9, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    add-int v7, v8, v9

    .line 270
    .local v7, "year":I
    const/4 v6, -0x1

    .line 271
    .local v6, "selectedDay":I
    invoke-direct {p0, v7, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->isSelectedDayInMonth(II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 272
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    iget v6, v8, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    .line 275
    :cond_1
    const/4 v5, -0x1

    .line 276
    .local v5, "rangeMin":I
    invoke-direct {p0, v7, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->isRangeMinInMonth(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 277
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v8}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v8

    iget v5, v8, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    .line 280
    :cond_2
    const/4 v4, -0x1

    .line 281
    .local v4, "rangeMax":I
    invoke-direct {p0, v7, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->isRangeMaxInMonth(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 282
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v8}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMaxDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v8

    iget v4, v8, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    .line 286
    :cond_3
    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->reuse()V

    .line 289
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v8}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getDisabledDays()Landroid/util/SparseArray;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 290
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v8}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getDisabledDays()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->setDisabledDays(Landroid/util/SparseArray;)V

    .line 293
    :cond_4
    const-string v8, "selected_day"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v8, "year"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v8, "month"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v8, "week_start"

    iget-object v9, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v9}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getFirstDayOfWeek()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v8, "range_min"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v8, "range_max"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {v2, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->setMonthParams(Ljava/util/HashMap;)V

    .line 300
    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->invalidate()V

    .line 301
    return-object v2

    .line 254
    .end local v1    # "month":I
    .end local v2    # "monthView":Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;
    .end local v4    # "rangeMax":I
    .end local v5    # "rangeMin":I
    .end local v6    # "selectedDay":I
    .end local v7    # "year":I
    :cond_5
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v8}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->createMonthView(Landroid/content/Context;)Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;

    move-result-object v2

    .line 255
    .restart local v2    # "monthView":Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;
    iget-object v8, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mThemeColors:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v8}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->setTheme(Landroid/content/res/TypedArray;)V

    .line 257
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 259
    .local v3, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2, v3}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->setClickable(Z)V

    .line 261
    invoke-virtual {v2, p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;->setOnDayClickListener(Lcom/codetroopers/betterpickers/calendardatepicker/MonthView$OnDayClickListener;)V

    goto/16 :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 213
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;-><init>(J)V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 214
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMaxDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->compareTo(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)I

    move-result v0

    if-lez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMaxDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->compareTo(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)I

    move-result v0

    if-gez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 220
    :cond_1
    return-void
.end method

.method public onDayClick(Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V
    .locals 1
    .param p1, "view"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;
    .param p2, "day"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .prologue
    .line 320
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->isDayInRange(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->isDayDisabled(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0, p2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->onDayTapped(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V

    .line 323
    :cond_0
    return-void
.end method

.method protected onDayTapped(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V
    .locals 4
    .param p1, "day"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    invoke-interface {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->tryVibrate()V

    .line 344
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mController:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    iget v1, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    iget v2, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    iget v3, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    invoke-interface {v0, v1, v2, v3}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->onDayOfMonthSelected(III)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->setSelectedDay(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V

    .line 346
    return-void
.end method

.method public setSelectedDay(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V
    .locals 0
    .param p1, "day"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mSelectedDay:Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .line 202
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->notifyDataSetChanged()V

    .line 203
    return-void
.end method

.method public setTheme(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "mThemeColors"    # Landroid/content/res/TypedArray;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;->mThemeColors:Landroid/content/res/TypedArray;

    .line 56
    return-void
.end method
