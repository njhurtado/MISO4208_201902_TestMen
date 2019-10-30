.class public abstract Lcom/github/mikephil/charting/listener/ChartTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChartTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<*>;>",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field protected static final DRAG:I = 0x1

.field protected static final NONE:I = 0x0

.field protected static final PINCH_ZOOM:I = 0x4

.field protected static final POST_ZOOM:I = 0x5

.field protected static final ROTATE:I = 0x6

.field protected static final X_ZOOM:I = 0x2

.field protected static final Y_ZOOM:I = 0x3


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/charts/Chart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

.field protected mTouchMode:I


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/github/mikephil/charting/listener/ChartTouchListener;, "Lcom/github/mikephil/charting/listener/ChartTouchListener<TT;>;"
    .local p1, "chart":Lcom/github/mikephil/charting/charts/Chart;, "TT;"
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mTouchMode:I

    .line 36
    iput-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/Chart;

    .line 38
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 39
    return-void
.end method

.method protected static distance(FFFF)F
    .locals 4
    .param p0, "eventX"    # F
    .param p1, "startX"    # F
    .param p2, "eventY"    # F
    .param p3, "startY"    # F

    .prologue
    .line 68
    sub-float v0, p0, p1

    .line 69
    .local v0, "dx":F
    sub-float v1, p2, p3

    .line 70
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public getTouchMode()I
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/github/mikephil/charting/listener/ChartTouchListener;, "Lcom/github/mikephil/charting/listener/ChartTouchListener<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mTouchMode:I

    return v0
.end method

.method public setLastHighlighted(Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 0
    .param p1, "high"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 46
    .local p0, "this":Lcom/github/mikephil/charting/listener/ChartTouchListener;, "Lcom/github/mikephil/charting/listener/ChartTouchListener<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/listener/ChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    .line 47
    return-void
.end method
