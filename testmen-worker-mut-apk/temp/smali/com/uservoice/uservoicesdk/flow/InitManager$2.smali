.class Lcom/uservoice/uservoicesdk/flow/InitManager$2;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "InitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/flow/InitManager;->loadUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/DefaultCallback",
        "<",
        "Lcom/uservoice/uservoicesdk/model/RequestToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/flow/InitManager;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/flow/InitManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/flow/InitManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/flow/InitManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/InitManager;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onModel(Lcom/uservoice/uservoicesdk/model/RequestToken;)V
    .locals 7
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/RequestToken;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/InitManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/InitManager;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/flow/InitManager;->access$200(Lcom/uservoice/uservoicesdk/flow/InitManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/uservoice/uservoicesdk/Session;->setRequestToken(Lcom/uservoice/uservoicesdk/model/RequestToken;)V

    .line 56
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/flow/InitManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/InitManager;

    invoke-static {v2}, Lcom/uservoice/uservoicesdk/flow/InitManager;->access$000(Lcom/uservoice/uservoicesdk/flow/InitManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v0

    .line 57
    .local v0, "config":Lcom/uservoice/uservoicesdk/Config;
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/InitManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/InitManager;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/flow/InitManager;->access$000(Lcom/uservoice/uservoicesdk/flow/InitManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Config;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Config;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/Config;->getGuid()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/uservoice/uservoicesdk/flow/InitManager$2$1;

    iget-object v6, p0, Lcom/uservoice/uservoicesdk/flow/InitManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/InitManager;

    invoke-static {v6}, Lcom/uservoice/uservoicesdk/flow/InitManager;->access$000(Lcom/uservoice/uservoicesdk/flow/InitManager;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/uservoice/uservoicesdk/flow/InitManager$2$1;-><init>(Lcom/uservoice/uservoicesdk/flow/InitManager$2;Landroid/content/Context;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/uservoice/uservoicesdk/model/User;->findOrCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    goto :goto_0
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcom/uservoice/uservoicesdk/model/RequestToken;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/flow/InitManager$2;->onModel(Lcom/uservoice/uservoicesdk/model/RequestToken;)V

    return-void
.end method
