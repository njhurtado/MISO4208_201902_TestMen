.class final Lcom/uservoice/uservoicesdk/model/Article$4;
.super Ljava/lang/Object;
.source "Article.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uservoice/uservoicesdk/model/Article;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/uservoice/uservoicesdk/model/Article;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/uservoice/uservoicesdk/model/Article;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 119
    new-instance v0, Lcom/uservoice/uservoicesdk/model/Article;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uservoice/uservoicesdk/model/Article;-><init>(Landroid/os/Parcel;Lcom/uservoice/uservoicesdk/model/Article$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/model/Article$4;->createFromParcel(Landroid/os/Parcel;)Lcom/uservoice/uservoicesdk/model/Article;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/uservoice/uservoicesdk/model/Article;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 123
    new-array v0, p1, [Lcom/uservoice/uservoicesdk/model/Article;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/model/Article$4;->newArray(I)[Lcom/uservoice/uservoicesdk/model/Article;

    move-result-object v0

    return-object v0
.end method
