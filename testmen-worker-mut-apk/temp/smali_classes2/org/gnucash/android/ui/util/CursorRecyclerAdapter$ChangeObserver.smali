.class Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "CursorRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;)V
    .locals 1

    .prologue
    .line 286
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>.ChangeObserver;"
    iput-object p1, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;->this$0:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;

    .line 287
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 288
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 292
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>.ChangeObserver;"
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 297
    .local p0, "this":Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;, "Lorg/gnucash/android/ui/util/CursorRecyclerAdapter<TVH;>.ChangeObserver;"
    iget-object v0, p0, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter$ChangeObserver;->this$0:Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/util/CursorRecyclerAdapter;->onContentChanged()V

    .line 298
    return-void
.end method
