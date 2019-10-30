.class public Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;
.super Landroid/widget/FrameLayout;
.source "RadialPickerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final AMPM_INDEX:I = 0x2

.field private static final ENABLE_PICKER_INDEX:I = 0x3

.field private static final HOUR_INDEX:I = 0x0

.field private static final HOUR_VALUE_TO_DEGREES_STEP_SIZE:I = 0x1e

.field private static final MINUTE_INDEX:I = 0x1

.field private static final MINUTE_VALUE_TO_DEGREES_STEP_SIZE:I = 0x6

.field private static final PM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RadialPickerLayout"

.field private static final VISIBLE_DEGREES_STEP_SIZE:I = 0x1e


# instance fields
.field private final TAP_TIMEOUT:I

.field private final TOUCH_SLOP:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

.field private mCircleView:Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;

.field private mCurrentHoursOfDay:I

.field private mCurrentItemShowing:I

.field private mCurrentMinutes:I

.field private mDoingMove:Z

.field private mDoingTouch:Z

.field private mDownDegrees:I

.field private mDownX:F

.field private mDownY:F

.field private mGrayBox:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

.field private mHideAmPm:Z

.field private mHourRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

.field private mHourRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsTouchingAmOrPm:I

.field private mLastValueSelected:I

.field private mListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;

.field private mMinuteRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

.field private mMinuteRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

