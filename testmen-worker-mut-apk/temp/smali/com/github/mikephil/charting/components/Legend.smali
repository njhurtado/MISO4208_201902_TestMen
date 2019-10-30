.class public Lcom/github/mikephil/charting/components/Legend;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/Legend$LegendDirection;,
        Lcom/github/mikephil/charting/components/Legend$LegendForm;,
        Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    }
.end annotation


# instance fields
.field private mCalculatedLabelBreakPoints:[Ljava/lang/Boolean;

.field private mCalculatedLabelSizes:[Lcom/github/mikephil/charting/utils/FSize;

.field private mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

.field private mColors:[I

.field private mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

.field private mExtraColors:[I

.field private mExtraLabels:[Ljava/lang/String;

.field private mFormSize:F

.field private mFormToTextSpace:F

.field private mIsLegendCustom:Z

.field private mLabels:[Ljava/lang/String;

.field private mMaxSizePercent:F

.field public mNeededHeight:F

.field public mNeededWidth:F

.field private mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

.field private mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private mStackSpace:F

.field public mTextHeightMax:F

.field public mTextWidthMax:F

.field private mWordWrapEnabled:Z

.field private mXEntrySpace:F

.field private mYEntrySpace:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x40c00000    # 6.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    .line 63
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 66
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 69
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 72
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 75
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 80
    iput v5, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 85
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 92
    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 95
    iput v4, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 98
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    .line 554
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 557
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 559
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 561
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 564
    iput-boolean v2, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    .line 617
    new-array v0, v2, [Lcom/github/mikephil/charting/utils/FSize;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:[Lcom/github/mikephil/charting/utils/FSize;

    .line 618
    new-array v0, v2, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:[Ljava/lang/Boolean;

    .line 619
    new-array v0, v2, [Lcom/github/mikephil/charting/utils/FSize;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    .line 103
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 104
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 105
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 106
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 107
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mTextSize:F

    .line 108
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 109
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXOffset:F

    .line 110
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYOffset:F

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    .line 144
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors array or labels array is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors array and labels array need to be of same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertIntegers(Ljava/util/List;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    .line 154
    invoke-static {p2}, Lcom/github/mikephil/charting/utils/Utils;->convertStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/String;)V
    .locals 2
    .param p1, "colors"    # [I
    .param p2, "labels"    # [Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    .line 122
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors array or labels array is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors array and labels array need to be of same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    .line 132
    iput-object p2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public calculateDimensions(Landroid/graphics/Paint;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 18
    .param p1, "labelpaint"    # Landroid/graphics/Paint;
    .param p2, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 642
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->RIGHT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->LEFT_OF_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->PIECHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 647
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 648
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getFullHeight(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 649
    move-object/from16 v0, p0

    iget v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 650
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 766
    :goto_0
    return-void

    .line 652
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    sget-object v16, Lcom/github/mikephil/charting/components/Legend$LegendPosition;->BELOW_CHART_CENTER:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_12

    .line 656
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v8, v15

    .line 657
    .local v8, "labelCount":I
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;)F

    move-result v9

    .line 658
    .local v9, "labelLineHeight":F
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineSpacing(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    move/from16 v16, v0

    add-float v10, v15, v16

    .line 659
    .local v10, "labelLineSpacing":F
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v4

    .line 662
    .local v4, "contentWidth":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 663
    .local v2, "calculatedLabelSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/utils/FSize;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 664
    .local v1, "calculatedLabelBreakPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v3, "calculatedLineSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/utils/FSize;>;"
    const/4 v11, 0x0

    .line 668
    .local v11, "maxLineWidth":F
    const/4 v5, 0x0

    .line 669
    .local v5, "currentLineWidth":F
    const/4 v13, 0x0

    .line 670
    .local v13, "requiredWidth":F
    const/4 v14, -0x1

    .line 672
    .local v14, "stackedStartIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_10

    .line 674
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    aget v15, v15, v7

    const/16 v16, -0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    const/4 v6, 0x1

    .line 676
    .local v6, "drawingForm":Z
    :goto_2
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    const/4 v15, -0x1

    if-ne v14, v15, :cond_9

    .line 682
    const/4 v13, 0x0

    .line 689
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v15, v15, v7

    if-eqz v15, :cond_b

    .line 691
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v15, v15, v7

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/github/mikephil/charting/utils/Utils;->calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    move/from16 v16, v0

    add-float v15, v15, v16

    :goto_4
    add-float/2addr v13, v15

    .line 693
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/mikephil/charting/utils/FSize;

    iget v15, v15, Lcom/github/mikephil/charting/utils/FSize;->width:F

    add-float/2addr v13, v15

    .line 705
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v15, v15, v7

    if-nez v15, :cond_4

    add-int/lit8 v15, v8, -0x1

    if-ne v7, v15, :cond_6

    .line 707
    :cond_4
    const/4 v15, 0x0

    cmpl-float v15, v5, v15

    if-nez v15, :cond_d

    const/4 v12, 0x0

    .line 709
    .local v12, "requiredSpacing":F
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    cmpl-float v15, v5, v15

    if-eqz v15, :cond_5

    sub-float v15, v4, v5

    add-float v16, v12, v13

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_e

    .line 717
    :cond_5
    add-float v15, v12, v13

    add-float/2addr v5, v15

    .line 731
    :goto_7
    add-int/lit8 v15, v8, -0x1

    if-ne v7, v15, :cond_6

    .line 733
    new-instance v15, Lcom/github/mikephil/charting/utils/FSize;

    invoke-direct {v15, v5, v9}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 738
    .end local v12    # "requiredSpacing":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v15, v15, v7

    if-eqz v15, :cond_7

    const/4 v14, -0x1

    .line 672
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 674
    .end local v6    # "drawingForm":Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 685
    .restart local v6    # "drawingForm":Z
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    add-float/2addr v13, v15

    goto :goto_3

    .line 692
    :cond_a
    const/4 v15, 0x0

    goto :goto_4

    .line 696
    :cond_b
    new-instance v15, Lcom/github/mikephil/charting/utils/FSize;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget v15, v0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    :goto_8
    add-float/2addr v13, v15

    .line 699
    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    .line 701
    move v14, v7

    goto :goto_5

    .line 697
    :cond_c
    const/4 v15, 0x0

    goto :goto_8

    .line 707
    :cond_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    goto :goto_6

    .line 722
    .restart local v12    # "requiredSpacing":F
    :cond_e
    new-instance v15, Lcom/github/mikephil/charting/utils/FSize;

    invoke-direct {v15, v5, v9}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 726
    const/4 v15, -0x1

    if-le v14, v15, :cond_f

    move v15, v14

    :goto_9
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 728
    move v5, v13

    goto :goto_7

    :cond_f
    move v15, v7

    .line 726
    goto :goto_9

    .line 741
    .end local v6    # "drawingForm":Z
    .end local v12    # "requiredSpacing":F
    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Lcom/github/mikephil/charting/utils/FSize;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/github/mikephil/charting/utils/FSize;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:[Lcom/github/mikephil/charting/utils/FSize;

    .line 743
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/Boolean;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:[Ljava/lang/Boolean;

    .line 745
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Lcom/github/mikephil/charting/utils/FSize;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/github/mikephil/charting/utils/FSize;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    .line 748
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 749
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 750
    move-object/from16 v0, p0

    iput v11, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 751
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    array-length v15, v15

    int-to-float v15, v15

    mul-float v16, v9, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    array-length v15, v15

    if-nez v15, :cond_11

    const/4 v15, 0x0

    :goto_a
    int-to-float v15, v15

    mul-float/2addr v15, v10

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    .line 761
    .end local v1    # "calculatedLabelBreakPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v2    # "calculatedLabelSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/utils/FSize;>;"
    .end local v3    # "calculatedLineSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/utils/FSize;>;"
    .end local v4    # "contentWidth":F
    .end local v5    # "currentLineWidth":F
    .end local v7    # "i":I
    .end local v8    # "labelCount":I
    .end local v9    # "labelLineHeight":F
    .end local v10    # "labelLineSpacing":F
    .end local v11    # "maxLineWidth":F
    .end local v13    # "requiredWidth":F
    .end local v14    # "stackedStartIndex":I
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getFullWidth(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 762
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 763
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 764
    move-object/from16 v0, p0

    iget v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    goto/16 :goto_0
.end method

.method public getCalculatedLabelBreakPoints()[Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:[Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCalculatedLabelSizes()[Lcom/github/mikephil/charting/utils/FSize;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:[Lcom/github/mikephil/charting/utils/FSize;

    return-object v0
.end method

.method public getCalculatedLineSizes()[Lcom/github/mikephil/charting/utils/FSize;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:[Lcom/github/mikephil/charting/utils/FSize;

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    return-object v0
.end method

.method public getDirection()Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    return-object v0
.end method

.method public getExtraColors()[I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraColors:[I

    return-object v0
.end method

.method public getExtraLabels()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method

.method public getFormSize()F
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    return v0
.end method

.method public getFormToTextSpace()F
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    return v0
.end method

.method public getFullHeight(Landroid/graphics/Paint;)F
    .locals 3
    .param p1, "labelpaint"    # Landroid/graphics/Paint;

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 538
    .local v0, "height":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 541
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 545
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 546
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    add-float/2addr v0, v2

    .line 538
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    :cond_1
    return v0
.end method

.method public getFullWidth(Landroid/graphics/Paint;)F
    .locals 4
    .param p1, "labelpaint"    # Landroid/graphics/Paint;

    .prologue
    .line 503
    const/4 v1, 0x0

    .line 505
    .local v1, "width":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 508
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 511
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    aget v2, v2, v0

    const/4 v3, -0x2

    if-eq v2, v3, :cond_0

    .line 512
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    iget v3, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 516
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 517
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    add-float/2addr v1, v2

    .line 505
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_2
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    add-float/2addr v1, v2

    .line 520
    iget-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 521
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    add-float/2addr v1, v2

    goto :goto_1

    .line 525
    :cond_3
    return v1
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLabels()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSizePercent()F
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    return v0
.end method

.method public getMaximumEntryHeight(Landroid/graphics/Paint;)F
    .locals 4
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 206
    const/4 v2, 0x0

    .line 208
    .local v2, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 210
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    int-to-float v1, v3

    .line 214
    .local v1, "length":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 215
    move v2, v1

    .line 208
    .end local v1    # "length":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    return v2
.end method

.method public getMaximumEntryWidth(Landroid/graphics/Paint;)F
    .locals 5
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    int-to-float v1, v3

    .line 190
    .local v1, "length":F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 191
    move v2, v1

    .line 184
    .end local v1    # "length":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    iget v3, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    add-float/2addr v3, v2

    iget v4, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    add-float/2addr v3, v4

    return v3
.end method

.method public getPosition()Lcom/github/mikephil/charting/components/Legend$LegendPosition;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    return-object v0
.end method

.method public getStackSpace()F
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    return v0
.end method

.method public getXEntrySpace()F
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    return v0
.end method

.method public getYEntrySpace()F
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    return v0
.end method

.method public isLegendCustom()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    return v0
.end method

.method public isWordWrapEnabled()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    return v0
.end method

.method public resetCustom()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 337
    return-void
.end method

.method public setComputedColors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertIntegers(Ljava/util/List;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    .line 163
    return-void
.end method

.method public setComputedLabels(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setCustom(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors array and labels array need to be of same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertIntegers(Ljava/util/List;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    .line 326
    invoke-static {p2}, Lcom/github/mikephil/charting/utils/Utils;->convertStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 328
    return-void
.end method

.method public setCustom([I[Ljava/lang/String;)V
    .locals 2
    .param p1, "colors"    # [I
    .param p2, "labels"    # [Ljava/lang/String;

    .prologue
    .line 299
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colors array and labels array need to be of same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    iput-object p2, p0, Lcom/github/mikephil/charting/components/Legend;->mLabels:[Ljava/lang/String;

    .line 305
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mColors:[I

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 307
    return-void
.end method

.method public setDirection(Lcom/github/mikephil/charting/components/Legend$LegendDirection;)V
    .locals 0
    .param p1, "pos"    # Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 381
    return-void
.end method

.method public setExtra(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertIntegers(Ljava/util/List;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraColors:[I

    .line 274
    invoke-static {p2}, Lcom/github/mikephil/charting/utils/Utils;->convertStrings(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraLabels:[Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setExtra([I[Ljava/lang/String;)V
    .locals 0
    .param p1, "colors"    # [I
    .param p2, "labels"    # [Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraColors:[I

    .line 285
    iput-object p2, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraLabels:[Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V
    .locals 0
    .param p1, "shape"    # Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 399
    return-void
.end method

.method public setFormSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 408
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 409
    return-void
.end method

.method public setFormToTextSpace(F)V
    .locals 1
    .param p1, "space"    # F

    .prologue
    .line 475
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 476
    return-void
.end method

.method public setMaxSizePercent(F)V
    .locals 0
    .param p1, "maxSize"    # F

    .prologue
    .line 614
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    .line 615
    return-void
.end method

.method public setPosition(Lcom/github/mikephil/charting/components/Legend$LegendPosition;)V
    .locals 0
    .param p1, "pos"    # Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mPosition:Lcom/github/mikephil/charting/components/Legend$LegendPosition;

    .line 363
    return-void
.end method

.method public setStackSpace(F)V
    .locals 0
    .param p1, "space"    # F

    .prologue
    .line 493
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 494
    return-void
.end method

.method public setWordWrapEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    .line 577
    return-void
.end method

.method public setXEntrySpace(F)V
    .locals 1
    .param p1, "space"    # F

    .prologue
    .line 437
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 438
    return-void
.end method

.method public setYEntrySpace(F)V
    .locals 1
    .param p1, "space"    # F

    .prologue
    .line 456
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 457
    return-void
.end method
