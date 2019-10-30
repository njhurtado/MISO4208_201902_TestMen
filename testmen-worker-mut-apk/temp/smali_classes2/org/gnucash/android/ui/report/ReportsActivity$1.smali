.class Lorg/gnucash/android/ui/report/ReportsActivity$1;
.super Ljava/lang/Object;
.source "ReportsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/report/ReportsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/report/ReportsActivity;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/report/ReportsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/report/ReportsActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/gnucash/android/ui/report/ReportsActivity$1;->this$0:Lorg/gnucash/android/ui/report/ReportsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportsActivity$1;->this$0:Lorg/gnucash/android/ui/report/ReportsActivity;

    invoke-static {v1}, Lorg/gnucash/android/ui/report/ReportsActivity;->access$000(Lorg/gnucash/android/ui/report/ReportsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportsActivity$1;->this$0:Lorg/gnucash/android/ui/report/ReportsActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/gnucash/android/ui/report/ReportsActivity;->access$002(Lorg/gnucash/android/ui/report/ReportsActivity;Z)Z

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "reportName":Ljava/lang/String;
    iget-object v1, p0, Lorg/gnucash/android/ui/report/ReportsActivity$1;->this$0:Lorg/gnucash/android/ui/report/ReportsActivity;

    iget-object v2, p0, Lorg/gnucash/android/ui/report/ReportsActivity$1;->this$0:Lorg/gnucash/android/ui/report/ReportsActivity;

    invoke-static {v2}, Lorg/gnucash/android/ui/report/ReportsActivity;->access$100(Lorg/gnucash/android/ui/report/ReportsActivity;)Lorg/gnucash/android/ui/report/ReportType;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/gnucash/android/ui/report/ReportType;->getFragment(Ljava/lang/String;)Lorg/gnucash/android/ui/report/BaseReportFragment;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gnucash/android/ui/report/ReportsActivity;->access$200(Lorg/gnucash/android/ui/report/ReportsActivity;Lorg/gnucash/android/ui/report/BaseReportFragment;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
