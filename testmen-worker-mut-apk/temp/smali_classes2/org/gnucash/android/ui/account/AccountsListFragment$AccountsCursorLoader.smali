.class final Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;
.super Lorg/gnucash/android/db/DatabaseCursorLoader;
.source "AccountsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/account/AccountsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccountsCursorLoader"
.end annotation


# instance fields
.field private mDisplayMode:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

.field private mFilter:Ljava/lang/String;

.field private mParentAccountUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filter"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lorg/gnucash/android/db/DatabaseCursorLoader;-><init>(Landroid/content/Context;)V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mParentAccountUID:Ljava/lang/String;

    .line 408
    sget-object v0, Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;->TOP_LEVEL:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    iput-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mDisplayMode:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    .line 431
    iput-object p2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mFilter:Ljava/lang/String;

    .line 432
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentAccountUID"    # Ljava/lang/String;
    .param p3, "displayMode"    # Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lorg/gnucash/android/db/DatabaseCursorLoader;-><init>(Landroid/content/Context;)V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mParentAccountUID:Ljava/lang/String;

    .line 408
    sget-object v0, Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;->TOP_LEVEL:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    iput-object v0, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mDisplayMode:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    .line 419
    iput-object p2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mParentAccountUID:Ljava/lang/String;

    .line 420
    iput-object p3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mDisplayMode:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    .line 421
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 436
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    .line 439
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mFilter:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    check-cast v1, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is_hidden= 0 AND name LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mFilter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-virtual {v1, v2, v4, v4}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccounts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 464
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->registerContentObserver(Landroid/database/Cursor;)V

    .line 466
    :cond_0
    return-object v0

    .line 445
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mParentAccountUID:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mParentAccountUID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 446
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    check-cast v1, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mParentAccountUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchSubAccounts(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 448
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    sget-object v1, Lorg/gnucash/android/ui/account/AccountsListFragment$1;->$SwitchMap$org$gnucash$android$ui$account$AccountsListFragment$DisplayMode:[I

    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mDisplayMode:Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/account/AccountsListFragment$DisplayMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 457
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    check-cast v1, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchTopLevelAccounts()Landroid/database/Cursor;

    move-result-object v0

    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 450
    .end local v0    # "cursor":Landroid/database/Cursor;
    :pswitch_0
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    check-cast v1, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchRecentAccounts(I)Landroid/database/Cursor;

    move-result-object v0

    .line 451
    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 453
    .end local v0    # "cursor":Landroid/database/Cursor;
    :pswitch_1
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    check-cast v1, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchFavoriteAccounts()Landroid/database/Cursor;

    move-result-object v0

    .line 454
    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountsListFragment$AccountsCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
