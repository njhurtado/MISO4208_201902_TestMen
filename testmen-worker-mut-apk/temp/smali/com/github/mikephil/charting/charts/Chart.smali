.class public abstract Lcom/github/mikephil/charting/charts/Chart;
.super Landroid/view/ViewGroup;
.source "Chart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/ChartInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/ChartData",
        "<+",
        "Lcom/github/mikephil/charting/data/DataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Landroid/view/ViewGroup;",
        "Lcom/github/mikephil/charting/interfaces/ChartInterface;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MPAndroidChart"

.field public static final PAINT_CENTER_TEXT:I = 0xe

.field public static final PAINT_DESCRIPTION:I = 0xb

.field public static final PAINT_GRID_BACKGROUND:I = 0x4

.field public static final PAINT_HOLE:I = 0xd

.field public static final PAINT_INFO:I = 0x7

.field public static final PAINT_LEGEND_LABEL:I = 0x12


# instance fields
.field protected mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

.field protected mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

.field protected mData:Lcom/github/mikephil/charting/data/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mDataNotSet:Z

.field protected mDefaultFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

.field protected mDeltaX:F

.field protected mDescPaint:Landroid/graphics/Paint;

.field protected mDescription:Ljava/lang/String;

.field private mDescriptionPosition:Landroid/graphics/PointF;

.field private mDragDecelerationEnabled:Z

.field private mDragDecelerationFrictionCoef:F

.field protected mDrawMarkerViews:Z

.field protected mDrawPaint:Landroid/graphics/Paint;

.field protected mDrawUnitInChart:Z

.field private mExtraBottomOffset:F

.field private mExtraLeftOffset:F

.field private mExtraRightOffset:F

.field private mExtraTopOffset:F

.field private mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

.field protected mHighlighter:Lcom/github/mikephil/charting/highlight/ChartHighlighter;

.field protected mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

.field protected mInfoPaint:Landroid/graphics/Paint;

.field protected mJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mLegend:Lcom/github/mikephil/charting/components/Legend;

.field protected mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

.field protected mLogEnabled:Z

.field protected mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

.field private mNoDataText:Ljava/lang/String;

.field private mNoDataTextDescription:Ljava/lang/String;

.field private mOffsetsCalculated:Z

.field protected mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

.field protected mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

.field protected mTouchEnabled:Z

.field protected mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

.field protected mXChartMax:F

