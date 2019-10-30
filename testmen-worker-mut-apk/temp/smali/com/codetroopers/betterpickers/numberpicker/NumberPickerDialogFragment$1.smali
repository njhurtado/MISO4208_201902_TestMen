.class Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$1;
.super Ljava/lang/Object;
.source "NumberPickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment$1;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerDialogFragment;->dismiss()V

    .line 178
    return-void
.end method
