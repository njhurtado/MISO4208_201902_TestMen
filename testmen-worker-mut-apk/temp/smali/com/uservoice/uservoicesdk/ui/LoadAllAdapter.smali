.class public abstract Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;
.super Lcom/uservoice/uservoicesdk/ui/ModelAdapter;
.source "LoadAllAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/uservoice/uservoicesdk/ui/ModelAdapter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;, "Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 12
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;->loadAll()V

    .line 13
    return-void
.end method

.method private loadAll()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;, "Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter<TT;>;"
    const/4 v2, 0x1

    .line 16
    iput-boolean v2, p0, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;->loading:Z

    .line 17
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;->notifyDataSetChanged()V

    .line 18
    new-instance v0, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter$1;-><init>(Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;Landroid/content/Context;)V

    invoke-virtual {p0, v2, v0}, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;->loadPage(ILcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 26
    return-void
.end method


# virtual methods
.method public reload()V
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;, "Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;->loading:Z

    if-eqz v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;->objects:Ljava/util/List;

    .line 32
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/LoadAllAdapter;->loadAll()V

    goto :goto_0
.end method
