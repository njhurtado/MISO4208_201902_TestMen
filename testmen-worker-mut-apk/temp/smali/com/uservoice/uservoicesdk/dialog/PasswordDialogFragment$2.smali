.class Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$2;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "PasswordDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->authorize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/DefaultCallback",
        "<",
        "Lcom/uservoice/uservoicesdk/model/AccessToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onModel(Lcom/uservoice/uservoicesdk/model/AccessToken;)V
    .locals 1
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/AccessToken;

    .prologue
    .line 66
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/Session;->setAccessToken(Lcom/uservoice/uservoicesdk/model/AccessToken;)V

    .line 67
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$2;->this$0:Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->access$100(Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;)Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/flow/SigninCallback;->onSuccess()V

    .line 68
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/uservoice/uservoicesdk/model/AccessToken;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment$2;->onModel(Lcom/uservoice/uservoicesdk/model/AccessToken;)V

    return-void
.end method
