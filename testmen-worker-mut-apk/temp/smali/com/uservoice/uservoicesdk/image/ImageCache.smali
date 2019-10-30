.class public Lcom/uservoice/uservoicesdk/image/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# static fields
.field private static instance:Lcom/uservoice/uservoicesdk/image/ImageCache;


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private capacity:I

.field private mru:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x14

    iput v0, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->capacity:I

    .line 23
    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->capacity:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->cache:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->mru:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/uservoice/uservoicesdk/image/ImageCache;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/uservoice/uservoicesdk/image/ImageCache;->instance:Lcom/uservoice/uservoicesdk/image/ImageCache;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/uservoice/uservoicesdk/image/ImageCache;

    invoke-direct {v0}, Lcom/uservoice/uservoicesdk/image/ImageCache;-><init>()V

    sput-object v0, Lcom/uservoice/uservoicesdk/image/ImageCache;->instance:Lcom/uservoice/uservoicesdk/image/ImageCache;

    .line 19
    :cond_0
    sget-object v0, Lcom/uservoice/uservoicesdk/image/ImageCache;->instance:Lcom/uservoice/uservoicesdk/image/ImageCache;

    return-object v0
.end method


# virtual methods
.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 29
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->mru:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->mru:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Lcom/uservoice/uservoicesdk/image/DownloadImageTask;

    invoke-direct {v0, p1, p2}, Lcom/uservoice/uservoicesdk/image/DownloadImageTask;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/image/DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public purge()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 54
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->mru:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    return-void
.end method

.method public set(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 37
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->mru:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->mru:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->capacity:I

    if-ne v1, v2, :cond_1

    .line 43
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->mru:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    .local v0, "lru":Ljava/lang/String;
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->mru:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 47
    .end local v0    # "lru":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/image/ImageCache;->mru:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
