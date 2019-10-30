.class Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;
.super Ljava/lang/Object;
.source "OwnCloudDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->setListeners()V
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
    .line 240
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$300(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    const v2, 0x7f0f0035

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .line 246
    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$500(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$400(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .line 247
    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$700(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$600(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .line 248
    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$900(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$800(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .line 249
    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$1100(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$1000(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$1200(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)V

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->access$1300(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)V

    goto :goto_0
.end method
