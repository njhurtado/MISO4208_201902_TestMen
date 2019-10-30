.class public abstract Lorg/gnucash/android/db/DatabaseCursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "DatabaseCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field protected mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

.field protected final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v0, p0, Lorg/gnucash/android/db/DatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 45
    iput-object v0, p0, Lorg/gnucash/android/db/DatabaseCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    .line 61
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lorg/gnucash/android/db/DatabaseCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 62
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/gnucash/android/db/DatabaseCursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/DatabaseCursorLoader;->onReleaseResources(Landroid/database/Cursor;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lorg/gnucash/android/db/DatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 87
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lorg/gnucash/android/db/DatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 89
    invoke-virtual {p0}, Lorg/gnucash/android/db/DatabaseCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 93
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/DatabaseCursorLoader;->onReleaseResources(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/DatabaseCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public abstract loadInBackground()Landroid/database/Cursor;
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/gnucash/android/db/DatabaseCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/DatabaseCursorLoader;->onReleaseResources(Landroid/database/Cursor;)V

    .line 120
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/DatabaseCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReleaseResources(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 129
    invoke-virtual {p0}, Lorg/gnucash/android/db/DatabaseCursorLoader;->onStopLoading()V

    .line 133
    iget-object v0, p0, Lorg/gnucash/android/db/DatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/db/DatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/gnucash/android/db/DatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/DatabaseCursorLoader;->onReleaseResources(Landroid/database/Cursor;)V

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gnucash/android/db/DatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 137
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/gnucash/android/db/DatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/gnucash/android/db/DatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lorg/gnucash/android/db/DatabaseCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/db/DatabaseCursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/gnucash/android/db/DatabaseCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 107
    :cond_1
    invoke-virtual {p0}, Lorg/gnucash/android/db/DatabaseCursorLoader;->forceLoad()V

    .line 109
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/gnucash/android/db/DatabaseCursorLoader;->cancelLoad()Z

    .line 114
    return-void
.end method

.method protected registerContentObserver(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/gnucash/android/db/DatabaseCursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 75
    return-void
.end method
