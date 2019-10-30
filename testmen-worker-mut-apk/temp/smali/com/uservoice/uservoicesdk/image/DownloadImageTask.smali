.class public Lcom/uservoice/uservoicesdk/image/DownloadImageTask;
.super Landroid/os/AsyncTask;
.source "DownloadImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/image/DownloadImageTask;->url:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/image/DownloadImageTask;->imageView:Landroid/widget/ImageView;

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 25
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/uservoice/uservoicesdk/image/DownloadImageTask;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 31
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 35
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 32
    :catch_1
    move-exception v3

    goto :goto_0

    .line 30
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 31
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 33
    :goto_1
    throw v3

    .line 32
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/image/DownloadImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    invoke-static {}, Lcom/uservoice/uservoicesdk/image/ImageCache;->getInstance()Lcom/uservoice/uservoicesdk/image/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/image/DownloadImageTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/uservoice/uservoicesdk/image/ImageCache;->set(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/image/DownloadImageTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/image/DownloadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
