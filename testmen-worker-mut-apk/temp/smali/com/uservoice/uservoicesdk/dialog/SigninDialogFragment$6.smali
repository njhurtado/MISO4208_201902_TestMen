.class Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;
.super Ljava/lang/Object;
.source "SigninDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->signIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    iput-object p2, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 146
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$600(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$200(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v2}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$600(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$1;

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-virtual {v4}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$1;-><init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/model/User;->findOrCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 179
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$200(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;->this$0:Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    invoke-static {v2}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->access$700(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;

    invoke-direct {v3, p0}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6$2;-><init>(Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment$6;)V

    invoke-static {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/model/AccessToken;->authorize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    goto :goto_0
.end method
