.class public Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment_ViewBinding;
.super Lorg/gnucash/android/ui/report/BaseReportFragment_ViewBinding;
.source "BalanceSheetFragment_ViewBinding.java"


# instance fields
.field private target:Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/ui/report/BaseReportFragment_ViewBinding;-><init>(Lorg/gnucash/android/ui/report/BaseReportFragment;Landroid/view/View;)V

    .line 21
    iput-object p1, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment_ViewBinding;->target:Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;

    .line 23
    const v0, 0x7f0901e2

    const-string v1, "field \'mAssetsTableLayout\'"

    const-class v2, Landroid/widget/TableLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p1, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAssetsTableLayout:Landroid/widget/TableLayout;

    .line 24
    const v0, 0x7f0901e4

    const-string v1, "field \'mLiabilitiesTableLayout\'"

    const-class v2, Landroid/widget/TableLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p1, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mLiabilitiesTableLayout:Landroid/widget/TableLayout;

    .line 25
    const v0, 0x7f0901e3

    const-string v1, "field \'mEquityTableLayout\'"

    const-class v2, Landroid/widget/TableLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p1, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mEquityTableLayout:Landroid/widget/TableLayout;

    .line 26
    const v0, 0x7f09020e

    const-string v1, "field \'mNetWorth\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mNetWorth:Landroid/widget/TextView;

    .line 27
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment_ViewBinding;->target:Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;

    .line 32
    .local v0, "target":Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment_ViewBinding;->target:Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;

    .line 35
    iput-object v1, v0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mAssetsTableLayout:Landroid/widget/TableLayout;

    .line 36
    iput-object v1, v0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mLiabilitiesTableLayout:Landroid/widget/TableLayout;

    .line 37
    iput-object v1, v0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mEquityTableLayout:Landroid/widget/TableLayout;

    .line 38
    iput-object v1, v0, Lorg/gnucash/android/ui/report/sheet/BalanceSheetFragment;->mNetWorth:Landroid/widget/TextView;

    .line 40
    invoke-super {p0}, Lorg/gnucash/android/ui/report/BaseReportFragment_ViewBinding;->unbind()V

    .line 41
    return-void
.end method
