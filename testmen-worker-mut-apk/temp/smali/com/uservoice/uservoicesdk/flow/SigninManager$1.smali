.class Lcom/uservoice/uservoicesdk/flow/SigninManager$1;
.super Lcom/uservoice/uservoicesdk/rest/Callback;
.source "SigninManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/flow/SigninManager;->signIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/rest/Callback",
        "<",
        "Lcom/uservoice/uservoicesdk/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/flow/SigninManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/flow/SigninManager;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager$1;->this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/rest/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V
    .locals 1
    .param p1, "error"    # Lcom/uservoice/uservoicesdk/rest/RestResult;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager$1;->this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->access$100(Lcom/uservoice/uservoicesdk/flow/SigninManager;)V

    .line 73
    return-void
.end method

.method public onModel(Lcom/uservoice/uservoicesdk/model/User;)V
    .locals 1
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/User;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager$1;->this$0:Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->access$000(Lcom/uservoice/uservoicesdk/flow/SigninManager;)V

    .line 68
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/uservoice/uservoicesdk/model/User;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/flow/SigninManager$1;->onModel(Lcom/uservoice/uservoicesdk/model/User;)V

    return-void
.end method
