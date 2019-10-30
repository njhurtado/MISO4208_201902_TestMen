.class Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorLoader;
.super Lorg/gnucash/android/db/DatabaseCursorLoader;
.source "BookManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/settings/BookManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BooksCursorLoader"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lorg/gnucash/android/db/DatabaseCursorLoader;-><init>(Landroid/content/Context;)V

    .line 300
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 304
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v0

    .line 305
    .local v0, "booksDbAdapter":Lorg/gnucash/android/db/adapter/BooksDbAdapter;
    invoke-virtual {v0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->fetchAllRecords()Landroid/database/Cursor;

    move-result-object v1

    .line 307
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorLoader;->registerContentObserver(Landroid/database/Cursor;)V

    .line 308
    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
