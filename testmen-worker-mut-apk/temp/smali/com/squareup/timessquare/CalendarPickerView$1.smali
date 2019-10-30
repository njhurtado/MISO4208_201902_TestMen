.class Lcom/squareup/timessquare/CalendarPickerView$1;
.super Ljava/lang/Object;
.source "CalendarPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/timessquare/CalendarPickerView;->scrollToSelectedMonth(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/timessquare/CalendarPickerView;

.field final synthetic val$selectedIndex:I

.field final synthetic val$smoothScroll:Z


# direct methods
.method constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$1;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iput p2, p0, Lcom/squareup/timessquare/CalendarPickerView$1;->val$selectedIndex:I

    iput-boolean p3, p0, Lcom/squareup/timessquare/CalendarPickerView$1;->val$smoothScroll:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 336
    const-string v0, "Scrolling to position %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/squareup/timessquare/CalendarPickerView$1;->val$selectedIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget-boolean v0, p0, Lcom/squareup/timessquare/CalendarPickerView$1;->val$smoothScroll:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$1;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget v1, p0, Lcom/squareup/timessquare/CalendarPickerView$1;->val$selectedIndex:I

    invoke-virtual {v0, v1}, Lcom/squareup/timessquare/CalendarPickerView;->smoothScrollToPosition(I)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$1;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    iget v1, p0, Lcom/squareup/timessquare/CalendarPickerView$1;->val$selectedIndex:I

    invoke-virtual {v0, v1}, Lcom/squareup/timessquare/CalendarPickerView;->setSelection(I)V

    goto :goto_0
.end method
