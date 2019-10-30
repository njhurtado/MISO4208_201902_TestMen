.class Lcom/squareup/timessquare/CalendarPickerView$2;
.super Ljava/lang/Object;
.source "CalendarPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/timessquare/CalendarPickerView;->fixDialogDimens()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/timessquare/CalendarPickerView;


# direct methods
.method constructor <init>(Lcom/squareup/timessquare/CalendarPickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/timessquare/CalendarPickerView;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$2;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 405
    const-string v0, "Dimens are fixed: now scroll to the selected date"

    invoke-static {v0}, Lcom/squareup/timessquare/Logr;->d(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/squareup/timessquare/CalendarPickerView$2;->this$0:Lcom/squareup/timessquare/CalendarPickerView;

    invoke-static {v0}, Lcom/squareup/timessquare/CalendarPickerView;->access$400(Lcom/squareup/timessquare/CalendarPickerView;)V

    .line 407
    return-void
.end method
