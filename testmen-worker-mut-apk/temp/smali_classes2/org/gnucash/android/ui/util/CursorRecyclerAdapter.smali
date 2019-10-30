.class public abstract Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CursorRecyclerAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lorg/gnucash/android/ui/util/CursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;,
        Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;",
        "Landroid/widget/Filterable;",
        "Lorg/gnucash/android/ui/util/CursorFilter$CursorFilterClient;"
    }
.end annotation


# instance fields
.field private mChangeObserver:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter",
            "<TVH;>.ChangeObserver;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mCursorFilter:Lorg/gnucash/android/ui/util/CursorFilter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDataValid:Z

.field private mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field private mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 65
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->init(Landroid/database/Cursor;)V

    .line 67
    return-void
.end method

.method static synthetic access$102(Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataValid:Z

    return p1
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 150
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 151
    .local v0, "old":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_0
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 203
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 240
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursorFilter:Lorg/gnucash/android/ui/util/CursorFilter;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lorg/gnucash/android/ui/util/CursorFilter;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/util/CursorFilter;-><init>(Lorg/gnucash/android/ui/util/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursorFilter:Lorg/gnucash/android/ui/util/CursorFilter;

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursorFilter:Lorg/gnucash/android/ui/util/CursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    .prologue
    .line 256
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    iget-boolean v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    const-wide/16 v0, 0x0

    .line 128
    iget-boolean v2, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 135
    :cond_0
    return-wide v0
.end method

.method init(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 70
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 71
    .local v0, "cursorPresent":Z
    :goto_0
    iput-object p1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    .line 72
    iput-boolean v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataValid:Z

    .line 73
    if-eqz v0, :cond_3

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iput v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mRowIDColumn:I

    .line 75
    new-instance v1, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;-><init>(Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;)V

    iput-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mChangeObserver:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;

    .line 76
    new-instance v1, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$MyDataSetObserver;-><init>(Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$1;)V

    iput-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 78
    if-eqz v0, :cond_1

    .line 79
    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mChangeObserver:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mChangeObserver:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 80
    :cond_0
    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 82
    :cond_1
    return-void

    .line 70
    .end local v0    # "cursorPresent":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    .restart local v0    # "cursorPresent":Z
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iget-boolean v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataValid:Z

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1, v0}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->onBindViewHolderCursor(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V

    .line 101
    return-void
.end method

.method public abstract onBindViewHolderCursor(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 282
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->notifyDataSetChanged()V

    .line 283
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 232
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0
    .param p1, "filterQueryProvider"    # Landroid/widget/FilterQueryProvider;

    .prologue
    .line 272
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    iput-object p1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 273
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>;"
    const/4 v2, 0x0

    .line 167
    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    .line 171
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 172
    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mChangeObserver:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mChangeObserver:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 173
    :cond_1
    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 175
    :cond_2
    iput-object p1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    .line 176
    if-eqz p1, :cond_5

    .line 177
    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mChangeObserver:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mChangeObserver:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 178
    :cond_3
    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 179
    :cond_4
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mRowIDColumn:I

    .line 180
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataValid:Z

    .line 182
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 184
    :cond_5
    const/4 v1, -0x1

    iput v1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mRowIDColumn:I

    .line 185
    iput-boolean v2, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->mDataValid:Z

    .line 188
    invoke-virtual {p0}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_0
.end method
