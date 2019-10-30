.class Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ReportsOverviewFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;-><init>(Lorg/gnucash/android/ui/report/ReportsOverviewFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;

.field final synthetic val$target:Lorg/gnucash/android/ui/report/ReportsOverviewFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;Lorg/gnucash/android/ui/report/ReportsOverviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding$1;->this$0:Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding;

    iput-object p2, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding$1;->val$target:Lorg/gnucash/android/ui/report/ReportsOverviewFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsOverviewFragment_ViewBinding$1;->val$target:Lorg/gnucash/android/ui/report/ReportsOverviewFragment;

    invoke-virtual {v0, p1}, Lorg/gnucash/android/ui/report/ReportsOverviewFragment;->onClickChartTypeButton(Landroid/view/View;)V

    .line 40
    return-void
.end method
