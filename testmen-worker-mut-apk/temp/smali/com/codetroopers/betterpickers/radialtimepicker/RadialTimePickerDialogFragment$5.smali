.class Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$5;
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
    .line 415
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$5;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 418
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$5;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->tryVibrate()V

    .line 419
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$5;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-static {v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->access$500(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v0

    .line 420
    .local v0, "amOrPm":I
    if-nez v0, :cond_1

    .line 421
    const/4 v0, 0x1

    .line 425
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$5;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-static {v1, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->access$600(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;I)V

    .line 426
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$5;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-static {v1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->access$500(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;)Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialPickerLayout;->setAmOrPm(I)V

    .line 427
    return-void

    .line 422
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 423
    const/4 v0, 0x0

    goto :goto_0
.end method
