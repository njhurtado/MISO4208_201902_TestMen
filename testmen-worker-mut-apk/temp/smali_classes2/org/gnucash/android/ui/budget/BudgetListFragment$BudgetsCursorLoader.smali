.class Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetsCursorLoader;
.super Lorg/gnucash/android/db/DatabaseCursorLoader;
.source "BudgetListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/budget/BudgetListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BudgetsCursorLoader"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lorg/gnucash/android/db/DatabaseCursorLoader;-><init>(Landroid/content/Context;)V

    .line 319
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    invoke-static {}, Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BudgetsDbAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetsCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    .line 324
    iget-object v0, p0, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetsCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    const-string v1, "name ASC"

    invoke-virtual {v0, v2, v2, v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->fetchAllRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/gnucash/android/ui/budget/BudgetListFragment$BudgetsCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
