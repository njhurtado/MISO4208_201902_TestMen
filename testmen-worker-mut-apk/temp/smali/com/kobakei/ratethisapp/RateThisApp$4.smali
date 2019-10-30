.class final Lcom/kobakei/ratethisapp/RateThisApp$4;
.super Ljava/lang/Object;
.source "RateThisApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 250
    iput-object p1, p0, Lcom/kobakei/ratethisapp/RateThisApp$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 253
    invoke-static {}, Lcom/kobakei/ratethisapp/RateThisApp;->access$800()Lcom/kobakei/ratethisapp/RateThisApp$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Lcom/kobakei/ratethisapp/RateThisApp;->access$800()Lcom/kobakei/ratethisapp/RateThisApp$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/kobakei/ratethisapp/RateThisApp$Callback;->onCancelClicked()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kobakei/ratethisapp/RateThisApp;->access$1200(Landroid/content/Context;)V

    .line 257
    iget-object v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kobakei/ratethisapp/RateThisApp;->access$1300(Landroid/content/Context;)V

    .line 258
    return-void
.end method
