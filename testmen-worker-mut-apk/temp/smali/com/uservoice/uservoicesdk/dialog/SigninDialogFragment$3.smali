.class Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$3;
.super Ljava/lang/Object;
.source "SigninDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$3;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$3;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$200(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$3;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$300(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)V

    .line 97
    :cond_0
    return-void
.end method
