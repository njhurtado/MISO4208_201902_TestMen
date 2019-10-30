.class public Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "EmptyRecyclerView.java"


# instance fields
.field emptyView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView$1;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView$1;-><init>(Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView$1;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView$1;-><init>(Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView$1;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView$1;-><init>(Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 40
    return-void
.end method


# virtual methods
.method checkIfEmpty()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->emptyView:Landroid/view/View;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :cond_0
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 70
    .local v0, "oldAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 74
    if-eqz p1, :cond_1

    .line 75
    iget-object v1, p0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 77
    :cond_1
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->emptyView:Landroid/view/View;

    .line 81
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->checkIfEmpty()V

    .line 82
    return-void
.end method
