.class Lorg/gnucash/android/ui/report/BaseReportFragment$1;
.super Landroid/os/AsyncTask;
.source "BaseReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/report/BaseReportFragment;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/report/BaseReportFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/report/BaseReportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/report/BaseReportFragment;

    .prologue
    .line 278
    iput-object p1, p0, Lorg/gnucash/android/ui/report/BaseReportFragment$1;->this$0:Lorg/gnucash/android/ui/report/BaseReportFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/gnucash/android/ui/report/BaseReportFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 287
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment$1;->this$0:Lorg/gnucash/android/ui/report/BaseReportFragment;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->generateReport()V

    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 278
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/gnucash/android/ui/report/BaseReportFragment$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 293
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment$1;->this$0:Lorg/gnucash/android/ui/report/BaseReportFragment;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/report/BaseReportFragment;->displayReport()V

    .line 294
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment$1;->this$0:Lorg/gnucash/android/ui/report/BaseReportFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportsActivity:Lorg/gnucash/android/ui/report/ReportsActivity;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 295
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment$1;->this$0:Lorg/gnucash/android/ui/report/BaseReportFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mReportsActivity:Lorg/gnucash/android/ui/report/ReportsActivity;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/report/ReportsActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 283
    return-void
.end method
