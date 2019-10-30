.class Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$1;
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
    .line 90
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/timepicker/TimePickerDialogFragment;->dismiss()V

    .line 94
    return-void
.end method
