.class Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1$1;
.super Ljava/lang/Object;
.source "ImageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;


# direct methods
.method constructor <init>(Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1$1;->this$2:Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 106
    packed-switch p2, :pswitch_data_0

    .line 120
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1$1;->this$2:Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;

    iget-object v2, v2, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;->this$1:Lcom/tech/freak/wizardpager/ui/ImageFragment$1;

    iget-object v2, v2, Lcom/tech/freak/wizardpager/ui/ImageFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/ImageFragment;

    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1$1;->this$2:Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;

    invoke-virtual {v3}, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tech/freak/wizardpager/ui/ImageFragment;->access$002(Lcom/tech/freak/wizardpager/ui/ImageFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "photoFromCamera":Landroid/content/Intent;
    const-string v2, "output"

    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1$1;->this$2:Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;

    iget-object v3, v3, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;->this$1:Lcom/tech/freak/wizardpager/ui/ImageFragment$1;

    iget-object v3, v3, Lcom/tech/freak/wizardpager/ui/ImageFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/ImageFragment;

    invoke-static {v3}, Lcom/tech/freak/wizardpager/ui/ImageFragment;->access$000(Lcom/tech/freak/wizardpager/ui/ImageFragment;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1$1;->this$2:Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 139
    .end local v0    # "photoFromCamera":Landroid/content/Intent;
    :goto_0
    return-void

    .line 109
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "photoPickerIntent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1$1;->this$2:Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;

    invoke-virtual {v2, v1, v6}, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
