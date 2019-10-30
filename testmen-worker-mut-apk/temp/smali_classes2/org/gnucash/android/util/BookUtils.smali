.class public Lorg/gnucash/android/util/BookUtils;
.super Ljava/lang/Object;
.source "BookUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activateBook(Ljava/lang/String;)V
    .locals 1
    .param p0, "bookUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getBooksDbAdapter()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->setActive(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->initializeDatabaseAdapters()V

    .line 21
    return-void
.end method

.method public static loadBook(Ljava/lang/String;)V
    .locals 1
    .param p0, "bookUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-static {p0}, Lorg/gnucash/android/util/BookUtils;->activateBook(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/gnucash/android/ui/account/AccountsActivity;->start(Landroid/content/Context;)V

    .line 30
    return-void
.end method
