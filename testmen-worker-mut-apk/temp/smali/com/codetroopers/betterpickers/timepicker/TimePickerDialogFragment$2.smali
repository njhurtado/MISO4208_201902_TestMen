.class Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;
.super Ljava/lang/Object;
.source "TimePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v5, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;

    .line 103
    .local v4, "handler":Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;
    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-static {v6}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)I

    move-result v6

    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-static {v7}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)Lcom/codetroopers/betterpickers/timepicker/TimePicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getHours()I

    move-result v7

    iget-object v8, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)Lcom/codetroopers/betterpickers/timepicker/TimePicker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getMinutes()I

    move-result v8

    invoke-interface {v4, v6, v7, v8}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;->onDialogTimeSet(III)V

    goto :goto_0

    .line 105
    .end local v4    # "handler":Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;
    :cond_0
    iget-object v5, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-virtual {v5}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 106
    .local v1, "activity":Landroid/app/Activity;
    iget-object v5, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-virtual {v5}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 107
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v5, v1, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 108
    check-cast v0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;

    .line 110
    .local v0, "act":Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;
    iget-object v5, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-static {v6}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)Lcom/codetroopers/betterpickers/timepicker/TimePicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getHours()I

    move-result v6

    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-static {v7}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)Lcom/codetroopers/betterpickers/timepicker/TimePicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getMinutes()I

    move-result v7

    invoke-interface {v0, v5, v6, v7}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;->onDialogTimeSet(III)V

    .line 116
    .end local v0    # "act":Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-virtual {v5}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->dismiss()V

    .line 117
    return-void

    .line 111
    :cond_2
    instance-of v5, v3, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;

    if-eqz v5, :cond_1

    move-object v2, v3

    .line 112
    check-cast v2, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;

    .line 114
    .local v2, "frag":Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;
    iget-object v5, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-static {v6}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)Lcom/codetroopers/betterpickers/timepicker/TimePicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getHours()I

    move-result v6

    iget-object v7, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-static {v7}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;)Lcom/codetroopers/betterpickers/timepicker/TimePicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codetroopers/betterpickers/timepicker/TimePicker;->getMinutes()I

    move-result v7

    invoke-interface {v2, v5, v6, v7}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;->onDialogTimeSet(III)V

    goto :goto_1
.end method
