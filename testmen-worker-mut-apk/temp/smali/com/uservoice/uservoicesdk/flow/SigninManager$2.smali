.class Lcom/uservoice/uservoicesdk/flow/SigninManager$2;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "SigninManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/flow/SigninManager;->createUser()V
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
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/flow/SigninManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/flow/SigninManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onModel(Lcom/uservoice/uservoicesdk/model/RequestToken;)V
    .locals 5
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/RequestToken;

    .prologue
    .line 85
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/Session;->setRequestToken(Lcom/uservoice/uservoicesdk/model/RequestToken;)V

    .line 86
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->access$200(Lcom/uservoice/uservoicesdk/flow/SigninManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->access$300(Lcom/uservoice/uservoicesdk/flow/SigninManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-static {v2}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->access$400(Lcom/uservoice/uservoicesdk/flow/SigninManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/uservoice/uservoicesdk/flow/SigninManager$2$1;

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager$2;->this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-static {v4}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->access$200(Lcom/uservoice/uservoicesdk/flow/SigninManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/uservoice/uservoicesdk/flow/SigninManager$2$1;-><init>(Lcom/uservoice/uservoicesdk/flow/SigninManager$2;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/model/User;->findOrCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 95
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    check-cast p1, Lcom/uservoice/uservoicesdk/model/RequestToken;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/flow/SigninManager$2;->onModel(Lcom/uservoice/uservoicesdk/model/RequestToken;)V

    return-void
.end method
