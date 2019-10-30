.class Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/timessquare/CalendarPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthAdapter"
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/squareup/timessquare/CalendarPickerView;


# direct methods
.method private constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;)V
    .locals 1

    .prologue
    .line 732
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 733
    invoke-virtual {p1}, Lcom/squareup/timessquare/CalendarPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 734
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;Lcom/squareup/timessquare/CalendarPickerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;
    .param p2, "x1"    # Lcom/squareup/timessquare/CalendarPickerView$1;

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;-><init>(Lcom/squareup/timessquare/CalendarPickerView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v0, v0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 746
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v0, v0, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 750
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 754
    move-object/from16 v0, p2

    check-cast v0, Lcom/squareup/timessquare/MonthView;

    .line 755
    .local v0, "monthView":Lcom/squareup/timessquare/MonthView;
    if-eqz v0, :cond_0

    sget v1, Lcom/squareup/timessquare/R$id;->day_view_adapter_class:I

    .line 756
    invoke-virtual {v0, v1}, Lcom/squareup/timessquare/MonthView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$1500(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/DayViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->inflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    .line 758
    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$600(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v3, v3, Lcom/squareup/timessquare/CalendarPickerView;->listener:Lcom/squareup/timessquare/MonthView$Listener;

    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v4, v4, Lcom/squareup/timessquare/CalendarPickerView;->today:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v5}, Lcom/squareup/timessquare/CalendarPickerView;->access$1600(Lcom/squareup/timessquare/CalendarPickerView;)I

    move-result v5

    iget-object v6, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    .line 759
    invoke-static {v6}, Lcom/squareup/timessquare/CalendarPickerView;->access$1700(Lcom/squareup/timessquare/CalendarPickerView;)I

    move-result v6

    iget-object v7, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v7}, Lcom/squareup/timessquare/CalendarPickerView;->access$1800(Lcom/squareup/timessquare/CalendarPickerView;)I

    move-result v7

    iget-object v8, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v8}, Lcom/squareup/timessquare/CalendarPickerView;->access$1900(Lcom/squareup/timessquare/CalendarPickerView;)I

    move-result v8

    iget-object v9, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v9}, Lcom/squareup/timessquare/CalendarPickerView;->access$2000(Lcom/squareup/timessquare/CalendarPickerView;)Z

    move-result v9

    iget-object v10, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    .line 760
    invoke-static {v10}, Lcom/squareup/timessquare/CalendarPickerView;->access$2100(Lcom/squareup/timessquare/CalendarPickerView;)I

    move-result v10

    iget-object v11, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v11}, Lcom/squareup/timessquare/CalendarPickerView;->access$2200(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v12}, Lcom/squareup/timessquare/CalendarPickerView;->access$500(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Locale;

    move-result-object v12

    iget-object v13, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v13}, Lcom/squareup/timessquare/CalendarPickerView;->access$1500(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/DayViewAdapter;

    move-result-object v13

    move-object/from16 v0, p3

    .line 758
    invoke-static/range {v0 .. v13}, Lcom/squareup/timessquare/MonthView;->create(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/text/DateFormat;Lcom/squareup/timessquare/MonthView$Listener;Ljava/util/Calendar;IIIIZILjava/util/List;Ljava/util/Locale;Lcom/squareup/timessquare/DayViewAdapter;)Lcom/squareup/timessquare/MonthView;

    .end local v0    # "monthView":Lcom/squareup/timessquare/MonthView;
    move-result-object v0

    .line 761
    .restart local v0    # "monthView":Lcom/squareup/timessquare/MonthView;
    sget v1, Lcom/squareup/timessquare/R$id;->day_view_adapter_class:I

    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$1500(Lcom/squareup/timessquare/CalendarPickerView;)Lcom/squareup/timessquare/DayViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/timessquare/MonthView;->setTag(ILjava/lang/Object;)V

    .line 765
    :goto_0
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget-object v1, v1, Lcom/squareup/timessquare/CalendarPickerView;->months:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/timessquare/MonthDescriptor;

    iget-object v2, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v2}, Lcom/squareup/timessquare/CalendarPickerView;->access$2300(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v3}, Lcom/squareup/timessquare/CalendarPickerView;->access$700(Lcom/squareup/timessquare/CalendarPickerView;)Z

    move-result v3

    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v4}, Lcom/squareup/timessquare/CalendarPickerView;->access$2400(Lcom/squareup/timessquare/CalendarPickerView;)Landroid/graphics/Typeface;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    .line 766
    invoke-static {v5}, Lcom/squareup/timessquare/CalendarPickerView;->access$2500(Lcom/squareup/timessquare/CalendarPickerView;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 765
    invoke-virtual/range {v0 .. v5}, Lcom/squareup/timessquare/MonthView;->init(Lcom/squareup/timessquare/MonthDescriptor;Ljava/util/List;ZLandroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    .line 767
    return-object v0

    .line 763
    :cond_1
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthAdapter;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v1}, Lcom/squareup/timessquare/CalendarPickerView;->access$2200(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/timessquare/MonthView;->setDecorators(Ljava/util/List;)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 738
    const/4 v0, 0x0

    return v0
.end method
