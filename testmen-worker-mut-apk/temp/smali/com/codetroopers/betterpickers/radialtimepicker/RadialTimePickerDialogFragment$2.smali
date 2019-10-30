.class Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$2;
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
    .line 348
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 351
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1, v2}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;IZZZ)V

    .line 352
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;->tryVibrate()V

    .line 353
    return-void
.end method
