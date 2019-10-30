.class public Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorLoader;
.super Lorg/gnucash/android/db/DatabaseCursorLoader;
.source "ScheduledActionsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ScheduledExportCursorLoader"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lorg/gnucash/android/db/DatabaseCursorLoader;-><init>(Landroid/content/Context;)V

    .line 629
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 633
    invoke-static {}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    .line 635
    iget-object v1, p0, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorLoader;->mDatabaseAdapter:Lorg/gnucash/android/db/adapter/DatabaseAdapter;

    const-string v2, "type=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    .line 637
    invoke-virtual {v5}, Lorg/gnucash/android/model/ScheduledAction$ActionType;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    .line 635
    invoke-virtual {v1, v2, v3, v4}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->fetchAllRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 639
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorLoader;->registerContentObserver(Landroid/database/Cursor;)V

    .line 640
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lorg/gnucash/android/ui/transaction/ScheduledActionsListFragment$ScheduledExportCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
