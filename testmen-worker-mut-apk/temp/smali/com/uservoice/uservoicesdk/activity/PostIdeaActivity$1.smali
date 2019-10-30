.class Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity$1;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "PostIdeaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/DefaultCallback",
        "<",
        "Lcom/uservoice/uservoicesdk/model/Forum;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onModel(Lcom/uservoice/uservoicesdk/model/Forum;)V
    .locals 1
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/Forum;

    .prologue
    .line 22
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/Session;->setForum(Lcom/uservoice/uservoicesdk/model/Forum;)V

    .line 23
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity$1;->this$0:Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity;->access$001(Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity;)V

    .line 24
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/uservoice/uservoicesdk/model/Forum;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/activity/PostIdeaActivity$1;->onModel(Lcom/uservoice/uservoicesdk/model/Forum;)V

    return-void
.end method
