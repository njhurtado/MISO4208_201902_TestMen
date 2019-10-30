.class public Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorLoader;
.super Lorg/gnucash/android/db/DatabaseCursorLoader;
.source "ScheduledActionsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ScheduledTransactionsCursorLoader"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lorg/gnucash/android/db/DatabaseCursorLoader;-><init>(Landroid/content/Context;)V

    .line 608
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 612
    invoke-static {}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    .line 614
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    check-cast v1, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    invoke-virtual {v1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->fetchAllScheduledTransactions()Landroid/database/Cursor;

    move-result-object v0

    .line 616
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorLoader;->registerContentObserver(Landroid/database/Cursor;)V

    .line 617
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledTransactionsCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
