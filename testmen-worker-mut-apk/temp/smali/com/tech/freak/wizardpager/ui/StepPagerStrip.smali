.class public Lcom/tech/freak/wizardpager/ui/StepPagerStrip;
.super Landroid/view/View;
.source "StepPagerStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tech/freak/wizardpager/ui/StepPagerStrip$OnPageSelectedListener;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private mCurrentPage:I

.field private mGravity:I

.field private mNextTabPaint:Landroid/graphics/Paint;

.field private mOnPageSelectedListener:Lcom/tech/freak/wizardpager/ui/StepPagerStrip$OnPageSelectedListener;

.field private mPageCount:I

.field private mPrevTabPaint:Landroid/graphics/Paint;

.field private mSelectedLastTabPaint:Landroid/graphics/Paint;

.field private mSelectedTabPaint:Landroid/graphics/Paint;

.field private mTabHeight:F

.field private mTabSpacing:F

.field private mTabWidth:F

.field private mTempRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100af

    aput v2, v0, v1

    sput-object v0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/16 v2, 0x33

    iput v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mGravity:I

    .line 48
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    .line 65
    sget-object v2, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    iget v3, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mGravity:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mGravity:I

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 70
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/tech/freak/wizardpager/R$dimen;->step_pager_tab_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabWidth:F

    .line 71
    sget v2, Lcom/tech/freak/wizardpager/R$dimen;->step_pager_tab_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabHeight:F

    .line 72
    sget v2, Lcom/tech/freak/wizardpager/R$dimen;->step_pager_tab_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabSpacing:F

    .line 74
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPrevTabPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPrevTabPaint:Landroid/graphics/Paint;

    sget v3, Lcom/tech/freak/wizardpager/R$color;->step_pager_previous_tab_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mSelectedTabPaint:Landroid/graphics/Paint;

    .line 78
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mSelectedTabPaint:Landroid/graphics/Paint;

    sget v3, Lcom/tech/freak/wizardpager/R$color;->step_pager_selected_tab_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mSelectedLastTabPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mSelectedLastTabPaint:Landroid/graphics/Paint;

    sget v3, Lcom/tech/freak/wizardpager/R$color;->step_pager_selected_last_tab_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mNextTabPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mNextTabPaint:Landroid/graphics/Paint;

    sget v3, Lcom/tech/freak/wizardpager/R$color;->step_pager_next_tab_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    return-void
.end method

