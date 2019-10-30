.class Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;
.super Ljava/lang/Object;
.source "CalendarPickerView.java"

# interfaces
.implements Lcom/squareup/timessquare/CalendarPickerView$OnInvalidDateSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/timessquare/CalendarPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultOnInvalidDateSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/timessquare/CalendarPickerView;


# direct methods
.method private constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;Lcom/squareup/timessquare/CalendarPickerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/timessquare/CalendarPickerView;
    .param p2, "x1"    # Lcom/squareup/timessquare/CalendarPickerView$1;

    .prologue
    .line 964
    invoke-direct {p0, p1}, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;-><init>(Lcom/squareup/timessquare/CalendarPickerView;)V

    return-void
.end method


# virtual methods
.method public onInvalidDateSelected(Ljava/util/Date;)V
    .locals 8
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v7, 0x0

    .line 966
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    .line 967
    invoke-virtual {v1}, Lcom/squareup/timessquare/CalendarPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/squareup/timessquare/R$string;->invalid_date:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v4}, Lcom/squareup/timessquare/CalendarPickerView;->access$2600(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/text/DateFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v5}, Lcom/squareup/timessquare/CalendarPickerView;->access$900(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    .line 968
    invoke-static {v5}, Lcom/squareup/timessquare/CalendarPickerView;->access$2600(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/text/DateFormat;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v6}, Lcom/squareup/timessquare/CalendarPickerView;->access$1000(Lcom/squareup/timessquare/CalendarPickerView;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 967
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, "errMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/squareup/timessquare/CalendarPickerView$DefaultOnInvalidDateSelectedListener;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-virtual {v1}, Lcom/squareup/timessquare/CalendarPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 970
    return-void
.end method
