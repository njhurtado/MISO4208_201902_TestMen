.class Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$1;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "SigninDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/DefaultCallback",
        "<",
        "Lcom/uservoice/uservoicesdk/model/RequestToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onModel(Lcom/uservoice/uservoicesdk/model/RequestToken;)V
    .locals 1
    .param p1, "requestToken"    # Lcom/uservoice/uservoicesdk/model/RequestToken;

    .prologue
    .line 58
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/Session;->setRequestToken(Lcom/uservoice/uservoicesdk/model/RequestToken;)V

    .line 59
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$000(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$000(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 61
    :cond_0
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Lcom/uservoice/uservoicesdk/model/RequestToken;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$1;->onModel(Lcom/uservoice/uservoicesdk/model/RequestToken;)V

    return-void
.end method
