.class public Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DateRangePickerDialogFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment_ViewBinding;->target:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    .line 23
    const v0, 0x7f090053

    const-string v1, "field \'mCalendarPickerView\'"

    const-class v2, Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/timessquare/CalendarPickerView;

    iput-object v0, p1, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mCalendarPickerView:Lcom/squareup/timessquare/CalendarPickerView;

    .line 24
    const v0, 0x7f09003f

    const-string v1, "field \'mDoneButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    .line 25
    const v0, 0x7f090038

    const-string v1, "field \'mCancelButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mCancelButton:Landroid/widget/Button;

    .line 26
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment_ViewBinding;->target:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    .line 32
    .local v0, "target":Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    iput-object v1, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment_ViewBinding;->target:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    .line 35
    iput-object v1, v0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mCalendarPickerView:Lcom/squareup/timessquare/CalendarPickerView;

    .line 36
    iput-object v1, v0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mDoneButton:Landroid/widget/Button;

    .line 37
    iput-object v1, v0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mCancelButton:Landroid/widget/Button;

    .line 38
    return-void
.end method
