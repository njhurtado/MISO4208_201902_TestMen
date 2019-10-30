.class Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;
.super Lcom/uservoice/uservoicesdk/rest/Callback;
.source "SigninDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/rest/Callback",
        "<",
        "Lcom/uservoice/uservoicesdk/model/AccessToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;->this$1:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/rest/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V
    .locals 3
    .param p1, "error"    # Lcom/uservoice/uservoicesdk/rest/RestResult;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;->this$1:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->val$activity:Landroid/app/Activity;

    sget v1, Lcom/uservoice/uservoicesdk/R$string;->uv_failed_signin_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 176
    return-void
.end method

.method public onModel(Lcom/uservoice/uservoicesdk/model/AccessToken;)V
    .locals 3
    .param p1, "accessToken"    # Lcom/uservoice/uservoicesdk/model/AccessToken;

    .prologue
    .line 161
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;->this$1:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;

    iget-object v1, v1, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/uservoice/uservoicesdk/Session;->setAccessToken(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/AccessToken;)V

    .line 162
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;->this$1:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2$1;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;->this$1:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;

    iget-object v2, v2, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-virtual {v2}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/model/User;->loadCurrentUser(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 171
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 158
    check-cast p1, Lcom/uservoice/uservoicesdk/model/AccessToken;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;->onModel(Lcom/uservoice/uservoicesdk/model/AccessToken;)V

    return-void
.end method
