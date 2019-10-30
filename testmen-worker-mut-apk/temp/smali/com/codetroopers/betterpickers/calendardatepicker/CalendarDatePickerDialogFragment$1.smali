.class Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$1;
.super Ljava/lang/Object;
.source "CalendarDatePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->tryVibrate()V

    .line 299
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;

    move-result-object v0

    iget-object v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    iget-object v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-static {v2}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    .line 301
    invoke-static {v3}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 300
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateSetListener;->onDateSet(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;III)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->dismiss()V

    .line 304
    return-void
.end method
