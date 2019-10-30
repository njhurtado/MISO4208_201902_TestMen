.class public abstract Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.super Lcom/uservoice/uservoicesdk/rest/Callback;
.source "DefaultCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/uservoice/uservoicesdk/rest/Callback",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.uservoice.uservoicesdk"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/DefaultCallback;, "Lcom/uservoice/uservoicesdk/ui/DefaultCallback<TT;>;"
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/rest/Callback;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;->context:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V
    .locals 4
    .param p1, "error"    # Lcom/uservoice/uservoicesdk/rest/RestResult;

    .prologue
    .line 23
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/DefaultCallback;, "Lcom/uservoice/uservoicesdk/ui/DefaultCallback<TT;>;"
    const-string v1, "com.uservoice.uservoicesdk"

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/rest/RestResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/uservoice/uservoicesdk/R$string;->uv_network_error:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "com.uservoice.uservoicesdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed trying to show alert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
