.class Lcom/uservoice/uservoicesdk/ui/PortalAdapter$2;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "PortalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->loadForum()V
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
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/PortalAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/ui/PortalAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$2;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onModel(Lcom/uservoice/uservoicesdk/model/Forum;)V
    .locals 1
    .param p1, "model"    # Lcom/uservoice/uservoicesdk/model/Forum;

    .prologue
    .line 78
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/Session;->setForum(Lcom/uservoice/uservoicesdk/model/Forum;)V

    .line 79
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$2;->this$0:Lcom/uservoice/uservoicesdk/ui/PortalAdapter;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter;->notifyDataSetChanged()V

    .line 80
    return-void
.end method

.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lcom/uservoice/uservoicesdk/model/Forum;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/PortalAdapter$2;->onModel(Lcom/uservoice/uservoicesdk/model/Forum;)V

    return-void
.end method
