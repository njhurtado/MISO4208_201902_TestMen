.class public Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;
.super Landroid/widget/TextView;
.source "TextViewWithCircularIndicator.java"


# static fields
.field private static final SELECTED_CIRCLE_ALPHA:I = 0x3c


# instance fields
.field private mCircleColor:I

.field mCirclePaint:Landroid/graphics/Paint;

.field private mDrawCircle:Z

.field private final mItemIsSelectedText:Ljava/lang/String;

.field private final mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/codetroopers/betterpickers/R$color;->bpBlue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mCircleColor:I

    .line 49
    sget v1, Lcom/codetroopers/betterpickers/R$dimen;->month_select_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mRadius:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codetroopers/betterpickers/R$string;->item_is_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mItemIsSelectedText:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->init()V

    .line 53
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 57
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 60
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public drawIndicator(Z)V
    .locals 0
    .param p1, "drawCircle"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mDrawCircle:Z

    .line 71
    return-void
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 87
    .local v0, "itemText":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mDrawCircle:Z

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mItemIsSelectedText:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .end local v0    # "itemText":Ljava/lang/CharSequence;
    :cond_0
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget-boolean v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mDrawCircle:Z

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->getWidth()I

    move-result v2

    .line 78
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->getHeight()I

    move-result v0

    .line 79
    .local v0, "height":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 80
    .local v1, "radius":I
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 82
    .end local v0    # "height":I
    .end local v1    # "radius":I
    .end local v2    # "width":I
    :cond_0
    return-void
.end method

.method public setCircleColor(I)V
    .locals 0
    .param p1, "circleColor"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->mCircleColor:I

    .line 66
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->init()V

    .line 67
    return-void
.end method
