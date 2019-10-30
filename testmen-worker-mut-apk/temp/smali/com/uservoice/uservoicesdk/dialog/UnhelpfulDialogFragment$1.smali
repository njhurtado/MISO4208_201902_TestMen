.class Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment$1;
.super Ljava/lang/Object;
.source "UnhelpfulDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment$1;->this$0:Lcom/uservoice/uservoicesdk/dialog/UnhelpfulDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 28
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 29
    return-void
.end method
