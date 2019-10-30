.class Lcom/uservoice/uservoicesdk/flow/InitManager$3;
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
        "Lcom/uservoice/uservoicesdk/model/User;",
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
    .line 81
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/flow/InitManager$3;->this$0:Lcom/uservoice/uservoicesdk/flow/InitManager;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V
    .locals 3
    .param p1, "error"    # Lcom/uservoice/uservoicesdk/rest/RestResult;

    .prologue
    .line 90
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->setAccessToken(Lcom/uservoice/uservoicesdk/model/AccessToken;)V

    .line 91
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/flow/InitManager$3;->this$0:Lcom/uservoice/uservoicesdk/flow/InitManager;

    invoke-static {v2}, Lcom/uservoice/uservoicesdk/flow/InitManager;->access$000(Lcom/uservoice/uservoicesdk/flow/InitManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "access_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/InitManager$3;->this$0:Lcom/uservoice/uservoicesdk/flow/InitManager;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/flow/InitManager;->access$100(Lcom/uservoice/uservoicesdk/flow/InitManager;)V

    .line 95
    return-void
.end method

.method public onModel(Lcom/uservoice/uservoicesdk/model/User;)V
    .locals 2
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/User;

    .prologue
    .line 84
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/InitManager$3;->this$0:Lcom/uservoice/uservoicesdk/flow/InitManager;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/flow/InitManager;->access$000(Lcom/uservoice/uservoicesdk/flow/InitManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/uservoice/uservoicesdk/Session;->setUser(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/User;)V

    .line 85
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/InitManager$3;->this$0:Lcom/uservoice/uservoicesdk/flow/InitManager;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/flow/InitManager;->access$300(Lcom/uservoice/uservoicesdk/flow/InitManager;)V

    .line 86
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Lcom/uservoice/uservoicesdk/model/User;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/flow/InitManager$3;->onModel(Lcom/uservoice/uservoicesdk/model/User;)V

    return-void
.end method
