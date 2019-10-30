.class final Lcom/kobakei/ratethisapp/RateThisApp$2;
.super Ljava/lang/Object;
.source "RateThisApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kobakei/ratethisapp/RateThisApp;->showRateDialog(Landroid/content/Context;Landroid/support/v7/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/kobakei/ratethisapp/RateThisApp$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 234
    invoke-static {}, Lcom/kobakei/ratethisapp/RateThisApp;->access$800()Lcom/kobakei/ratethisapp/RateThisApp$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Lcom/kobakei/ratethisapp/RateThisApp;->access$800()Lcom/kobakei/ratethisapp/RateThisApp$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/kobakei/ratethisapp/RateThisApp$Callback;->onCancelClicked()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kobakei/ratethisapp/RateThisApp;->access$1200(Landroid/content/Context;)V

    .line 238
    iget-object v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kobakei/ratethisapp/RateThisApp;->access$1300(Landroid/content/Context;)V

    .line 239
    return-void
.end method