.field protected mXChartMin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 69
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 78
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 86
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 104
    const-string v0, "Description"

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    .line 107
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDataNotSet:Z

    .line 110
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawUnitInChart:Z

    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDeltaX:F

    .line 115
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMin:F

    .line 116
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMax:F

    .line 119
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 130
    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 157
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 371
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 441
    new-array v0, v2, [Lcom/github/mikephil/charting/highlight/Highlight;

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 567
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkerViews:Z

    .line 1533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 78
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 86
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 104
    const-string v0, "Description"

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    .line 107
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDataNotSet:Z

    .line 110
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawUnitInChart:Z

    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDeltaX:F

    .line 115
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMin:F

    .line 116
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMax:F

    .line 119
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 130
    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 157
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 371
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 441
    new-array v0, v2, [Lcom/github/mikephil/charting/highlight/Highlight;

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 567
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkerViews:Z

    .line 1533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 78
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 86
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 104
    const-string v0, "Description"

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    .line 107
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDataNotSet:Z

    .line 110
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawUnitInChart:Z

    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDeltaX:F

    .line 115
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMin:F

    .line 116
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMax:F

    .line 119
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 130
    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 157
    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    iput v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 371
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 441
    new-array v0, v2, [Lcom/github/mikephil/charting/highlight/Highlight;

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 567
    iput-boolean v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkerViews:Z

    .line 1533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 178
    return-void
.end method


# virtual methods
.method public addJob(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 1542
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    return-void
.end method

.method public animateX(I)V
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    .line 806
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateX(I)V

    .line 807
    return-void
.end method

.method public animateX(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 1
    .param p1, "durationMillis"    # I
    .param p2, "easing"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    .prologue
    .line 775
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateX(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    .line 776
    return-void
.end method

.method public animateX(ILcom/github/mikephil/charting/animation/EasingFunction;)V
    .locals 1
    .param p1, "durationMillis"    # I
    .param p2, "easing"    # Lcom/github/mikephil/charting/animation/EasingFunction;

    .prologue
    .line 727
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateX(ILcom/github/mikephil/charting/animation/EasingFunction;)V

    .line 728
    return-void
.end method

.method public animateXY(II)V
    .locals 1
    .param p1, "durationMillisX"    # I
    .param p2, "durationMillisY"    # I

    .prologue
    .line 831
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateXY(II)V

    .line 832
    return-void
.end method

.method public animateXY(IILcom/github/mikephil/charting/animation/Easing$EasingOption;Lcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 1
    .param p1, "durationMillisX"    # I
    .param p2, "durationMillisY"    # I
    .param p3, "easingX"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;
    .param p4, "easingY"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    .prologue
    .line 762
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateXY(IILcom/github/mikephil/charting/animation/Easing$EasingOption;Lcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    .line 763
    return-void
.end method

.method public animateXY(IILcom/github/mikephil/charting/animation/EasingFunction;Lcom/github/mikephil/charting/animation/EasingFunction;)V
    .locals 1
    .param p1, "durationMillisX"    # I
    .param p2, "durationMillisY"    # I
    .param p3, "easingX"    # Lcom/github/mikephil/charting/animation/EasingFunction;
    .param p4, "easingY"    # Lcom/github/mikephil/charting/animation/EasingFunction;

    .prologue
    .line 714
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateXY(IILcom/github/mikephil/charting/animation/EasingFunction;Lcom/github/mikephil/charting/animation/EasingFunction;)V

    .line 715
    return-void
.end method

.method public animateY(I)V
    .locals 1
    .param p1, "durationMillis"    # I

    .prologue
    .line 818
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(I)V

    .line 819
    return-void
.end method

.method public animateY(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V
    .locals 1
    .param p1, "durationMillis"    # I
    .param p2, "easing"    # Lcom/github/mikephil/charting/animation/Easing$EasingOption;

    .prologue
    .line 788
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(ILcom/github/mikephil/charting/animation/Easing$EasingOption;)V

    .line 789
    return-void
.end method

.method public animateY(ILcom/github/mikephil/charting/animation/EasingFunction;)V
    .locals 1
    .param p1, "durationMillis"    # I
    .param p2, "easing"    # Lcom/github/mikephil/charting/animation/EasingFunction;

    .prologue
    .line 740
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->animateY(ILcom/github/mikephil/charting/animation/EasingFunction;)V

    .line 741
    return-void
.end method

.method protected abstract calcMinMax()V
.end method

.method protected calculateFormatter(FF)V
    .locals 4
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 357
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v1, 0x0

    .line 359
    .local v1, "reference":F
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ChartData;->getXValCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 361
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 366
    :goto_0
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->getDecimals(F)I

    move-result v0

    .line 367
    .local v0, "digits":I
    new-instance v2, Lcom/github/mikephil/charting/utils/DefaultValueFormatter;

    invoke-direct {v2, v0}, Lcom/github/mikephil/charting/utils/DefaultValueFormatter;-><init>(I)V

    iput-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

    .line 368
    return-void

    .line 363
    .end local v0    # "digits":I
    :cond_1
    sub-float v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_0
.end method

.method protected abstract calculateOffsets()V
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 300
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDataNotSet:Z

    .line 302
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 303
    return-void
.end method

.method public clearAllJobs()V
    .locals 1

    .prologue
    .line 1550
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1551
    return-void
.end method

.method public clearValues()V
    .locals 1

    .prologue
    .line 310
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->clearValues()V

    .line 311
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 312
    return-void
.end method

.method public disableScroll()V
    .locals 2

    .prologue
    .line 1223
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1224
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 1225
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1226
    :cond_0
    return-void
.end method

.method protected drawDescription(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/high16 v4, 0x41200000    # 10.0f

    .line 419
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescriptionPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetRight()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetBottom()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescriptionPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescriptionPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawMarkers(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 578
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkerViews:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->valuesToHighlight()Z

    move-result v7

    if-nez v7, :cond_1

    .line 624
    :cond_0
    return-void

    .line 581
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    array-length v7, v7

    if-ge v3, v7, :cond_0

    .line 583
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v2, v7, v3

    .line 584
    .local v2, "highlight":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v5

    .line 585
    .local v5, "xIndex":I
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v0

    .line 587
    .local v0, "dataSetIndex":I
    int-to-float v7, v5

    iget v8, p0, Lcom/github/mikephil/charting/charts/Chart;->mDeltaX:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    int-to-float v7, v5

    iget v8, p0, Lcom/github/mikephil/charting/charts/Chart;->mDeltaX:F

    iget-object v9, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v9

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    .line 589
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/data/ChartData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    .line 592
    .local v1, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 581
    .end local v1    # "e":Lcom/github/mikephil/charting/data/Entry;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 595
    .restart local v1    # "e":Lcom/github/mikephil/charting/data/Entry;
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/github/mikephil/charting/charts/Chart;->getMarkerPosition(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)[F

    move-result-object v4

    .line 598
    .local v4, "pos":[F
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v8, v4, v10

    aget v9, v4, v11

    invoke-virtual {v7, v8, v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBounds(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 602
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    invoke-virtual {v7, v1, v2}, Lcom/github/mikephil/charting/components/MarkerView;->refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 611
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/github/mikephil/charting/components/MarkerView;->measure(II)V

    .line 613
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/MarkerView;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/components/MarkerView;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v10, v10, v8, v9}, Lcom/github/mikephil/charting/components/MarkerView;->layout(IIII)V

    .line 616
    aget v7, v4, v11

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/MarkerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_4

    .line 617
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/MarkerView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    aget v8, v4, v11

    sub-float v6, v7, v8

    .line 618
    .local v6, "y":F
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    aget v8, v4, v10

    aget v9, v4, v11

    add-float/2addr v9, v6

    invoke-virtual {v7, p1, v8, v9}, Lcom/github/mikephil/charting/components/MarkerView;->draw(Landroid/graphics/Canvas;FF)V

    goto :goto_1

    .line 620
    .end local v6    # "y":F
    :cond_4
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    aget v8, v4, v10

    aget v9, v4, v11

    invoke-virtual {v7, p1, v8, v9}, Lcom/github/mikephil/charting/components/MarkerView;->draw(Landroid/graphics/Canvas;FF)V

    goto :goto_1
.end method

.method public enableScroll()V
    .locals 2

    .prologue
    .line 1232
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1233
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 1234
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1235
    :cond_0
    return-void
.end method

.method public getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;
    .locals 1

    .prologue
    .line 648
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    return-object v0
.end method

.method public getAverage()F
    .locals 2

    .prologue
    .line 946
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getYValueSum()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getYValCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getAverage(Ljava/lang/String;)F
    .locals 3
    .param p1, "dataSetLabel"    # Ljava/lang/String;

    .prologue
    .line 958
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByLabel(Ljava/lang/String;Z)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v0

    .line 960
    .local v0, "ds":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<+Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getYValueSum()F

    move-result v1

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/DataSet;->getEntryCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1
.end method

.method public getCenter()Landroid/graphics/PointF;
    .locals 4

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/high16 v3, 0x40000000    # 2.0f

    .line 979
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getCenterOfView()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 1406
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getCenterOffsets()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 990
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentCenter()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getChartBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 1416
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1418
    .local v2, "returnedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1420
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1421
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1423
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1429
    :goto_0
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->draw(Landroid/graphics/Canvas;)V

    .line 1431
    return-object v2

    .line 1427
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public getContentRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1216
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1361
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    return-object v0
.end method

.method public getDefaultValueFormatter()Lcom/github/mikephil/charting/utils/ValueFormatter;
    .locals 1

    .prologue
    .line 846
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

    return-object v0
.end method

.method public getDragDecelerationFrictionCoef()F
    .locals 1

    .prologue
    .line 673
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    return v0
.end method

.method public getEntriesAtIndex(I)Ljava/util/List;
    .locals 5
    .param p1, "xIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1339
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1341
    .local v3, "vals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1343
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v4, v1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/DataSet;

    move-result-object v2

    .line 1345
    .local v2, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<+Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 1347
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_0

    .line 1348
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1341
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1352
    .end local v0    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v2    # "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<+Lcom/github/mikephil/charting/data/Entry;>;"
    :cond_1
    return-object v3
.end method

.method public getExtraBottomOffset()F
    .locals 1

    .prologue
    .line 1103
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    return v0
.end method

.method public getExtraLeftOffset()F
    .locals 1

    .prologue
    .line 1117
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    return v0
.end method

.method public getExtraRightOffset()F
    .locals 1

    .prologue
    .line 1089
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    return v0
.end method

.method public getExtraTopOffset()F
    .locals 1

    .prologue
    .line 1075
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    return v0
.end method

.method public getHighlighted()[Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 1

    .prologue
    .line 450
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    return-object v0
.end method

.method public getJobs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1560
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLegend()Lcom/github/mikephil/charting/components/Legend;
    .locals 1

    .prologue
    .line 1195
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    return-object v0
.end method

.method public getLegendRenderer()Lcom/github/mikephil/charting/renderer/LegendRenderer;
    .locals 1

    .prologue
    .line 1205
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    return-object v0
.end method

.method protected abstract getMarkerPosition(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)[F
.end method

.method public getMarkerView()Lcom/github/mikephil/charting/components/MarkerView;
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    return-object v0
.end method

.method public getOnChartGestureListener()Lcom/github/mikephil/charting/listener/OnChartGestureListener;
    .locals 1

    .prologue
    .line 874
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    return-object v0
.end method

.method public getPaint(I)Landroid/graphics/Paint;
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1285
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    sparse-switch p1, :sswitch_data_0

    .line 1292
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1287
    :sswitch_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1289
    :sswitch_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1285
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public getPercentOfTotal(F)F
    .locals 2
    .param p1, "val"    # F

    .prologue
    .line 1371
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getYValueSum()F

    move-result v0

    div-float v0, p1, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRenderer()Lcom/github/mikephil/charting/renderer/DataRenderer;
    .locals 1

    .prologue
    .line 1390
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 970
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getYValCount()I

    move-result v0

    return v0
.end method

.method public getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .locals 1

    .prologue
    .line 1381
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    return-object v0
.end method

.method public getXChartMax()F
    .locals 1

    .prologue
    .line 927
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMax:F

    return v0
.end method

.method public getXChartMin()F
    .locals 1

    .prologue
    .line 932
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mXChartMin:F

    return v0
.end method

.method public getXValCount()I
    .locals 1

    .prologue
    .line 937
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getXValCount()I

    move-result v0

    return v0
.end method

.method public getXValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1323
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getXValCount()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 1324
    :cond_0
    const/4 v0, 0x0

    .line 1326
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getXVals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getYMax()F
    .locals 1

    .prologue
    .line 913
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    move-result v0

    return v0
.end method

.method public getYMin()F
    .locals 1

    .prologue
    .line 922
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getYMin()F

    move-result v0

    return v0
.end method

.method public getYValueSum()F
    .locals 1

    .prologue
    .line 904
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getYValueSum()F

    move-result v0

    return v0
.end method

.method public highlightTouch(Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 5
    .param p1, "high"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v4, 0x0

    .line 515
    const/4 v0, 0x0

    .line 517
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    if-nez p1, :cond_1

    .line 518
    iput-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 538
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 540
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->valuesToHighlight()Z

    move-result v1

    if-nez v1, :cond_5

    .line 543
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-interface {v1}, Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;->onNothingSelected()V

    .line 549
    :cond_0
    :goto_1
    return-void

    .line 521
    :cond_1
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v1, :cond_2

    .line 522
    const-string v1, "MPAndroidChart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Highlighted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_2
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/ChartData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 526
    :cond_3
    iput-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 527
    const/4 p1, 0x0

    goto :goto_0

    .line 531
    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/github/mikephil/charting/highlight/Highlight;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    goto :goto_0

    .line 546
    :cond_5
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v2

    invoke-interface {v1, v0, v2, p1}, Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;->onValueSelected(Lcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/highlight/Highlight;)V

    goto :goto_1
.end method

.method public highlightValue(II)V
    .locals 3
    .param p1, "xIndex"    # I
    .param p2, "dataSetIndex"    # I

    .prologue
    .line 495
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getXValCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 498
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 504
    :goto_0
    return-void

    .line 500
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/github/mikephil/charting/highlight/Highlight;

    const/4 v1, 0x0

    new-instance v2, Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-direct {v2, p1, p2}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(II)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    goto :goto_0
.end method

.method public highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 2
    .param p1, "highs"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 477
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    .line 479
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->setLastHighlighted(Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 483
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->invalidate()V

    .line 484
    return-void
.end method

.method protected init()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v3, 0x1

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setWillNotDraw(Z)V

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 189
    new-instance v0, Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-direct {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 201
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->init(Landroid/content/Context;)V

    .line 203
    new-instance v0, Lcom/github/mikephil/charting/utils/DefaultValueFormatter;

    invoke-direct {v0, v3}, Lcom/github/mikephil/charting/utils/DefaultValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

    .line 205
    new-instance v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 207
    new-instance v0, Lcom/github/mikephil/charting/components/Legend;

    invoke-direct {v0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 209
    new-instance v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/renderer/LegendRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/Legend;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    .line 211
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    .line 212
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 214
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 216
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    .line 217
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    const/16 v1, 0xf7

    const/16 v2, 0xbd

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 219
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawPaint:Landroid/graphics/Paint;

    .line 223
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v0, :cond_0

    .line 224
    const-string v0, ""

    const-string v1, "Chart.init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    return-void

    .line 191
    :cond_1
    new-instance v0, Lcom/github/mikephil/charting/animation/ChartAnimator;

    new-instance v1, Lcom/github/mikephil/charting/charts/Chart$1;

    invoke-direct {v1, p0}, Lcom/github/mikephil/charting/charts/Chart$1;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    goto/16 :goto_0
.end method

.method public isDragDecelerationEnabled()Z
    .locals 1

    .prologue
    .line 655
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    return v0
.end method

.method public isDrawMarkerViewEnabled()Z
    .locals 1

    .prologue
    .line 1302
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkerViews:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x1

    .line 322
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getYValCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 329
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHighlightEnabled()Z
    .locals 1

    .prologue
    .line 895
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->isHighlightEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isLogEnabled()Z
    .locals 1

    .prologue
    .line 1136
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    return v0
.end method

.method public abstract notifyDataSetChanged()V
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 380
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDataNotSet:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ChartData;->getYValCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 389
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataTextDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float v0, v1, v2

    .line 391
    .local v0, "textOffset":F
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataTextDescription:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 409
    .end local v0    # "textOffset":F
    :cond_1
    :goto_0
    return-void

    .line 397
    :cond_2
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    if-nez v1, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->calculateOffsets()V

    .line 400
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1566
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1567
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 1566
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1569
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1573
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1574
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    float-to-int v0, v1

    .line 1575
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, p1}, Lcom/github/mikephil/charting/charts/Chart;->resolveSize(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, p2}, Lcom/github/mikephil/charting/charts/Chart;->resolveSize(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/github/mikephil/charting/charts/Chart;->setMeasuredDimension(II)V

    .line 1582
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/16 v4, 0x2710

    .line 1586
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v2, :cond_0

    .line 1587
    const-string v2, "MPAndroidChart"

    const-string v3, "OnSizeChanged()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_0
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-ge p1, v4, :cond_3

    if-ge p2, v4, :cond_3

    .line 1591
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setChartDimens(FF)V

    .line 1593
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v2, :cond_1

    .line 1594
    const-string v2, "MPAndroidChart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting chart dimens, width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1597
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1600
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1603
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->notifyDataSetChanged()V

    .line 1605
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1606
    return-void
.end method

.method public removeJob(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "job"    # Ljava/lang/Runnable;

    .prologue
    .line 1546
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1547
    return-void
.end method

.method public saveToGallery(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 1481
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    if-ltz p2, :cond_0

    const/16 v14, 0x64

    move/from16 v0, p2

    if-le v0, v14, :cond_1

    .line 1482
    :cond_0
    const/16 p2, 0x32

    .line 1484
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1486
    .local v4, "currentTime":J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 1487
    .local v6, "extBaseDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/DCIM"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 1489
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-nez v14, :cond_2

    .line 1490
    const/4 v14, 0x0

    .line 1528
    :goto_0
    return v14

    .line 1494
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1495
    .local v8, "filePath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1497
    .local v9, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1499
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .local v10, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/Chart;->getChartBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1501
    .local v2, "b":Landroid/graphics/Bitmap;
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, p2

    invoke-virtual {v2, v14, v0, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1505
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 1506
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1514
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 1516
    .local v12, "size":J
    new-instance v11, Landroid/content/ContentValues;

    const/16 v14, 0x8

    invoke-direct {v11, v14}, Landroid/content/ContentValues;-><init>(I)V

    .line 1519
    .local v11, "values":Landroid/content/ContentValues;
    const-string v14, "title"

    move-object/from16 v0, p1

    invoke-virtual {v11, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const-string v14, "_display_name"

    move-object/from16 v0, p1

    invoke-virtual {v11, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    const-string v14, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1522
    const-string v14, "mime_type"

    const-string v15, "image/jpeg"

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    const-string v14, "description"

    const-string v15, "MPAndroidChart-Library Save"

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    const-string v14, "orientation"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1525
    const-string v14, "_data"

    invoke-virtual {v11, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    const-string v14, "_size"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1528
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/Chart;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    if-nez v14, :cond_3

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1508
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .end local v11    # "values":Landroid/content/ContentValues;
    .end local v12    # "size":J
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 1509
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1511
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1528
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "b":Landroid/graphics/Bitmap;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "values":Landroid/content/ContentValues;
    .restart local v12    # "size":J
    :cond_3
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1508
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v11    # "values":Landroid/content/ContentValues;
    .end local v12    # "size":J
    :catch_1
    move-exception v3

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public saveToPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "pathOnSD"    # Ljava/lang/String;

    .prologue
    .line 1446
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getChartBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1448
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 1450
    .local v2, "stream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    .end local v2    # "stream":Ljava/io/OutputStream;
    .local v3, "stream":Ljava/io/OutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x28

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1460
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1466
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    :goto_0
    return v4

    .line 1461
    :catch_0
    move-exception v1

    .line 1462
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1463
    const/4 v4, 0x0

    goto :goto_0

    .line 1461
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v3    # "stream":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public setData(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    .local p1, "data":Lcom/github/mikephil/charting/data/ChartData;, "TT;"
    const/4 v2, 0x0

    .line 269
    if-nez p1, :cond_1

    .line 270
    const-string v2, "MPAndroidChart"

    const-string v3, "Cannot set data for chart. Provided data object is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDataNotSet:Z

    .line 277
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mOffsetsCalculated:Z

    .line 278
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    .line 281
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getYMin()F

    move-result v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/ChartData;->getYMax()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/github/mikephil/charting/charts/Chart;->calculateFormatter(FF)V

    .line 283
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/DataSet;

    .line 284
    .local v1, "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/DataSet;->needsDefaultFormatter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mDefaultFormatter:Lcom/github/mikephil/charting/utils/ValueFormatter;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/DataSet;->setValueFormatter(Lcom/github/mikephil/charting/utils/ValueFormatter;)V

    goto :goto_1

    .line 289
    .end local v1    # "set":Lcom/github/mikephil/charting/data/DataSet;, "Lcom/github/mikephil/charting/data/DataSet<*>;"
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->notifyDataSetChanged()V

    .line 291
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    if-eqz v2, :cond_0

    .line 292
    const-string v2, "MPAndroidChart"

    const-string v3, "Data is set."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 1000
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    if-nez p1, :cond_0

    .line 1001
    const-string p1, ""

    .line 1002
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescription:Ljava/lang/String;

    .line 1003
    return-void
.end method

.method public setDescriptionColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1045
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1046
    return-void
.end method

.method public setDescriptionPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1012
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescriptionPosition:Landroid/graphics/PointF;

    .line 1013
    return-void
.end method

.method public setDescriptionTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 1031
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/high16 v0, 0x41800000    # 16.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1032
    const/high16 p1, 0x41800000    # 16.0f

    .line 1033
    :cond_0
    const/high16 v0, 0x40c00000    # 6.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1034
    const/high16 p1, 0x40c00000    # 6.0f

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1037
    return-void
.end method

.method public setDescriptionTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 1021
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1022
    return-void
.end method

.method public setDragDecelerationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 664
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationEnabled:Z

    .line 665
    return-void
.end method

.method public setDragDecelerationFrictionCoef(F)V
    .locals 1
    .param p1, "newValue"    # F

    .prologue
    .line 686
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 687
    const/4 p1, 0x0

    .line 689
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 690
    const p1, 0x3f7fbe77    # 0.999f

    .line 692
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDragDecelerationFrictionCoef:F

    .line 693
    return-void
.end method

.method public setDrawMarkerViews(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1313
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDrawMarkerViews:Z

    .line 1314
    return-void
.end method

.method public setExtraBottomOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1096
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraBottomOffset:F

    .line 1097
    return-void
.end method

.method public setExtraLeftOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1110
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraLeftOffset:F

    .line 1111
    return-void
.end method

.method public setExtraOffsets(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 1058
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setExtraLeftOffset(F)V

    .line 1059
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/Chart;->setExtraTopOffset(F)V

    .line 1060
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/Chart;->setExtraRightOffset(F)V

    .line 1061
    invoke-virtual {p0, p4}, Lcom/github/mikephil/charting/charts/Chart;->setExtraBottomOffset(F)V

    .line 1062
    return-void
.end method

.method public setExtraRightOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1082
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraRightOffset:F

    .line 1083
    return-void
.end method

.method public setExtraTopOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1068
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mExtraTopOffset:F

    .line 1069
    return-void
.end method

.method public setHardwareAccelerationEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v2, 0x0

    .line 1616
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1618
    if-eqz p1, :cond_0

    .line 1619
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1626
    :goto_0
    return-void

    .line 1621
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 1623
    :cond_1
    const-string v0, "MPAndroidChart"

    const-string v1, "Cannot enable/disable hardware acceleration for devices below API level 11."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHighlightEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 885
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/ChartData;->setHighlightEnabled(Z)V

    .line 887
    :cond_0
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1127
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mLogEnabled:Z

    .line 1128
    return-void
.end method

.method public setMarkerView(Lcom/github/mikephil/charting/components/MarkerView;)V
    .locals 0
    .param p1, "v"    # Lcom/github/mikephil/charting/components/MarkerView;

    .prologue
    .line 1175
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mMarkerView:Lcom/github/mikephil/charting/components/MarkerView;

    .line 1176
    return-void
.end method

.method public setNoDataText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1146
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataText:Ljava/lang/String;

    .line 1147
    return-void
.end method

.method public setNoDataTextDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1156
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mNoDataTextDescription:Ljava/lang/String;

    .line 1157
    return-void
.end method

.method public setOnChartGestureListener(Lcom/github/mikephil/charting/listener/OnChartGestureListener;)V
    .locals 0
    .param p1, "l"    # Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    .prologue
    .line 865
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mGestureListener:Lcom/github/mikephil/charting/listener/OnChartGestureListener;

    .line 866
    return-void
.end method

.method public setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    .prologue
    .line 855
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mSelectionListener:Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;

    .line 856
    return-void
.end method

.method public setOnTouchListener(Lcom/github/mikephil/charting/listener/ChartTouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .prologue
    .line 558
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 559
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;I)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "which"    # I

    .prologue
    .line 1268
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    sparse-switch p2, :sswitch_data_0

    .line 1276
    :goto_0
    return-void

    .line 1270
    :sswitch_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mInfoPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1273
    :sswitch_1
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mDescPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1268
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/github/mikephil/charting/renderer/DataRenderer;

    .prologue
    .line 1400
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    if-eqz p1, :cond_0

    .line 1401
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 1402
    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1166
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->mTouchEnabled:Z

    .line 1167
    return-void
.end method

.method public valuesToHighlight()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/Chart;, "Lcom/github/mikephil/charting/charts/Chart<TT;>;"
    const/4 v0, 0x0

    .line 461
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->mIndicesToHightlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
