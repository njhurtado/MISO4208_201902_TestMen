.class Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$1;
.super Ljava/lang/Object;
.source "RecurrencePickerDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 726
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->recurrenceState:I

    .line 727
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$300(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)V

    .line 728
    return-void

    .line 726
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
