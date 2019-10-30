.class Lcom/uservoice/uservoicesdk/flow/SigninManager$2$1;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "SigninManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/flow/SigninManager$2;->onModel(Lcom/uservoice/uservoicesdk/model/RequestToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/DefaultCallback",
        "<",
        "Lcom/uservoice/uservoicesdk/model/AccessTokenResult",
        "<",
        "Lcom/uservoice/uservoicesdk/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uservoice/uservoicesdk/flow/SigninManager$2;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/flow/SigninManager$2;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/uservoice/uservoicesdk/flow/SigninManager$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager$2$1;->this$1:Lcom/uservoice/uservoicesdk/flow/SigninManager$2;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onModel(Lcom/uservoice/uservoicesdk/model/AccessTokenResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uservoice/uservoicesdk/model/AccessTokenResult",
            "<",
            "Lcom/uservoice/uservoicesdk/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "model":Lcom/uservoice/uservoicesdk/model/AccessTokenResult;, "Lcom/uservoice/uservoicesdk/model/AccessTokenResult<Lcom/uservoice/uservoicesdk/model/User;>;"
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager$2$1;->this$1:Lcom/uservoice/uservoicesdk/flow/SigninManager$2;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/flow/SigninManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->access$200(Lcom/uservoice/uservoicesdk/flow/SigninManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/model/AccessTokenResult;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/model/User;

    invoke-virtual {v1, v2, v0}, Lcom/uservoice/uservoicesdk/Session;->setUser(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/User;)V

    .line 90
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager$2$1;->this$1:Lcom/uservoice/uservoicesdk/flow/SigninManager$2;

    iget-object v1, v1, Lcom/uservoice/uservoicesdk/flow/SigninManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->access$200(Lcom/uservoice/uservoicesdk/flow/SigninManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uservoice/uservoicesdk/model/AccessTokenResult;->getAccessToken()Lcom/uservoice/uservoicesdk/model/AccessToken;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uservoice/uservoicesdk/Session;->setAccessToken(Landroid/content/Context;Lcom/uservoice/uservoicesdk/model/AccessToken;)V

    .line 91
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager$2$1;->this$1:Lcom/uservoice/uservoicesdk/flow/SigninManager$2;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/flow/SigninManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->access$200(Lcom/uservoice/uservoicesdk/flow/SigninManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->IDENTIFY:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->track(Landroid/content/Context;Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;)V

    .line 92
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager$2$1;->this$1:Lcom/uservoice/uservoicesdk/flow/SigninManager$2;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/flow/SigninManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->access$500(Lcom/uservoice/uservoicesdk/flow/SigninManager;)Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/flow/SigninCallback;->onSuccess()V

    .line 93
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Lcom/uservoice/uservoicesdk/model/AccessTokenResult;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/flow/SigninManager$2$1;->onModel(Lcom/uservoice/uservoicesdk/model/AccessTokenResult;)V

    return-void
.end method
