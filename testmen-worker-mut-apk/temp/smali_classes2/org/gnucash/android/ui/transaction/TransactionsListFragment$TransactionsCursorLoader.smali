.class public Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionsCursorLoader;
.super Lorg/gnucash/android/db/DatabaseCursorLoader;
.source "TransactionsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/TransactionsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TransactionsCursorLoader"
.end annotation


# instance fields
.field private accountUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountUID"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lorg/gnucash/android/db/DatabaseCursorLoader;-><init>(Landroid/content/Context;)V

    .line 234
    iput-object p2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionsCursorLoader;->accountUID:Ljava/lang/String;

    .line 235
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 239
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionsCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    .line 240
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionsCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    check-cast v1, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    iget-object v2, p0, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionsCursorLoader;->accountUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->fetchAllTransactionsForAccount(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 241
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionsCursorLoader;->registerContentObserver(Landroid/database/Cursor;)V

    .line 243
    :cond_0
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/TransactionsListFragment$TransactionsCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
