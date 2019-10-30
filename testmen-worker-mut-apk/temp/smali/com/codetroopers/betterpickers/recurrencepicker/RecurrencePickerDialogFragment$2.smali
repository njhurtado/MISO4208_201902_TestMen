.class Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$2;
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
    .line 739
    iput-object p1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$minMaxTextWatcher;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;III)V

    return-void
.end method


# virtual methods
.method onChange(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 742
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$400(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$500(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;

    move-result-object v0

    iput p1, v0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$RecurrenceModel;->interval:I

    .line 744
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$600(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)V

    .line 745
    iget-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;->access$500(Lcom/codetroopers/betterpickers/recurrencepicker/RecurrencePickerDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    .line 747
    :cond_0
    return-void
.end method
