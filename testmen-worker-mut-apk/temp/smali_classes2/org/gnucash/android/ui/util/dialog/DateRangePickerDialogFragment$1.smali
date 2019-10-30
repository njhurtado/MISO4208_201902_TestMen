.class Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$1;
.super Ljava/lang/Object;
.source "DateRangePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$1;->this$0:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v3, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$1;->this$0:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    iget-object v3, v3, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->mCalendarPickerView:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v3}, Lcom/squareup/timessquare/CalendarPickerView;->getSelectedDates()Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "selectedDates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    .line 94
    .local v2, "startDate":Ljava/util/Date;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    move-object v0, v3

    .line 97
    .local v0, "endDate":Ljava/util/Date;
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 98
    iget-object v3, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$1;->this$0:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    invoke-static {v3}, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->access$000(Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;)Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$OnDateRangeSetListener;->onDateRangeSet(Ljava/util/Date;Ljava/util/Date;)V

    .line 99
    iget-object v3, p0, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment$1;->this$0:Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;

    invoke-virtual {v3}, Lorg/gnucash/android/ui/util/dialog/DateRangePickerDialogFragment;->dismiss()V

    .line 100
    return-void

    .line 94
    .end local v0    # "endDate":Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method
