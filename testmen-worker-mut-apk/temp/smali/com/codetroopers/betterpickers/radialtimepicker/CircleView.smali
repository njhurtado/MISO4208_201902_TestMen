.class public Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleView"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mCentralDotColor:I

.field private mCircleColor:I

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDrawValuesReady:Z

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mPaint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/codetroopers/betterpickers/R$color;->bpWhite:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mCircleColor:I

    .line 55
    sget v1, Lcom/codetroopers/betterpickers/R$color;->numbers_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mCentralDotColor:I

    .line 56
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mIsInitialized:Z

    .line 59
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is24HourMode"    # Z

    .prologue
    .line 62
    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "CircleView"

    const-string v2, "CircleView may only be initialized once."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, "res":Landroid/content/res/Resources;
    iput-boolean p2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mIs24HourMode:Z

    .line 69
    if-eqz p2, :cond_1

    .line 70
    sget v1, Lcom/codetroopers/betterpickers/R$string;->circle_radius_multiplier_24HourMode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mCircleRadiusMultiplier:F

    .line 76
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mIsInitialized:Z

    goto :goto_0

    .line 72
    :cond_1
    sget v1, Lcom/codetroopers/betterpickers/R$string;->circle_radius_multiplier:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mCircleRadiusMultiplier:F

    .line 73
    sget v1, Lcom/codetroopers/betterpickers/R$string;->ampm_circle_radius_multiplier:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mAmPmCircleRadiusMultiplier:F

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->getWidth()I

    move-result v1

    .line 87
    .local v1, "viewWidth":I
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-boolean v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mDrawValuesReady:Z

    if-nez v2, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mXCenter:I

    .line 93
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mYCenter:I

    .line 94
    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mXCenter:I

    iget v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mYCenter:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mCircleRadius:I

    .line 96
    iget-boolean v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mIs24HourMode:Z

    if-nez v2, :cond_2

    .line 100
    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mCircleRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 101
    .local v0, "amPmCircleRadius":I
    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mYCenter:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mYCenter:I

    .line 104
    .end local v0    # "amPmCircleRadius":I
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mDrawValuesReady:Z

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mCircleColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mYCenter:I

    int-to-float v3, v3

    iget v4, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mCircleRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 112
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mCentralDotColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mYCenter:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v5, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method setTheme(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "themeColors"    # Landroid/content/res/TypedArray;

    .prologue
    .line 80
    sget v0, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpRadialBackgroundColor:I

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->radial_gray_light:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mCircleColor:I

    .line 81
    sget v0, Lcom/codetroopers/betterpickers/R$styleable;->BetterPickersDialogs_bpRadialTextColor:I

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$color;->bpBlue:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/CircleView;->mCentralDotColor:I

    .line 82
    return-void
.end method