.field private mSnapPrefer30sMap:[I

.field private mTimeInitialized:Z

.field private mTransition:Lcom/nineoldandroids/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 93
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    .line 103
    invoke-virtual {p0, p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 105
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->TOUCH_SLOP:I

    .line 106
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->TAP_TIMEOUT:I

    .line 107
    iput-boolean v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDoingMove:Z

    .line 109
    new-instance v1, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;

    invoke-direct {v1, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCircleView:Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;

    .line 110
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCircleView:Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 112
    new-instance v1, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    invoke-direct {v1, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    .line 113
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 115
    new-instance v1, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    .line 116
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v1, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    .line 118
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v1, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    .line 121
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 122
    new-instance v1, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    .line 123
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->preparePrefer30sMap()V

    .line 128
    iput v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mLastValueSelected:I

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mInputEnabled:Z

    .line 131
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    .line 132
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codetroopers/betterpickers/R$color;->bpTransparent_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 134
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 137
    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 139
    iput-boolean v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mTimeInitialized:Z

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    .prologue
    .line 46
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    return v0
.end method

.method static synthetic access$100(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;)Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDoingMove:Z

    return p1
.end method

.method static synthetic access$300(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    .prologue
    .line 46
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDownDegrees:I

    return v0
.end method

.method static synthetic access$400(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;IZZZ)I
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mLastValueSelected:I

    return p1
.end method

.method static synthetic access$600(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;

    return-object v0
.end method

.method private getCurrentlyShowingValue()I
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    .line 268
    .local v0, "currentIndex":I
    if-nez v0, :cond_0

    .line 269
    iget v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentHoursOfDay:I

    .line 273
    :goto_0
    return v1

    .line 270
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 271
    iget v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentMinutes:I

    goto :goto_0

    .line 273
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I
    .locals 2
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "forceLegal"    # Z
    .param p4, "isInnerCircle"    # [Ljava/lang/Boolean;

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    .line 488
    .local v0, "currentItem":I
    if-nez v0, :cond_0

    .line 489
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v1

    .line 495
    :goto_0
    return v1

    .line 491
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v1

    goto :goto_0

    .line 495
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private isHourInnerCircle(I)Z
    .locals 1
    .param p1, "hourOfDay"    # I

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private preparePrefer30sMap()V
    .locals 6

    .prologue
    const/16 v5, 0x169

    .line 337
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mSnapPrefer30sMap:[I

    .line 340
    const/4 v3, 0x0

    .line 342
    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    .line 346
    .local v0, "count":I
    const/16 v2, 0x8

    .line 348
    .local v2, "expectedCount":I
    const/4 v1, 0x0

    .local v1, "degrees":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 350
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aput v3, v4, v1

    .line 353
    if-ne v0, v2, :cond_2

    .line 354
    add-int/lit8 v3, v3, 0x6

    .line 355
    const/16 v4, 0x168

    if-ne v3, v4, :cond_0

    .line 356
    const/4 v2, 0x7

    .line 362
    :goto_1
    const/4 v0, 0x1

    .line 348
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_1

    .line 358
    const/16 v2, 0xe

    goto :goto_1

    .line 360
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 364
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 367
    :cond_3
    return-void
.end method

.method private reselectSelector(IZZZ)I
    .locals 8
    .param p1, "degrees"    # I
    .param p2, "isInnerCircle"    # Z
    .param p3, "forceToVisibleValue"    # Z
    .param p4, "forceDrawDot"    # Z

    .prologue
    const/16 v7, 0x168

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 428
    if-ne p1, v4, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v4

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    .line 434
    .local v1, "currentShowing":I
    if-nez p3, :cond_3

    if-ne v1, v5, :cond_3

    move v0, v5

    .line 435
    .local v0, "allowFineGrained":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 436
    invoke-direct {p0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->snapPrefer30s(I)I

    move-result p1

    .line 442
    :goto_2
    if-nez v1, :cond_5

    .line 443
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    .line 444
    .local v2, "radialSelectorView":Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;
    const/16 v3, 0x1e

    .line 449
    .local v3, "stepSize":I
    :goto_3
    invoke-virtual {v2, p1, p2, p4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->setSelection(IZZ)V

    .line 450
    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->invalidate()V

    .line 452
    if-nez v1, :cond_8

    .line 453
    iget-boolean v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v5, :cond_7

    .line 454
    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    .line 455
    const/16 p1, 0x168

    .line 466
    :cond_2
    :goto_4
    div-int v4, p1, v3

    .line 467
    .local v4, "value":I
    if-nez v1, :cond_0

    iget-boolean v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v5, :cond_0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 468
    add-int/lit8 v4, v4, 0xc

    goto :goto_0

    .end local v0    # "allowFineGrained":Z
    .end local v2    # "radialSelectorView":Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;
    .end local v3    # "stepSize":I
    .end local v4    # "value":I
    :cond_3
    move v0, v6

    .line 434
    goto :goto_1

    .line 438
    .restart local v0    # "allowFineGrained":Z
    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->snapOnly30s(II)I

    move-result p1

    goto :goto_2

    .line 446
    :cond_5
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    .line 447
    .restart local v2    # "radialSelectorView":Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;
    const/4 v3, 0x6

    .restart local v3    # "stepSize":I
    goto :goto_3

    .line 456
    :cond_6
    if-ne p1, v7, :cond_2

    if-nez p2, :cond_2

    .line 457
    const/4 p1, 0x0

    goto :goto_4

    .line 459
    :cond_7
    if-nez p1, :cond_2

    .line 460
    const/16 p1, 0x168

    goto :goto_4

    .line 462
    :cond_8
    if-ne p1, v7, :cond_2

    if-ne v1, v5, :cond_2

    .line 463
    const/4 p1, 0x0

    goto :goto_4
.end method

.method private setItem(II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 232
    if-nez p1, :cond_1

    .line 233
    invoke-direct {p0, v4, p2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setValueForItem(II)V

    .line 234
    rem-int/lit8 v2, p2, 0xc

    mul-int/lit8 v0, v2, 0x1e

    .line 235
    .local v0, "hourDegrees":I
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-direct {p0, p2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->setSelection(IZZ)V

    .line 236
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->invalidate()V

    .line 243
    .end local v0    # "hourDegrees":I
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    if-ne p1, v2, :cond_0

    .line 238
    invoke-direct {p0, v2, p2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setValueForItem(II)V

    .line 239
    mul-int/lit8 v1, p2, 0x6

    .line 240
    .local v1, "minuteDegrees":I
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {v2, v1, v4, v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->setSelection(IZZ)V

    .line 241
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->invalidate()V

    goto :goto_0
.end method

.method private setValueForItem(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 290
    if-nez p1, :cond_1

    .line 291
    iput p2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentHoursOfDay:I

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    if-ne p1, v1, :cond_2

    .line 293
    iput p2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentMinutes:I

    goto :goto_0

    .line 294
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 295
    if-nez p2, :cond_3

    .line 296
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentHoursOfDay:I

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentHoursOfDay:I

    goto :goto_0

    .line 297
    :cond_3
    if-ne p2, v1, :cond_0

    .line 298
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentHoursOfDay:I

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentHoursOfDay:I

    goto :goto_0
.end method

.method private snapOnly30s(II)I
    .locals 5
    .param p1, "degrees"    # I
    .param p2, "forceHigherOrLower"    # I

    .prologue
    .line 393
    const/16 v2, 0x1e

    .line 394
    .local v2, "stepSize":I
    div-int v3, p1, v2

    mul-int v1, v3, v2

    .line 395
    .local v1, "floor":I
    add-int v0, v1, v2

    .line 396
    .local v0, "ceiling":I
    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 397
    move p1, v0

    .line 410
    :goto_0
    return p1

    .line 398
    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 399
    if-ne p1, v1, :cond_1

    .line 400
    sub-int/2addr v1, v2

    .line 402
    :cond_1
    move p1, v1

    goto :goto_0

    .line 404
    :cond_2
    sub-int v3, p1, v1

    sub-int v4, v0, p1

    if-ge v3, v4, :cond_3

    .line 405
    move p1, v1

    goto :goto_0

    .line 407
    :cond_3
    move p1, v0

    goto :goto_0
.end method

.method private snapPrefer30s(I)I
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mSnapPrefer30sMap:[I

    if-nez v0, :cond_0

    .line 377
    const/4 v0, -0x1

    .line 379
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aget v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, 0x1

    .line 746
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    .line 748
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 749
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 750
    .local v1, "time":Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getHours()I

    move-result v6

    iput v6, v1, Landroid/text/format/Time;->hour:I

    .line 751
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getMinutes()I

    move-result v6

    iput v6, v1, Landroid/text/format/Time;->minute:I

    .line 752
    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 753
    .local v2, "millis":J
    const/4 v0, 0x1

    .line 754
    .local v0, "flags":I
    iget-boolean v6, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v6, :cond_0

    .line 755
    or-int/lit16 v0, v0, 0x80

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 758
    .local v4, "timeString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    .end local v0    # "flags":I
    .end local v1    # "time":Landroid/text/format/Time;
    .end local v2    # "millis":J
    .end local v4    # "timeString":Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public getCurrentItemShowing()I
    .locals 3

    .prologue
    .line 503
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentItemShowing:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentItemShowing:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 504
    const-string v0, "RadialPickerLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current item showing was unfortunately set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentItemShowing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v0, -0x1

    .line 507
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentItemShowing:I

    goto :goto_0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentHoursOfDay:I

    return v0
.end method

.method public getIsCurrentlyAmOrPm()I
    .locals 2

    .prologue
    .line 278
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentHoursOfDay:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    .line 280
    :cond_0
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentHoursOfDay:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 281
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentMinutes:I

    return v0
.end method

.method public initialize(Landroid/content/Context;Lcom/codetroopers/betterpickers/HapticFeedbackController;IIZ)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hapticFeedbackController"    # Lcom/codetroopers/betterpickers/HapticFeedbackController;
    .param p3, "initialHoursOfDay"    # I
    .param p4, "initialMinutes"    # I
    .param p5, "is24HourMode"    # Z

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 167
    const-string v2, "RadialPickerLayout"

    const-string v5, "Time has already been initialized."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void

    .line 171
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    .line 172
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIs24HourMode:Z

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHideAmPm:Z

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCircleView:Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHideAmPm:Z

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->initialize(Landroid/content/Context;Z)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCircleView:Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;

    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->invalidate()V

    .line 178
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHideAmPm:Z

    if-nez v2, :cond_1

    .line 179
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    const/16 v2, 0xc

    move/from16 v0, p3

    if-ge v0, v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->initialize(Landroid/content/Context;I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->invalidate()V

    .line 184
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 185
    .local v3, "res":Landroid/content/res/Resources;
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    .line 186
    .local v18, "hours":[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    .line 187
    .local v19, "hours24":[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_2

    .line 188
    .local v22, "minutes":[I
    const/16 v2, 0xc

    new-array v4, v2, [Ljava/lang/String;

    .line 189
    .local v4, "hoursTexts":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 190
    .local v21, "innerHoursTexts":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 191
    .local v23, "minutesTexts":[Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    const/16 v2, 0xc

    move/from16 v0, v20

    if-ge v0, v2, :cond_5

    .line 192
    if-eqz p5, :cond_4

    const-string v2, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v19, v20

    .line 193
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    aput-object v2, v4, v20

    .line 194
    const-string v2, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v18, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v21, v20

    .line 195
    const-string v2, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v22, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v23, v20

    .line 191
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 173
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "hoursTexts":[Ljava/lang/String;
    .end local v18    # "hours":[I
    .end local v19    # "hours24":[I
    .end local v20    # "i":I
    .end local v21    # "innerHoursTexts":[Ljava/lang/String;
    .end local v22    # "minutes":[I
    .end local v23    # "minutesTexts":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIs24HourMode:Z

    goto/16 :goto_1

    .line 179
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 193
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "hoursTexts":[Ljava/lang/String;
    .restart local v18    # "hours":[I
    .restart local v19    # "hours24":[I
    .restart local v20    # "i":I
    .restart local v21    # "innerHoursTexts":[Ljava/lang/String;
    .restart local v22    # "minutes":[I
    .restart local v23    # "minutesTexts":[Ljava/lang/String;
    :cond_4
    const-string v2, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v18, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 197
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    if-eqz p5, :cond_6

    move-object/from16 v5, v21

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHideAmPm:Z

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->invalidate()V

    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHideAmPm:Z

    const/4 v10, 0x0

    move-object v6, v3

    move-object/from16 v7, v23

    invoke-virtual/range {v5 .. v10}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-virtual {v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->invalidate()V

    .line 204
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setValueForItem(II)V

    .line 205
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v2, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setValueForItem(II)V

    .line 206
    rem-int/lit8 v2, p3, 0xc

    mul-int/lit8 v10, v2, 0x1e

    .line 207
    .local v10, "hourDegrees":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHideAmPm:Z

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v11

    move-object/from16 v6, p1

    move/from16 v8, p5

    invoke-virtual/range {v5 .. v11}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->initialize(Landroid/content/Context;ZZZIZ)V

    .line 208
    mul-int/lit8 v16, p4, 0x6

    .line 209
    .local v16, "minuteDegrees":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHideAmPm:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v17}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->initialize(Landroid/content/Context;ZZZIZ)V

    .line 211
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mTimeInitialized:Z

    goto/16 :goto_0

    .line 197
    .end local v10    # "hourDegrees":I
    .end local v16    # "minuteDegrees":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    .line 185
    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 186
    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    .line 187
    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 736
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 737
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 738
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 739
    return-void
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 148
    .local v2, "measuredWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 149
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 150
    .local v1, "measuredHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 151
    .local v0, "heightMode":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 153
    .local v3, "minDimension":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 154
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 153
    invoke-super {p0, v5, v6}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 155
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 558
    .local v4, "eventX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 561
    .local v5, "eventY":F
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/Boolean;

    .line 562
    .local v7, "isInnerCircle":[Ljava/lang/Boolean;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v7, v10

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 714
    :cond_0
    :goto_0
    const/4 v10, 0x0

    :goto_1
    return v10

    .line 566
    :pswitch_0
    iget-boolean v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mInputEnabled:Z

    if-nez v10, :cond_1

    .line 567
    const/4 v10, 0x1

    goto :goto_1

    .line 570
    :cond_1
    iput v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDownX:F

    .line 571
    iput v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDownY:F

    .line 573
    const/4 v10, -0x1

    iput v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mLastValueSelected:I

    .line 574
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDoingMove:Z

    .line 575
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDoingTouch:Z

    .line 577
    iget-boolean v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHideAmPm:Z

    if-nez v10, :cond_4

    .line 578
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    invoke-virtual {v10, v4, v5}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v10

    iput v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 582
    :goto_2
    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v10, :cond_2

    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 585
    :cond_2
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    invoke-virtual {v10}, Lcom/codetroopers/betterpickers/HapticFeedbackController;->tryVibrate()V

    .line 586
    const/4 v10, -0x1

    iput v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDownDegrees:I

    .line 587
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$1;

    invoke-direct {v11, p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$1;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;)V

    iget v12, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->TAP_TIMEOUT:I

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 616
    :cond_3
    :goto_3
    const/4 v10, 0x1

    goto :goto_1

    .line 580
    :cond_4
    const/4 v10, -0x1

    iput v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto :goto_2

    .line 597
    :cond_5
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v10}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v6

    .line 599
    .local v6, "forceLegal":Z
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v10

    iput v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDownDegrees:I

    .line 600
    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDownDegrees:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 603
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    invoke-virtual {v10}, Lcom/codetroopers/betterpickers/HapticFeedbackController;->tryVibrate()V

    .line 604
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$2;

    invoke-direct {v11, p0, v7}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$2;-><init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;[Ljava/lang/Boolean;)V

    iget v12, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->TAP_TIMEOUT:I

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 618
    .end local v6    # "forceLegal":Z
    :pswitch_1
    iget-boolean v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mInputEnabled:Z

    if-nez v10, :cond_6

    .line 620
    const-string v10, "RadialPickerLayout"

    const-string v11, "Input was disabled, but received ACTION_MOVE."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v10, 0x1

    goto :goto_1

    .line 624
    :cond_6
    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDownY:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 625
    .local v2, "dY":F
    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDownX:F

    sub-float v10, v4, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 627
    .local v1, "dX":F
    iget-boolean v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDoingMove:Z

    if-nez v10, :cond_7

    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v10, v10

    cmpg-float v10, v1, v10

    if-gtz v10, :cond_7

    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v10, v10

    cmpg-float v10, v2, v10

    if-lez v10, :cond_0

    .line 635
    :cond_7
    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 636
    :cond_8
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 637
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    invoke-virtual {v10, v4, v5}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v8

    .line 638
    .local v8, "isTouchingAmOrPm":I
    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eq v8, v10, :cond_0

    .line 639
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 640
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    invoke-virtual {v10}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->invalidate()V

    .line 641
    const/4 v10, -0x1

    iput v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_0

    .line 646
    .end local v8    # "isTouchingAmOrPm":I
    :cond_9
    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDownDegrees:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 652
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDoingMove:Z

    .line 653
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 654
    const/4 v10, 0x1

    invoke-direct {p0, v4, v5, v10, v7}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v3

    .line 655
    .local v3, "degrees":I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_a

    .line 656
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v3, v10, v11, v12}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v9

    .line 657
    .local v9, "value":I
    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mLastValueSelected:I

    if-eq v9, v10, :cond_a

    .line 658
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHapticFeedbackController:Lcom/codetroopers/betterpickers/HapticFeedbackController;

    invoke-virtual {v10}, Lcom/codetroopers/betterpickers/HapticFeedbackController;->tryVibrate()V

    .line 659
    iput v9, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mLastValueSelected:I

    .line 660
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v9, v12}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 663
    .end local v9    # "value":I
    :cond_a
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 665
    .end local v1    # "dX":F
    .end local v2    # "dY":F
    .end local v3    # "degrees":I
    :pswitch_2
    iget-boolean v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mInputEnabled:Z

    if-nez v10, :cond_b

    .line 667
    const-string v10, "RadialPickerLayout"

    const-string v11, "Input was disabled, but received ACTION_UP."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 669
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 672
    :cond_b
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 673
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDoingTouch:Z

    .line 676
    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v10, :cond_c

    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 677
    :cond_c
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    invoke-virtual {v10, v4, v5}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v8

    .line 678
    .restart local v8    # "isTouchingAmOrPm":I
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 679
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    invoke-virtual {v10}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->invalidate()V

    .line 681
    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-ne v8, v10, :cond_d

    .line 682
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    invoke-virtual {v10, v8}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->setAmOrPm(I)V

    .line 683
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v10

    if-eq v10, v8, :cond_d

    .line 684
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;

    const/4 v11, 0x2

    iget v12, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 685
    const/4 v10, 0x2

    invoke-direct {p0, v10, v8}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setValueForItem(II)V

    .line 688
    :cond_d
    const/4 v10, -0x1

    iput v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_0

    .line 693
    .end local v8    # "isTouchingAmOrPm":I
    :cond_e
    iget v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDownDegrees:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_10

    .line 694
    iget-boolean v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDoingMove:Z

    invoke-direct {p0, v4, v5, v10, v7}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v3

    .line 695
    .restart local v3    # "degrees":I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_10

    .line 696
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iget-boolean v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDoingMove:Z

    if-nez v10, :cond_11

    const/4 v10, 0x1

    :goto_4
    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v10, v12}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v9

    .line 697
    .restart local v9    # "value":I
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v10

    if-nez v10, :cond_f

    iget-boolean v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v10, :cond_f

    .line 698
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v0

    .line 699
    .local v0, "amOrPm":I
    if-nez v0, :cond_12

    const/16 v10, 0xc

    if-ne v9, v10, :cond_12

    .line 700
    const/4 v9, 0x0

    .line 705
    .end local v0    # "amOrPm":I
    :cond_f
    :goto_5
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v10

    invoke-direct {p0, v10, v9}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setValueForItem(II)V

    .line 706
    iget-object v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v11

    const/4 v12, 0x1

    invoke-interface {v10, v11, v9, v12}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 709
    .end local v3    # "degrees":I
    .end local v9    # "value":I
    :cond_10
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDoingMove:Z

    .line 710
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 696
    .restart local v3    # "degrees":I
    :cond_11
    const/4 v10, 0x0

    goto :goto_4

    .line 701
    .restart local v0    # "amOrPm":I
    .restart local v9    # "value":I
    :cond_12
    const/4 v10, 0x1

    if-ne v0, v10, :cond_f

    const/16 v10, 0xc

    if-eq v9, v10, :cond_f

    .line 702
    add-int/lit8 v9, v9, 0xc

    goto :goto_5

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 771
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 819
    :goto_0
    return v7

    .line 775
    :cond_0
    const/4 v0, 0x0

    .line 776
    .local v0, "changeMultiplier":I
    const/16 v9, 0x1000

    if-ne p1, v9, :cond_4

    .line 777
    const/4 v0, 0x1

    .line 781
    :cond_1
    :goto_1
    if-eqz v0, :cond_9

    .line 782
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentlyShowingValue()I

    move-result v6

    .line 783
    .local v6, "value":I
    const/4 v5, 0x0

    .line 784
    .local v5, "stepSize":I
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    .line 785
    .local v1, "currentItemShowing":I
    if-nez v1, :cond_5

    .line 786
    const/16 v5, 0x1e

    .line 787
    rem-int/lit8 v6, v6, 0xc

    .line 792
    :cond_2
    :goto_2
    mul-int v2, v6, v5

    .line 793
    .local v2, "degrees":I
    invoke-direct {p0, v2, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->snapOnly30s(II)I

    move-result v2

    .line 794
    div-int v6, v2, v5

    .line 795
    const/4 v3, 0x0

    .line 796
    .local v3, "maxValue":I
    const/4 v4, 0x0

    .line 797
    .local v4, "minValue":I
    if-nez v1, :cond_7

    .line 798
    iget-boolean v9, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v9, :cond_6

    .line 799
    const/16 v3, 0x17

    .line 807
    :goto_3
    if-le v6, v3, :cond_8

    .line 809
    move v6, v4

    .line 814
    :cond_3
    :goto_4
    invoke-direct {p0, v1, v6}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setItem(II)V

    .line 815
    iget-object v9, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v9, v1, v6, v8}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto :goto_0

    .line 778
    .end local v1    # "currentItemShowing":I
    .end local v2    # "degrees":I
    .end local v3    # "maxValue":I
    .end local v4    # "minValue":I
    .end local v5    # "stepSize":I
    .end local v6    # "value":I
    :cond_4
    const/16 v9, 0x2000

    if-ne p1, v9, :cond_1

    .line 779
    const/4 v0, -0x1

    goto :goto_1

    .line 788
    .restart local v1    # "currentItemShowing":I
    .restart local v5    # "stepSize":I
    .restart local v6    # "value":I
    :cond_5
    if-ne v1, v7, :cond_2

    .line 789
    const/4 v5, 0x6

    goto :goto_2

    .line 801
    .restart local v2    # "degrees":I
    .restart local v3    # "maxValue":I
    .restart local v4    # "minValue":I
    :cond_6
    const/16 v3, 0xc

    .line 802
    const/4 v4, 0x1

    goto :goto_3

    .line 805
    :cond_7
    const/16 v3, 0x37

    goto :goto_3

    .line 810
    :cond_8
    if-ge v6, v4, :cond_3

    .line 812
    move v6, v3

    goto :goto_4

    .end local v1    # "currentItemShowing":I
    .end local v2    # "degrees":I
    .end local v3    # "maxValue":I
    .end local v4    # "minValue":I
    .end local v5    # "stepSize":I
    .end local v6    # "value":I
    :cond_9
    move v7, v8

    .line 819
    goto :goto_0
.end method

.method public setAmOrPm(I)V
    .locals 1
    .param p1, "amOrPm"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->setAmOrPm(I)V

    .line 310
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->invalidate()V

    .line 311
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setValueForItem(II)V

    .line 312
    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "animate"    # Z

    .prologue
    const/16 v3, 0xff

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 516
    if-eqz p1, :cond_0

    if-eq p1, v6, :cond_0

    .line 517
    const-string v4, "RadialPickerLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TimePicker does not support view at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    .line 522
    .local v2, "lastIndex":I
    iput p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCurrentItemShowing:I

    .line 524
    if-eqz p2, :cond_4

    if-eq p1, v2, :cond_4

    .line 525
    const/4 v5, 0x4

    new-array v0, v5, [Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 526
    .local v0, "anims":[Lcom/nineoldandroids/animation/ObjectAnimator;
    if-ne p1, v6, :cond_3

    .line 527
    iget-object v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-virtual {v5}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->getDisappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    .line 528
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->getDisappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v6

    .line 529
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->getReappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v7

    .line 530
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->getReappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v8

    .line 538
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mTransition:Lcom/nineoldandroids/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mTransition:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v4}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 539
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mTransition:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v4}, Lcom/nineoldandroids/animation/AnimatorSet;->end()V

    .line 541
    :cond_2
    new-instance v4, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v4}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mTransition:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 542
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mTransition:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 543
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mTransition:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v4}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 531
    :cond_3
    if-nez p1, :cond_1

    .line 532
    iget-object v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-virtual {v5}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->getReappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    .line 533
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->getReappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v6

    .line 534
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->getDisappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v7

    .line 535
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->getDisappearAnimator()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v8

    goto :goto_1

    .line 545
    .end local v0    # "anims":[Lcom/nineoldandroids/animation/ObjectAnimator;
    :cond_4
    if-nez p1, :cond_5

    move v1, v3

    .line 546
    .local v1, "hourAlpha":I
    :goto_2
    if-ne p1, v6, :cond_6

    .line 547
    .local v3, "minuteAlpha":I
    :goto_3
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    int-to-float v5, v1

    invoke-static {v4, v5}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 548
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    int-to-float v5, v1

    invoke-static {v4, v5}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 549
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    int-to-float v5, v3

    invoke-static {v4, v5}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 550
    iget-object v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    int-to-float v5, v3

    invoke-static {v4, v5}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto/16 :goto_0

    .end local v1    # "hourAlpha":I
    .end local v3    # "minuteAlpha":I
    :cond_5
    move v1, v4

    .line 545
    goto :goto_2

    .restart local v1    # "hourAlpha":I
    :cond_6
    move v3, v4

    .line 546
    goto :goto_3
.end method

.method public setOnValueSelectedListener(Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mListener:Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout$OnValueSelectedListener;

    .line 159
    return-void
.end method

.method setTheme(Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "themeColors"    # Landroid/content/res/TypedArray;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mCircleView:Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->setTheme(Landroid/content/res/TypedArray;)V

    .line 216
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mAmPmCirclesView:Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/AmPmCirclesView;->setTheme(Landroid/content/res/TypedArray;)V

    .line 217
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->setTheme(Landroid/content/res/TypedArray;)V

    .line 218
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTextsView;->setTheme(Landroid/content/res/TypedArray;)V

    .line 219
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mHourRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->setTheme(Landroid/content/res/TypedArray;)V

    .line 220
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialSelectorView;->setTheme(Landroid/content/res/TypedArray;)V

    .line 221
    return-void
.end method

.method public setTime(II)V
    .locals 1
    .param p1, "hours"    # I
    .param p2, "minutes"    # I

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setItem(II)V

    .line 225
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setItem(II)V

    .line 226
    return-void
.end method

.method public trySettingInputEnabled(Z)Z
    .locals 2
    .param p1, "inputEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 721
    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mDoingTouch:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 728
    :goto_0
    return v0

    .line 726
    :cond_0
    iput-boolean p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mInputEnabled:Z

    .line 727
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 728
    const/4 v0, 0x1

    goto :goto_0
.end method
