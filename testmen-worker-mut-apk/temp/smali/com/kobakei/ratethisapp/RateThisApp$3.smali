.class final Lcom/kobakei/ratethisapp/RateThisApp$3;
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
    .line 241
    iput-object p1, p0, Lcom/kobakei/ratethisapp/RateThisApp$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 244
    invoke-static {}, Lcom/kobakei/ratethisapp/RateThisApp;->access$800()Lcom/kobakei/ratethisapp/RateThisApp$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/kobakei/ratethisapp/RateThisApp;->access$800()Lcom/kobakei/ratethisapp/RateThisApp$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/kobakei/ratethisapp/RateThisApp$Callback;->onNoClicked()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$3;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kobakei/ratethisapp/RateThisApp;->access$1100(Landroid/content/Context;Z)V

    .line 248
    return-void
.end method
