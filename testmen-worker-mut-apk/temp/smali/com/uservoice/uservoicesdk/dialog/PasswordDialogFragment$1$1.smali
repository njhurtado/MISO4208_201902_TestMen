.class Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1$1;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "PasswordDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onModel(Lcom/uservoice/uservoicesdk/model/RequestToken;)V
    .locals 1
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/RequestToken;

    .prologue
    .line 50
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/Session;->setRequestToken(Lcom/uservoice/uservoicesdk/model/RequestToken;)V

    .line 51
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1$1;->this$1:Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->access$000(Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;)V

    .line 52
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lcom/uservoice/uservoicesdk/model/RequestToken;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$1$1;->onModel(Lcom/uservoice/uservoicesdk/model/RequestToken;)V

    return-void
.end method
