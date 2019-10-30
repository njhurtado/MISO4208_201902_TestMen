.class public Lorg/gnucash/android/ui/report/BaseReportFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BaseReportFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/report/BaseReportFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/report/BaseReportFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/report/BaseReportFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/gnucash/android/ui/report/BaseReportFragment_ViewBinding;->target:Lorg/gnucash/android/ui/report/BaseReportFragment;

    .line 21
    const v0, 0x7f0901bd

    const-string v1, "field \'mSelectedValueTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/gnucash/android/ui/report/BaseReportFragment;->mSelectedValueTextView:Landroid/widget/TextView;

    .line 22
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lorg/gnucash/android/ui/report/BaseReportFragment_ViewBinding;->target:Lorg/gnucash/android/ui/report/BaseReportFragment;

    .line 28
    .local v0, "target":Lorg/gnucash/android/ui/report/BaseReportFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/report/BaseReportFragment_ViewBinding;->target:Lorg/gnucash/android/ui/report/BaseReportFragment;

    .line 31
    iput-object v1, v0, Lorg/gnucash/android/ui/report/BaseReportFragment;->mSelectedValueTextView:Landroid/widget/TextView;

    .line 32
    return-void
.end method
