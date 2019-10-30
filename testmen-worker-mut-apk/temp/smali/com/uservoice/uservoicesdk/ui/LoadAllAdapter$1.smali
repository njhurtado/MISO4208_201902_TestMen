.class Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;
.super Lcom/uservoice/uservoicesdk/ui/DefaultCallback;
.source "LoadAllAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;->loadAll()V
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;, "Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;"
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/ui/DefaultCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onModel(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;, "Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;"
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;->onModel(Ljava/util/List;)V

    return-void
.end method

.method public onModel(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;, "Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;"
    .local p1, "model":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;->loading:Z

    .line 23
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;->notifyDataSetChanged()V

    .line 24
    return-void
.end method
