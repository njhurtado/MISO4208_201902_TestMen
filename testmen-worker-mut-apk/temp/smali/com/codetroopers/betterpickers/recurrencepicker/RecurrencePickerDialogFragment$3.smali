.class Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$3;
.super Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;
.source "RecurrencePickerDialogFragment.java"


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
.method constructor <init>(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;
    .param p2, "min"    # I
    .param p3, "defaultInt"    # I
    .param p4, "max"    # I

    .prologue
    .line 767
    iput-object p1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$3;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;III)V

    return-void
.end method


# virtual methods
.method onChange(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 770
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$3;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    move-result-object v0

    iget v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    if-eq v0, p1, :cond_0

    .line 771
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$3;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    move-result-object v0

    iput p1, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->endCount:I

    .line 772
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$3;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$700(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)V

    .line 773
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$3;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$800(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    .line 775
    :cond_0
    return-void
.end method
