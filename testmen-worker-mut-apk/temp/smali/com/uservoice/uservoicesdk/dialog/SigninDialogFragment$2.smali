.class Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$2;
.super Ljava/lang/Object;
.source "SigninDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 84
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)V

    .line 88
    return-void
.end method
