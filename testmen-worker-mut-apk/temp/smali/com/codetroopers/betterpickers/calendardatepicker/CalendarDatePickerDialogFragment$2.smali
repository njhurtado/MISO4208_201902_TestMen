.class Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$2;
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
    .line 311
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->tryVibrate()V

    .line 316
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment;->dismiss()V

    .line 317
    return-void
.end method
