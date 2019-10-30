.class public abstract Lcom/uservoice/uservoicesdk/ui/ModelAdapter;
.super Lcom/uservoice/uservoicesdk/ui/SearchAdapter;
.source "ModelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/uservoice/uservoicesdk/ui/SearchAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final LOADING:I = 0x1

.field protected static final MODEL:I


# instance fields
.field protected addedObjects:I

.field protected inflater:Landroid/view/LayoutInflater;

.field protected final layoutId:I

.field protected objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
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
    .line 23
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/ModelAdapter;, "Lcom/uservoice/uservoicesdk/ui/ModelAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/ui/SearchAdapter;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->addedObjects:I

    .line 24
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->context:Landroid/content/Context;

    .line 25
    iput p2, p0, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->layoutId:I

    .line 26
    iput-object p3, p0, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->objects:Ljava/util/List;

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/ModelAdapter;, "Lcom/uservoice/uservoicesdk/ui/ModelAdapter<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 83
    iget v0, p0, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->addedObjects:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->addedObjects:I

    .line 84
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method protected abstract customizeLayout(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 64
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/ModelAdapter;, "Lcom/uservoice/uservoicesdk/ui/ModelAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v0, p0, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->loading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/ModelAdapter;, "Lcom/uservoice/uservoicesdk/ui/ModelAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 74
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/ModelAdapter;, "Lcom/uservoice/uservoicesdk/ui/ModelAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/ModelAdapter;, "Lcom/uservoice/uservoicesdk/ui/ModelAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/ModelAdapter;, "Lcom/uservoice/uservoicesdk/ui/ModelAdapter<TT;>;"
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->objects:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/ModelAdapter;, "Lcom/uservoice/uservoicesdk/ui/ModelAdapter<TT;>;"
    move-object v2, p2

    .line 34
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->getItemViewType(I)I

    move-result v1

    .line 35
    .local v1, "type":I
    if-nez v2, :cond_0

    .line 36
    iget-object v4, p0, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    sget v3, Lcom/uservoice/uservoicesdk/R$layout;->uv_loading_item:I

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 39
    :cond_0
    if-nez v1, :cond_1

    .line 40
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, "model":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2, v0}, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->customizeLayout(Landroid/view/View;Ljava/lang/Object;)V

    .line 44
    .end local v0    # "model":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v2

    .line 36
    :cond_2
    iget v3, p0, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->layoutId:I

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/ModelAdapter;, "Lcom/uservoice/uservoicesdk/ui/ModelAdapter<TT;>;"
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    .local p0, "this":Lcom/uservoice/uservoicesdk/ui/ModelAdapter;, "Lcom/uservoice/uservoicesdk/ui/ModelAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/ui/ModelAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract loadPage(ILcom/uservoice/uservoicesdk/rest/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation
.end method
