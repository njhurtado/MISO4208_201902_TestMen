.class Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$1;
.super Ljava/lang/Object;
.source "DatePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/datepicker/DatePickerDialogFragment;->dismiss()V

    .line 132
    return-void
.end method
