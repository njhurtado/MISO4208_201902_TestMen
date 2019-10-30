.class Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;
.super Ljava/lang/Object;
.source "CalendarPickerView.java"

# interfaces
.implements Lcom/squareup/timessquare/MonthView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/timessquare/CalendarPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/timessquare/CalendarPickerView;


# direct methods
.method private constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;Lcom/squareup/timessquare/CalendarPickerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;
    .param p2, "x1"    # Lcom/squareup/timessquare/CalendarPickerView$1;

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;-><init>(Lcom/squareup/timessquare/CalendarPickerView;)V

    return-void
.end method


# virtual methods
.method public handleClick(Lcom/squareup/timessquare/MonthCellDescriptor;)V
    .locals 4
    .param p1, "cell"    # Lcom/squareup/timessquare/MonthCellDescriptor;

    .prologue
    .line 483
    invoke-virtual {p1}, Lcom/squareup/timessquare/MonthCellDescriptor;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 485
    .local v0, "clickedDate":Ljava/util/Date;
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$800(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$CellClickInterceptor;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$800(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$CellClickInterceptor;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/squareup/timessquare/CalendarPickerView$CellClickInterceptor;->onCellClicked(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$900(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v3}, Lcom/squareup/timessquare/CalendarPickerView;->access$1000(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/squareup/timessquare/CalendarPickerView;->betweenDates(Ljava/util/Date;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2, v0}, Lcom/squareup/timessquare/CalendarPickerView;->access$1100(Lcom/squareup/timessquare/CalendarPickerView;Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 489
    :cond_2
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$1200(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 490
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$1200(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;->onInvalidDateSelected(Ljava/util/Date;)V

    goto :goto_0

    .line 493
    :cond_3
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2, v0, p1}, Lcom/squareup/timessquare/CalendarPickerView;->access$1300(Lcom/squareup/timessquare/CalendarPickerView;Ljava/util/Date;Lcom/squareup/timessquare/MonthCellDescriptor;)Z

    move-result v1

    .line 495
    .local v1, "wasSelected":Z
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$1400(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 496
    if-eqz v1, :cond_4

    .line 497
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$1400(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;->onDateSelected(Ljava/util/Date;)V

    goto :goto_0

    .line 499
    :cond_4
    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$CellClickedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$1400(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/squareup/timessquare/CalendarPickerView$OnDateSelectedListener;->onDateUnselected(Ljava/util/Date;)V

    goto :goto_0
.end method