.method private hitTest(F)I
    .locals 9
    .param p1, "x"    # F

    .prologue
    const/4 v5, -0x1

    .line 186
    iget v6, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    if-nez v6, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v5

    .line 190
    :cond_1
    iget v6, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    int-to-float v6, v6

    iget v7, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabWidth:F

    iget v8, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabSpacing:F

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabSpacing:F

    sub-float v4, v6, v7

    .line 192
    .local v4, "totalWidth":F
    const/4 v0, 0x0

    .line 194
    .local v0, "fillHorizontal":Z
    iget v6, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mGravity:I

    and-int/lit8 v6, v6, 0x7

    sparse-switch v6, :sswitch_data_0

    .line 206
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingLeft()I

    move-result v6

    int-to-float v2, v6

    .line 209
    .local v2, "totalLeft":F
    :goto_1
    iget v1, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabWidth:F

    .line 210
    .local v1, "tabWidth":F
    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget v8, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabSpacing:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 215
    :cond_2
    iget v6, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    int-to-float v6, v6

    iget v7, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabSpacing:F

    add-float/2addr v7, v1

    mul-float/2addr v6, v7

    add-float v3, v2, v6

    .line 216
    .local v3, "totalRight":F
    cmpl-float v6, p1, v2

    if-ltz v6, :cond_0

    cmpg-float v6, p1, v3

    if-gtz v6, :cond_0

    cmpl-float v6, v3, v2

    if-lez v6, :cond_0

    .line 217
    sub-float v5, p1, v2

    sub-float v6, v3, v2

    div-float/2addr v5, v6

    iget v6, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    goto :goto_0

    .line 196
    .end local v1    # "tabWidth":F
    .end local v2    # "totalLeft":F
    .end local v3    # "totalRight":F
    :sswitch_0
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float v2, v6, v7

    .line 197
    .restart local v2    # "totalLeft":F
    goto :goto_1

    .line 199
    .end local v2    # "totalLeft":F
    :sswitch_1
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float v2, v6, v4

    .line 200
    .restart local v2    # "totalLeft":F
    goto :goto_1

    .line 202
    .end local v2    # "totalLeft":F
    :sswitch_2
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingLeft()I

    move-result v6

    int-to-float v2, v6

    .line 203
    .restart local v2    # "totalLeft":F
    const/4 v0, 0x1

    .line 204
    goto :goto_1

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method private scrollCurrentPageIntoView()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    iget v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    if-nez v5, :cond_1

    .line 148
    :cond_0
    return-void

    .line 99
    :cond_1
    iget v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    int-to-float v5, v5

    iget v6, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabWidth:F

    iget v7, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabSpacing:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabSpacing:F

    sub-float v4, v5, v6

    .line 101
    .local v4, "totalWidth":F
    const/4 v0, 0x0

    .line 103
    .local v0, "fillHorizontal":Z
    iget v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mGravity:I

    and-int/lit8 v5, v5, 0x7

    sparse-switch v5, :sswitch_data_0

    .line 115
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingLeft()I

    move-result v5

    int-to-float v3, v5

    .line 118
    .local v3, "totalLeft":F
    :goto_0
    iget v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mGravity:I

    and-int/lit8 v5, v5, 0x70

    sparse-switch v5, :sswitch_data_1

    .line 126
    iget-object v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 129
    :goto_1
    iget-object v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabHeight:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 131
    iget v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabWidth:F

    .line 132
    .local v2, "tabWidth":F
    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    iget v7, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabSpacing:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 137
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    if-ge v1, v5, :cond_0

    .line 138
    iget-object v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    int-to-float v6, v1

    iget v7, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabSpacing:F

    add-float/2addr v7, v2

    mul-float/2addr v6, v7

    add-float/2addr v6, v3

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 139
    iget-object v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v2

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 140
    iget-object v6, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mCurrentPage:I

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPrevTabPaint:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 105
    .end local v1    # "i":I
    .end local v2    # "tabWidth":F
    .end local v3    # "totalLeft":F
    :sswitch_0
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float v3, v5, v6

    .line 106
    .restart local v3    # "totalLeft":F
    goto :goto_0

    .line 108
    .end local v3    # "totalLeft":F
    :sswitch_1
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float v3, v5, v4

    .line 109
    .restart local v3    # "totalLeft":F
    goto :goto_0

    .line 111
    .end local v3    # "totalLeft":F
    :sswitch_2
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingLeft()I

    move-result v5

    int-to-float v3, v5

    .line 112
    .restart local v3    # "totalLeft":F
    const/4 v0, 0x1

    .line 113
    goto :goto_0

    .line 120
    :sswitch_3
    iget-object v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabHeight:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 123
    :sswitch_4
    iget-object v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabHeight:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 140
    .restart local v1    # "i":I
    .restart local v2    # "tabWidth":F
    :cond_3
    iget v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mCurrentPage:I

    if-le v1, v5, :cond_4

    iget-object v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mNextTabPaint:Landroid/graphics/Paint;

    goto :goto_3

    :cond_4
    iget v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_5

    iget-object v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mSelectedLastTabPaint:Landroid/graphics/Paint;

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mSelectedTabPaint:Landroid/graphics/Paint;

    goto :goto_3

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch

    .line 118
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 152
    iget v0, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabWidth:F

    iget v2, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabSpacing:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabSpacing:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mTabHeight:F

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->setMeasuredDimension(II)V

    .line 161
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->scrollCurrentPageIntoView()V

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 167
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mOnPageSelectedListener:Lcom/tech/freak/wizardpager/ui/StepPagerStrip$OnPageSelectedListener;

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 182
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 175
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->hitTest(F)I

    move-result v0

    .line 176
    .local v0, "position":I
    if-ltz v0, :cond_1

    .line 177
    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mOnPageSelectedListener:Lcom/tech/freak/wizardpager/ui/StepPagerStrip$OnPageSelectedListener;

    invoke-interface {v1, v0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip$OnPageSelectedListener;->onPageStripSelected(I)V

    .line 179
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "currentPage"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mCurrentPage:I

    .line 225
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->invalidate()V

    .line 226
    invoke-direct {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->scrollCurrentPageIntoView()V

    .line 229
    return-void
.end method

.method public setOnPageSelectedListener(Lcom/tech/freak/wizardpager/ui/StepPagerStrip$OnPageSelectedListener;)V
    .locals 0
    .param p1, "onPageSelectedListener"    # Lcom/tech/freak/wizardpager/ui/StepPagerStrip$OnPageSelectedListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mOnPageSelectedListener:Lcom/tech/freak/wizardpager/ui/StepPagerStrip$OnPageSelectedListener;

    .line 89
    return-void
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->mPageCount:I

    .line 252
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/StepPagerStrip;->invalidate()V

    .line 255
    return-void
.end method
