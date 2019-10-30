.class Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;


# direct methods
.method private constructor <init>(Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 301
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>.MyDataSetObserver;"
    iput-object p1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;->this$0:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;
    .param p2, "x1"    # Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$1;

    .prologue
    .line 301
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>.MyDataSetObserver;"
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;-><init>(Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 304
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>.MyDataSetObserver;"
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;->this$0:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->access$102(Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;Z)Z

    .line 305
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;->this$0:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->notifyDataSetChanged()V

    .line 306
    return-void
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>.MyDataSetObserver;"
    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;->this$0:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;

    invoke-static {v0, v2}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->access$102(Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;Z)Z

    .line 312
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;->this$0:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;

    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;->this$0:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->notifyItemRangeRemoved(II)V

    .line 313
    return-void
.end method
