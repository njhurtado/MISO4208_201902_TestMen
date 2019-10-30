.class public Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;
.super Lorg/gnucash/android/db/adapter/DatabaseAdapter;
.source "ScheduledActionDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/gnucash/android/db/adapter/DatabaseAdapter",
        "<",
        "Lorg/gnucash/android/model/ScheduledAction;",
        ">;"
    }
.end annotation


# instance fields
.field private mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "recurrenceDbAdapter"    # Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    .prologue
    .line 45
    const-string v0, "scheduled_actions"

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "action_uid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "start_time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "end_time"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "last_run"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "is_enabled"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "created_at"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "tag"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "total_frequency"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "recurrence_uid"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "auto_create"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "auto_notify"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "adv_creation"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "adv_notify"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "template_act_uid"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "execution_count"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    iput-object p2, p0, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    .line 64
    const-string v0, "ScheduledActionDbAdapter"

    iput-object v0, p0, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->LOG_TAG:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static getInstance()Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getScheduledEventDbAdapter()Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V
    .locals 0
    .param p1    # Lorg/gnucash/android/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    check-cast p1, Lorg/gnucash/android/model/ScheduledAction;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->addRecord(Lorg/gnucash/android/model/ScheduledAction;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    return-void
.end method

.method public addRecord(Lorg/gnucash/android/model/ScheduledAction;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V
    .locals 2
    .param p1, "scheduledAction"    # Lorg/gnucash/android/model/ScheduledAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "updateMethod"    # Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 78
    invoke-super {p0, p1, p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 79
    return-void
.end method

.method public bridge synthetic buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BaseModel;
    .locals 1
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/ScheduledAction;

    move-result-object v0

    return-object v0
.end method

.method public buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/ScheduledAction;
    .locals 22
    .param p1, "cursor"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 161
    const-string v21, "action_uid"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "actionUid":Ljava/lang/String;
    const-string v21, "start_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 163
    .local v16, "startTime":J
    const-string v21, "end_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 164
    .local v8, "endTime":J
    const-string v21, "last_run"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 165
    .local v12, "lastRun":J
    const-string v21, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 166
    .local v20, "typeString":Ljava/lang/String;
    const-string v21, "tag"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 167
    .local v18, "tag":Ljava/lang/String;
    const-string v21, "is_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-lez v21, :cond_0

    const/4 v7, 0x1

    .line 168
    .local v7, "enabled":Z
    :goto_0
    const-string v21, "total_frequency"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 169
    .local v14, "numOccurrences":I
    const-string v21, "execution_count"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 170
    .local v11, "execCount":I
    const-string v21, "auto_create"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 171
    .local v5, "autoCreate":I
    const-string v21, "auto_notify"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 172
    .local v6, "autoNotify":I
    const-string v21, "adv_creation"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 173
    .local v3, "advanceCreate":I
    const-string v21, "adv_notify"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 174
    .local v4, "advanceNotify":I
    const-string v21, "recurrence_uid"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 175
    .local v15, "recurrenceUID":Ljava/lang/String;
    const-string v21, "template_act_uid"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 177
    .local v19, "templateActUID":Ljava/lang/String;
    new-instance v10, Lorg/gnucash/android/model/ScheduledAction;

    invoke-static/range {v20 .. v20}, Lorg/gnucash/android/model/ScheduledAction$ActionType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/ScheduledAction$ActionType;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Lorg/gnucash/android/model/ScheduledAction;-><init>(Lorg/gnucash/android/model/ScheduledAction$ActionType;)V

    .line 178
    .local v10, "event":Lorg/gnucash/android/model/ScheduledAction;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->populateBaseModelAttributes(Landroid/database/Cursor;Lorg/gnucash/android/model/BaseModel;)V

    .line 179
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Lorg/gnucash/android/model/ScheduledAction;->setStartTime(J)V

    .line 180
    invoke-virtual {v10, v8, v9}, Lorg/gnucash/android/model/ScheduledAction;->setEndTime(J)V

    .line 181
    invoke-virtual {v10, v2}, Lorg/gnucash/android/model/ScheduledAction;->setActionUID(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v10, v12, v13}, Lorg/gnucash/android/model/ScheduledAction;->setLastRun(J)V

    .line 183
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/gnucash/android/model/ScheduledAction;->setTag(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v10, v7}, Lorg/gnucash/android/model/ScheduledAction;->setEnabled(Z)V

    .line 185
    invoke-virtual {v10, v14}, Lorg/gnucash/android/model/ScheduledAction;->setTotalPlannedExecutionCount(I)V

    .line 186
    invoke-virtual {v10, v11}, Lorg/gnucash/android/model/ScheduledAction;->setExecutionCount(I)V

    .line 187
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_1

    const/16 v21, 0x1

    :goto_1
    move/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/gnucash/android/model/ScheduledAction;->setAutoCreate(Z)V

    .line 188
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v6, v0, :cond_2

    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/gnucash/android/model/ScheduledAction;->setAutoNotify(Z)V

    .line 189
    invoke-virtual {v10, v3}, Lorg/gnucash/android/model/ScheduledAction;->setAdvanceCreateDays(I)V

    .line 190
    invoke-virtual {v10, v4}, Lorg/gnucash/android/model/ScheduledAction;->setAdvanceNotifyDays(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v21

    check-cast v21, Lorg/gnucash/android/model/Recurrence;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/gnucash/android/model/ScheduledAction;->setRecurrence(Lorg/gnucash/android/model/Recurrence;)V

    .line 193
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/gnucash/android/model/ScheduledAction;->setTemplateAccountUID(Ljava/lang/String;)V

    .line 195
    return-object v10

    .line 167
    .end local v3    # "advanceCreate":I
    .end local v4    # "advanceNotify":I
    .end local v5    # "autoCreate":I
    .end local v6    # "autoNotify":I
    .end local v7    # "enabled":Z
    .end local v10    # "event":Lorg/gnucash/android/model/ScheduledAction;
    .end local v11    # "execCount":I
    .end local v14    # "numOccurrences":I
    .end local v15    # "recurrenceUID":Ljava/lang/String;
    .end local v19    # "templateActUID":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 187
    .restart local v3    # "advanceCreate":I
    .restart local v4    # "advanceNotify":I
    .restart local v5    # "autoCreate":I
    .restart local v6    # "autoNotify":I
    .restart local v7    # "enabled":Z
    .restart local v10    # "event":Lorg/gnucash/android/model/ScheduledAction;
    .restart local v11    # "execCount":I
    .restart local v14    # "numOccurrences":I
    .restart local v15    # "recurrenceUID":Ljava/lang/String;
    .restart local v19    # "templateActUID":Ljava/lang/String;
    :cond_1
    const/16 v21, 0x0

    goto :goto_1

    .line 188
    :cond_2
    const/16 v21, 0x0

    goto :goto_2
.end method

.method public bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "updateMethod"    # Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/ScheduledAction;",
            ">;",
            "Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;",
            ")J"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "scheduledActions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/ScheduledAction;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v2, "recurrenceList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Recurrence;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/ScheduledAction;

    .line 85
    .local v3, "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    invoke-virtual {v3}, Lorg/gnucash/android/model/ScheduledAction;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v3    # "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    :cond_0
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->mRecurrenceDbAdapter:Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    invoke-virtual {v4, v2, p2}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    move-result-wide v0

    .line 90
    .local v0, "nRecurrences":J
    iget-object v4, p0, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Added %d recurrences for scheduled actions"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0, p1, p2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    move-result-wide v4

    return-wide v4
.end method

.method public getActionInstanceCount(Ljava/lang/String;)J
    .locals 4
    .param p1, "scheduledActionUID"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string v0, "SELECT COUNT(*) FROM transactions WHERE scheduled_action_uid=?"

    .line 242
    .local v0, "sql":Ljava/lang/String;
    iget-object v2, p0, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 243
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public getAllEnabledScheduledActions()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/ScheduledAction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->mTableName:Ljava/lang/String;

    const-string v3, "is_enabled=1"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 227
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v9, "scheduledActions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/ScheduledAction;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0, v8}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/ScheduledAction;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_0
    return-object v9
.end method

.method public getScheduledActionsWithUID(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "actionUID"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/ScheduledAction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "scheduled_actions"

    const-string v3, "action_uid= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 209
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v9, "scheduledActions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/ScheduledAction;>;"
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0, v8}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/ScheduledAction;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 217
    return-object v9
.end method

.method protected bridge synthetic setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/BaseModel;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/gnucash/android/model/BaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 40
    check-cast p2, Lorg/gnucash/android/model/ScheduledAction;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/ScheduledAction;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/ScheduledAction;)Landroid/database/sqlite/SQLiteStatement;
    .locals 9
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "schedxAction"    # Lorg/gnucash/android/model/ScheduledAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/16 v8, 0x8

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getActionUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 131
    const/4 v0, 0x2

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getActionType()Lorg/gnucash/android/model/ScheduledAction$ActionType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/ScheduledAction$ActionType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 132
    const/4 v0, 0x3

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getStartTime()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 133
    const/4 v0, 0x4

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getEndTime()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 134
    const/4 v0, 0x5

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getLastRunTime()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 135
    const/4 v6, 0x6

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 136
    const/4 v0, 0x7

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getCreatedTimestamp()Ljava/sql/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 141
    :goto_1
    const/16 v0, 0x9

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getTotalPlannedExecutionCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 142
    const/16 v0, 0xa

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/Recurrence;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 143
    const/16 v6, 0xb

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->shouldAutoCreate()Z

    move-result v0

    if-eqz v0, :cond_2

    move-wide v0, v2

    :goto_2
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 144
    const/16 v0, 0xc

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->shouldAutoNotify()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 145
    const/16 v0, 0xd

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getAdvanceCreateDays()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    const/16 v0, 0xe

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getAdvanceNotifyDays()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 147
    const/16 v0, 0xf

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getTemplateAccountUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 149
    const/16 v0, 0x10

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getExecutionCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 150
    const/16 v0, 0x11

    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 151
    return-object p1

    :cond_0
    move-wide v0, v4

    .line 135
    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p2}, Lorg/gnucash/android/model/ScheduledAction;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    move-wide v0, v4

    .line 143
    goto :goto_2

    :cond_3
    move-wide v2, v4

    .line 144
    goto :goto_3
.end method

.method public updateRecurrenceAttributes(Lorg/gnucash/android/model/ScheduledAction;)J
    .locals 10
    .param p1, "scheduledAction"    # Lorg/gnucash/android/model/ScheduledAction;

    .prologue
    .line 107
    new-instance v2, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    iget-object v6, p0, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v6}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 108
    .local v2, "recurrenceDbAdapter":Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;
    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getUID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "recurrence_uid"

    invoke-virtual {v2, v6, v7}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "recurrenceUID":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getRecurrence()Lorg/gnucash/android/model/Recurrence;

    move-result-object v1

    .line 111
    .local v1, "recurrence":Lorg/gnucash/android/model/Recurrence;
    invoke-virtual {v1, v3}, Lorg/gnucash/android/model/Recurrence;->setUID(Ljava/lang/String;)V

    .line 112
    sget-object v6, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->update:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v2, v1, v6}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->addRecord(Lorg/gnucash/android/model/BaseModel;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 114
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p0, v0, p1}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->extractBaseModelAttributes(Landroid/content/ContentValues;Lorg/gnucash/android/model/BaseModel;)Landroid/content/ContentValues;

    .line 116
    const-string v6, "start_time"

    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getStartTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    const-string v6, "end_time"

    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getEndTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    const-string v6, "tag"

    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v6, "total_frequency"

    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getTotalPlannedExecutionCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    iget-object v6, p0, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Updating scheduled event recurrence attributes"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v4, "uid=?"

    .line 123
    .local v4, "where":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/gnucash/android/model/ScheduledAction;->getUID()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 124
    .local v5, "whereArgs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "scheduled_actions"

    invoke-virtual {v6, v7, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    return-wide v6
.end method
