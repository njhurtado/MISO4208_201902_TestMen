.class Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2$1;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "SigninDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;->onModel(Lcom/uservoice/uservoicesdk/model/AccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/DefaultCallback",
        "<",
        "Lcom/uservoice/uservoicesdk/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$2"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onModel(Lcom/uservoice/uservoicesdk/model/User;)V
    .locals 2
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/User;

    .prologue
    .line 165
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;

    iget-object v1, v1, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;->this$1:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;

    iget-object v1, v1, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/uservoice/uservoicesdk/Session;->setUser(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/User;)V

    .line 166
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;->this$1:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->val$activity:Landroid/app/Activity;

    sget-object v1, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->AUTHENTICATE:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;)V

    .line 167
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;->this$1:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->dismiss()V

    .line 168
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2$1;->this$2:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;->this$1:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$800(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/flow/SigninCallback;->onSuccess()V

    .line 169
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Lcom/uservoice/uservoicesdk/model/User;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2$1;->onModel(Lcom/uservoice/uservoicesdk/model/User;)V

    return-void
.end method
