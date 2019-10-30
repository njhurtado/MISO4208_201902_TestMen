.class public Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;
.super Landroid/view/View;
.source "UnderlinePageIndicatorPicker.java"

# interfaces
.implements Lcom/codetroopers/betterpickers/widget/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mColorUnderline:I

.field private mCurrentPage:I

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPositionOffset:F

.field private mScrollState:I

.field private mTitleView:Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mPaint:Landroid/graphics/Paint;

    .line 53
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mLastMotionX:F

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mActivePointerId:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mTitleView:Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mPaint:Landroid/graphics/Paint;

    .line 53
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mLastMotionX:F

    .line 54
    const/4 v2, -0x1

    iput v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mActivePointerId:I

    .line 57
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mTitleView:Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;

    .line 73
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codetroopers/betterpickers/R$color;->dialog_text_color_holo_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mColorUnderline:I

    .line 75
    sget-object v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogFragment_bpKeyboardIndicatorColor:I

    iget v3, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mColorUnderline:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mColorUnderline:I

    .line 78
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->rectPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 85
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mTouchSlop:I

    .line 86
    return-void
.end method


# virtual methods
.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->invalidate()V

    .line 250
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    .line 103
    .local v6, "count":I
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v6, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mTitleView:Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mTitleView:Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;

    iget v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mCurrentPage:I

    invoke-virtual {v0, v2}, Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;->getViewAt(I)Landroid/view/View;

    move-result-object v7

    .line 109
    .local v7, "currentTab":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    .line 110
    .local v1, "lineLeft":F
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    .line 115
    .local v3, "lineRight":F
    iget v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mPositionOffset:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mCurrentPage:I

    add-int/lit8 v2, v6, -0x1

    if-ge v0, v2, :cond_2

    .line 117
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mTitleView:Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;

    iget v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;->getViewAt(I)Landroid/view/View;

    move-result-object v8

    .line 118
    .local v8, "nextTab":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v9, v0

    .line 119
    .local v9, "nextTabLeft":F
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v10, v0

    .line 121
    .local v10, "nextTabRight":F
    iget v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mPositionOffset:F

    mul-float/2addr v0, v9

    iget v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mPositionOffset:F

    sub-float v2, v4, v2

    mul-float/2addr v2, v1

    add-float v1, v0, v2

    .line 122
    iget v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mPositionOffset:F

    mul-float/2addr v0, v10

    iget v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mPositionOffset:F

    sub-float v2, v4, v2

    mul-float/2addr v2, v3

    add-float v3, v0, v2

    .line 125
    .end local v8    # "nextTab":Landroid/view/View;
    .end local v9    # "nextTabLeft":F
    .end local v10    # "nextTabRight":F
    :cond_2
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->getPaddingBottom()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 254
    iput p1, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mScrollState:I

    .line 256
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 259
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mCurrentPage:I

    .line 264
    iput p2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mPositionOffset:F

    .line 265
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->invalidate()V

    .line 267
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 270
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 274
    iget v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mScrollState:I

    if-nez v0, :cond_0

    .line 275
    iput p1, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mCurrentPage:I

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mPositionOffset:F

    .line 277
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->invalidate()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 282
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 291
    move-object v0, p1

    check-cast v0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker$SavedState;

    .line 292
    .local v0, "savedState":Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker$SavedState;
    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 293
    iget v1, v0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker$SavedState;->currentPage:I

    iput v1, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mCurrentPage:I

    .line 294
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->requestLayout()V

    .line 295
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 299
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 300
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker$SavedState;

    invoke-direct {v0, v1}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 301
    .local v0, "savedState":Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker$SavedState;
    iget v2, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mCurrentPage:I

    iput v2, v0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker$SavedState;->currentPage:I

    .line 302
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 131
    const/4 v12, 0x1

    .line 211
    :goto_0
    return v12

    .line 133
    :cond_0
    iget-object v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 134
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    .line 138
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 211
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 140
    :pswitch_1
    const/4 v12, 0x0

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mActivePointerId:I

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mLastMotionX:F

    goto :goto_1

    .line 145
    :pswitch_2
    iget v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 146
    .local v1, "activePointerIndex":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 147
    .local v11, "x":F
    iget v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mLastMotionX:F

    sub-float v3, v11, v12

    .line 149
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mIsDragging:Z

    if-nez v12, :cond_4

    .line 150
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 151
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mIsDragging:Z

    .line 155
    :cond_4
    iget-boolean v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mIsDragging:Z

    if-eqz v12, :cond_3

    .line 156
    iput v11, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mLastMotionX:F

    .line 157
    iget-object v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 158
    :cond_5
    iget-object v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 167
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mIsDragging:Z

    if-nez v12, :cond_9

    .line 168
    iget-object v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 169
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->getWidth()I

    move-result v10

    .line 170
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 171
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 173
    .local v9, "sixthWidth":F
    iget v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mCurrentPage:I

    if-lez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 174
    const/4 v12, 0x3

    if-eq v0, v12, :cond_6

    .line 175
    iget-object v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 177
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 178
    :cond_7
    iget v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mCurrentPage:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 179
    const/4 v12, 0x3

    if-eq v0, v12, :cond_8

    .line 180
    iget-object v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 182
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 186
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mIsDragging:Z

    .line 187
    const/4 v12, -0x1

    iput v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mActivePointerId:I

    .line 188
    iget-object v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 189
    iget-object v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 194
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .line 195
    .local v5, "index":I
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mLastMotionX:F

    .line 196
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mActivePointerId:I

    goto/16 :goto_1

    .line 201
    .end local v5    # "index":I
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 202
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 203
    .local v7, "pointerId":I
    iget v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mActivePointerId:I

    if-ne v7, v12, :cond_a

    .line 204
    if-nez v8, :cond_b

    const/4 v6, 0x1

    .line 205
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mActivePointerId:I

    .line 207
    .end local v6    # "newPointerIndex":I
    :cond_a
    iget v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mLastMotionX:F

    goto/16 :goto_1

    .line 204
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 243
    iput p1, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mCurrentPage:I

    .line 244
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->invalidate()V

    .line 245
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 287
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1
    .param p1, "selectedColor"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->invalidate()V

    .line 95
    return-void
.end method

.method public setTitleView(Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;)V
    .locals 0
    .param p1, "titleView"    # Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mTitleView:Lcom/codetroopers/betterpickers/widget/PickerLinearLayout;

    .line 340
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->invalidate()V

    .line 341
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 223
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_2
    iput-object p1, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 227
    iget-object v0, p0, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 228
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 234
    invoke-virtual {p0, p2}, Lcom/codetroopers/betterpickers/widget/UnderlinePageIndicatorPicker;->setCurrentItem(I)V

    .line 235
    return-void
.end method
