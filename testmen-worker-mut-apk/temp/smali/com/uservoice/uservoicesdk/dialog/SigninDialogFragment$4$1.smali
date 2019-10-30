.class Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4$1;
.super Ljava/lang/Object;
.source "SigninDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$4;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$400(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)V

    .line 113
    return-void
.end method
