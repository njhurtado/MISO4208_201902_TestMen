.class Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;
.super Ljava/lang/Object;
.source "PieRadarChartTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AngularVelocitySample"
.end annotation


# instance fields
.field public angle:F

.field final synthetic this$0:Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

.field public time:J


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;JF)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "angle"    # F

    .prologue
    .line 336
    iput-object p1, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->this$0:Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-wide p2, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->time:J

    .line 338
    iput p4, p0, Lcom/github/mikephil/charting/listener/PieRadarChartTouchListener$AngularVelocitySample;->angle:F

    .line 339
    return-void
.end method
