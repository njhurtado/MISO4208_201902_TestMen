.class Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$5;
.super Lcom/uservoice/uservoicesdk/rest/Callback;
.source "SigninDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->discoverUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/rest/Callback",
        "<",
        "Lcom/uservoice/uservoicesdk/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$5;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/rest/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V
    .locals 2
    .param p1, "error"    # Lcom/uservoice/uservoicesdk/rest/RestResult;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$5;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$500(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$5;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$600(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$5;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$600(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 137
    return-void
.end method

.method public onModel(Lcom/uservoice/uservoicesdk/model/User;)V
    .locals 2
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/User;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$5;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$500(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$5;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$600(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$5;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$700(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 130
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p1, Lcom/uservoice/uservoicesdk/model/User;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$5;->onModel(Lcom/uservoice/uservoicesdk/model/User;)V

    return-void
.end method
