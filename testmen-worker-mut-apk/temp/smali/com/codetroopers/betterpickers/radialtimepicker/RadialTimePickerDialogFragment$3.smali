.class Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$3;
.super Ljava/lang/Object;
.source "RadialTimePickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$3;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$3;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$3;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-static {v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->access$300(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$3;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->access$400(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;Z)V

    .line 385
    :goto_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$3;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->doneClickValidateAndCallback()V

    .line 386
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$3;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->tryVibrate()V

    goto :goto_0
.end method
