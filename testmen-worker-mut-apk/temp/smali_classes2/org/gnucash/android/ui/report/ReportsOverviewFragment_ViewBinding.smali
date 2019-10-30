.class public Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;
.super Lorg/gnucash/android/ui/report/BaseReportFragment_ViewBinding;
.source "ReportsOverviewFragment_ViewBinding.java"


# instance fields
.field private target:Lorg/gnucash/android/ui/report/ReportsOverviewFragment;

.field private view2131296310:Landroid/view/View;

.field private view2131296311:Landroid/view/View;

.field private view2131296314:Landroid/view/View;

.field private view2131296316:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/report/ReportsOverviewFragment;Landroid/view/View;)V
    .locals 7
    .param p1, "target"    # Lorg/gnucash/android/ui/report/ReportsOverviewFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const v6, 0x7f09003c

    const v5, 0x7f09003a

    const v4, 0x7f090037

    const v3, 0x7f090036

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/ui/report/BaseReportFragment_ViewBinding;-><init>(Lorg/gnucash/android/ui/report/BaseReportFragment;Landroid/view/View;)V

    .line 30
    iput-object p1, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->target:Lorg/gnucash/android/ui/report/ReportsOverviewFragment;

    .line 33
    const-string v1, "field \'mPieChartButton\' and method \'onClickChartTypeButton\'"

    invoke-static {p2, v6, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'mPieChartButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {v0, v6, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mPieChartButton:Landroid/widget/Button;

    .line 35
    iput-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->view2131296316:Landroid/view/View;

    .line 36
    new-instance v1, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding$1;-><init>(Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;Lorg/gnucash/android/ui/report/ReportsOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const-string v1, "field \'mBarChartButton\' and method \'onClickChartTypeButton\'"

    invoke-static {p2, v4, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    const-string v1, "field \'mBarChartButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {v0, v4, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mBarChartButton:Landroid/widget/Button;

    .line 44
    iput-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->view2131296311:Landroid/view/View;

    .line 45
    new-instance v1, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding$2;-><init>(Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;Lorg/gnucash/android/ui/report/ReportsOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const-string v1, "field \'mLineChartButton\' and method \'onClickChartTypeButton\'"

    invoke-static {p2, v5, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 52
    const-string v1, "field \'mLineChartButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {v0, v5, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mLineChartButton:Landroid/widget/Button;

    .line 53
    iput-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->view2131296314:Landroid/view/View;

    .line 54
    new-instance v1, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding$3;-><init>(Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;Lorg/gnucash/android/ui/report/ReportsOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const-string v1, "field \'mBalanceSheetButton\' and method \'onClickChartTypeButton\'"

    invoke-static {p2, v3, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 61
    const-string v1, "field \'mBalanceSheetButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {v0, v3, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mBalanceSheetButton:Landroid/widget/Button;

    .line 62
    iput-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->view2131296310:Landroid/view/View;

    .line 63
    new-instance v1, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding$4;-><init>(Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;Lorg/gnucash/android/ui/report/ReportsOverviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f090181

    const-string v2, "field \'mChart\'"

    const-class v3, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/charts/PieChart;

    iput-object v1, p1, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 70
    const v1, 0x7f09020c

    const-string v2, "field \'mTotalAssets\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mTotalAssets:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f09020d

    const-string v2, "field \'mTotalLiabilities\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mTotalLiabilities:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f090160

    const-string v2, "field \'mNetWorth\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mNetWorth:Landroid/widget/TextView;

    .line 73
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->target:Lorg/gnucash/android/ui/report/ReportsOverviewFragment;

    .line 78
    .local v0, "target":Lorg/gnucash/android/ui/report/ReportsOverviewFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    iput-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->target:Lorg/gnucash/android/ui/report/ReportsOverviewFragment;

    .line 81
    iput-object v2, v0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mPieChartButton:Landroid/widget/Button;

    .line 82
    iput-object v2, v0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mBarChartButton:Landroid/widget/Button;

    .line 83
    iput-object v2, v0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mLineChartButton:Landroid/widget/Button;

    .line 84
    iput-object v2, v0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mBalanceSheetButton:Landroid/widget/Button;

    .line 85
    iput-object v2, v0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 86
    iput-object v2, v0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mTotalAssets:Landroid/widget/TextView;

    .line 87
    iput-object v2, v0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mTotalLiabilities:Landroid/widget/TextView;

    .line 88
    iput-object v2, v0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->mNetWorth:Landroid/widget/TextView;

    .line 90
    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->view2131296316:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->view2131296316:Landroid/view/View;

    .line 92
    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->view2131296311:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->view2131296311:Landroid/view/View;

    .line 94
    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->view2131296314:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->view2131296314:Landroid/view/View;

    .line 96
    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->view2131296310:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iput-object v2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;->view2131296310:Landroid/view/View;

    .line 99
    invoke-super {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment_ViewBinding;->unbind()V

    .line 100
    return-void
.end method
