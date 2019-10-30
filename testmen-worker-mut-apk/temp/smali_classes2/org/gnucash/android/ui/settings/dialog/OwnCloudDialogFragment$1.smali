.class Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;
.super Ljava/lang/Object;
.source "OwnCloudDialogFragment.java"

# interfaces
.implements Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->checkData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteOperationFinish(Lcom/owncloud/android/lib/common/operations/RemoteOperation;Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;)V
    .locals 6
    .param p1, "caller"    # Lcom/owncloud/android/lib/common/operations/RemoteOperation;
    .param p2, "result"    # Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    .prologue
    const v5, 0x7f0f0151

    const v2, 0x7f0600bd

    const v4, 0x7f060061

    const/4 v3, 0x0

    .line 180
    invoke-virtual {p2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    const-string v0, "OC"

    invoke-virtual {p2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getLogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    instance-of v0, p1, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$000(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$000(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    const v2, 0x7f0f0150

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$000(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$200(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)V

    .line 206
    return-void

    .line 188
    :cond_1
    instance-of v0, p1, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .line 189
    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$000(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-virtual {v1, v5}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$100(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$100(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    const v2, 0x7f0f0153

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$100(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_2
    instance-of v0, p1, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$000(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$000(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-virtual {v1, v5}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$000(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 199
    :cond_3
    instance-of v0, p1, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$100(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$100(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    const v2, 0x7f0f0154

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$100(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
