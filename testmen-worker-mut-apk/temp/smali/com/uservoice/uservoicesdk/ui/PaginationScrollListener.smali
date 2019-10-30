.class public Lcom/uservoice/uservoicesdk/ui/PaginationScrollListener;
.super Ljava/lang/Object;
.source "PaginationScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final adapter:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p1, "adapter":Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;, "Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/PaginationScrollListener;->adapter:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    .line 11
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 19
    add-int v0, p2, p3

    if-lt v0, p4, :cond_0

    .line 20
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/PaginationScrollListener;->adapter:Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/ui/PaginatedAdapter;->loadMore()V

    .line 22
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 15
    return-void
.end method
