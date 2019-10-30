.class Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "EmptyRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView$1;->this$0:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 52
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView$1;->this$0:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->checkIfEmpty()V

    .line 53
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 58
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView$1;->this$0:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->checkIfEmpty()V

    .line 59
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 64
    iget-object v0, p0, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView$1;->this$0:Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/widget/EmptyRecyclerView;->checkIfEmpty()V

    .line 65
    return-void
.end method
