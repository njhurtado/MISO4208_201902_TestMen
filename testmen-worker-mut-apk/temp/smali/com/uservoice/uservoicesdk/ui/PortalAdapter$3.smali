.class Lcom/uservoice/uservoicesdk/ui/PortalAdapter$3;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "PortalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->loadTopics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uservoice/uservoicesdk/ui/DefaultCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/uservoice/uservoicesdk/model/Article;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/ui/PortalAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$3;->onModel(Ljava/util/List;)V

    return-void
.end method

.method public onModel(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/uservoice/uservoicesdk/model/Article;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "model":Ljava/util/List;, "Ljava/util/List<Lcom/uservoice/uservoicesdk/model/Article;>;"
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/Session;->setTopics(Ljava/util/List;)V

    .line 90
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    invoke-static {v0, p1}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->access$302(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;Ljava/util/List;)Ljava/util/List;

    .line 91
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$3;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method
