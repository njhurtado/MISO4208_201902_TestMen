.class final Lcom/kobakei/ratethisapp/RateThisApp$1;
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
    .line 215
    iput-object p1, p0, Lcom/kobakei/ratethisapp/RateThisApp$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 218
    invoke-static {}, Lcom/kobakei/ratethisapp/RateThisApp;->access$800()Lcom/kobakei/ratethisapp/RateThisApp$Callback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 219
    invoke-static {}, Lcom/kobakei/ratethisapp/RateThisApp;->access$800()Lcom/kobakei/ratethisapp/RateThisApp$Callback;

    move-result-object v3

    invoke-interface {v3}, Lcom/kobakei/ratethisapp/RateThisApp$Callback;->onYesClicked()V

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/kobakei/ratethisapp/RateThisApp$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "appPackage":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/kobakei/ratethisapp/RateThisApp;->access$900()Lcom/kobakei/ratethisapp/RateThisApp$Config;

    move-result-object v3

    invoke-static {v3}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$1000(Lcom/kobakei/ratethisapp/RateThisApp$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 224
    invoke-static {}, Lcom/kobakei/ratethisapp/RateThisApp;->access$900()Lcom/kobakei/ratethisapp/RateThisApp$Config;

    move-result-object v3

    invoke-static {v3}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$1000(Lcom/kobakei/ratethisapp/RateThisApp$Config;)Ljava/lang/String;

    move-result-object v2

    .line 226
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 227
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/kobakei/ratethisapp/RateThisApp$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    iget-object v3, p0, Lcom/kobakei/ratethisapp/RateThisApp$1;->val$context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/kobakei/ratethisapp/RateThisApp;->access$1100(Landroid/content/Context;Z)V

    .line 229
    return-void
.end method
