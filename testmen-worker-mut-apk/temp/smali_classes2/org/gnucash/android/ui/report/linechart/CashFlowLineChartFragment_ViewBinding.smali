.class public Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment_ViewBinding;
.super Lorg/gnucash/android/ui/report/BaseReportFragment_ViewBinding;
.source "CashFlowLineChartFragment_ViewBinding.java"


# instance fields
.field private target:Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/ui/report/BaseReportFragment_ViewBinding;-><init>(Lorg/gnucash/android/ui/report/BaseReportFragment;Landroid/view/View;)V

    .line 20
    iput-object p1, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment_ViewBinding;->target:Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;

    .line 22
    const v0, 0x7f09012b

    const-string v1, "field \'mChart\'"

    const-class v2, Lcom/github/mikephil/charting/charts/LineChart;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p1, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 23
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment_ViewBinding;->target:Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;

    .line 28
    .local v0, "target":Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment_ViewBinding;->target:Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;

    .line 31
    iput-object v1, v0, Lorg/gnucash/android/ui/report/linechart/CashFlowLineChartFragment;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 33
    invoke-super {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment_ViewBinding;->unbind()V

    .line 34
    return-void
.end method
