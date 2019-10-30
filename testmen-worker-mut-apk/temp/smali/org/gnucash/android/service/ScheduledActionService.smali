.class public Lorg/gnucash/android/service/ScheduledActionService;
.super Landroid/support/v4/app/JobIntentService;
.source "ScheduledActionService.java"


# static fields
.field private static final JOB_ID:I = 0x3e9

.field private static final LOG_TAG:Ljava/lang/String; = "ScheduledActionService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/JobIntentService;-><init>()V

    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/gnucash/android/service/ScheduledActionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lorg/gnucash/android/service/ScheduledActionService;

    const/16 v2, 0x3e9

    invoke-static {p0, v1, v2, v0}, Lorg/gnucash/android/service/ScheduledActionService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 72
    return-void
.end method

.method private static executeBackup(Lorg/gnucash/android/model/ScheduledAction;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 10
    .param p0, "scheduledAction"    # Lorg/gnucash/android/model/ScheduledAction;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 168
    invoke-static {p0}, Lorg/gnucash/android/service/ScheduledActionService;->shouldExecuteScheduledBackup(Lorg/gnucash/android/model/ScheduledAction;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 190
    :goto_0
    return v5

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/model/ScheduledAction;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/gnucash/android/export/ExportParams;->parseCsv(Ljava/lang/String;)Lorg/gnucash/android/export/ExportParams;

    move-result-object v3

    .line 173
    .local v3, "params":Lorg/gnucash/android/export/ExportParams;
    new-instance v5, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Lorg/gnucash/android/model/ScheduledAction;->getLastRunTime()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v3, v5}, Lorg/gnucash/android/export/ExportParams;->setExportStartTime(Ljava/sql/Timestamp;)V

    .line 174
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 177
    .local v4, "result":Ljava/lang/Boolean;
    :try_start_0
    new-instance v5, Lorg/gnucash/android/export/ExportAsyncTask;

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8, p1}, Lorg/gnucash/android/export/ExportAsyncTask;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v8, 0x1

    new-array v8, v8, [Lorg/gnucash/android/export/ExportParams;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v5, v8}, Lorg/gnucash/android/export/ExportAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 183
    const-string v5, "ScheduledActionService"

    const-string v7, "Backup/export did not occur. There might have been no new transactions to export or it might have crashed"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 188
    goto :goto_0

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 180
    const-string v5, "ScheduledActionService"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move v5, v7

    .line 190
    goto :goto_0

    .line 178
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private static executeScheduledEvent(Lorg/gnucash/android/model/ScheduledAction;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p0, "scheduledAction"    # Lorg/gnucash/android/model/ScheduledAction;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 130
    const-string v2, "ScheduledActionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing scheduled action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/gnucash/android/model/ScheduledAction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, "executionCount":I
    sget-object v2, Lorg/gnucash/android/service/ScheduledActionService$1;->$SwitchMap$org$gnucash$android$model$ScheduledAction$ActionType:[I

    invoke-virtual {p0}, Lorg/gnucash/android/model/ScheduledAction;->getActionType()Lorg/gnucash/android/model/ScheduledAction$ActionType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/ScheduledAction$ActionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 143
    :goto_0
    if-lez v1, :cond_0

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/gnucash/android/model/ScheduledAction;->setLastRun(J)V

    .line 148
    invoke-virtual {p0}, Lorg/gnucash/android/model/ScheduledAction;->getExecutionCount()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/gnucash/android/model/ScheduledAction;->setExecutionCount(I)V

    .line 150
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "last_run"

    .line 152
    invoke-virtual {p0}, Lorg/gnucash/android/model/ScheduledAction;->getLastRunTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 151
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    const-string v2, "execution_count"

    .line 154
    invoke-virtual {p0}, Lorg/gnucash/android/model/ScheduledAction;->getExecutionCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 153
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v2, "scheduled_actions"

    const-string v3, "uid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 156
    invoke-virtual {p0}, Lorg/gnucash/android/model/ScheduledAction;->getUID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 155
    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 135
    :pswitch_0
    invoke-static {p0, p1}, Lorg/gnucash/android/service/ScheduledActionService;->executeTransactions(Lorg/gnucash/android/model/ScheduledAction;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    add-int/2addr v1, v2

    .line 136
    goto :goto_0

    .line 139
    :pswitch_1
    invoke-static {p0, p1}, Lorg/gnucash/android/service/ScheduledActionService;->executeBackup(Lorg/gnucash/android/model/ScheduledAction;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static executeTransactions(Lorg/gnucash/android/model/ScheduledAction;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 24
    .param p0, "scheduledAction"    # Lorg/gnucash/android/model/ScheduledAction;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 221
    const/4 v8, 0x0

    .line 222
    .local v8, "executionCount":I
    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/model/ScheduledAction;->getActionUID()Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "actionUID":Ljava/lang/String;
    new-instance v18, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    new-instance v20, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/SplitsDbAdapter;)V

    .line 226
    .local v18, "transactionsDbAdapter":Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v19

    check-cast v19, Lorg/gnucash/android/model/Transaction;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .local v19, "trxnTemplate":Lorg/gnucash/android/model/Transaction;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 237
    .local v10, "now":J
    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/model/ScheduledAction;->getEndTime()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/model/ScheduledAction;->getEndTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 238
    .local v6, "endTime":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/model/ScheduledAction;->getTotalPlannedExecutionCount()I

    move-result v14

    .line 239
    .local v14, "totalPlannedExecutions":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v15, "transactions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/model/ScheduledAction;->getExecutionCount()I

    move-result v12

    .line 244
    .local v12, "previousExecutionCount":I
    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/model/ScheduledAction;->computeNextCountBasedScheduledExecutionTime()J

    move-result-wide v16

    .line 245
    .local v16, "transactionTime":J
    :goto_1
    cmp-long v20, v16, v6

    if-gtz v20, :cond_0

    .line 246
    new-instance v13, Lorg/gnucash/android/model/Transaction;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v13, v0, v1}, Lorg/gnucash/android/model/Transaction;-><init>(Lorg/gnucash/android/model/Transaction;Z)V

    .line 247
    .local v13, "recurringTrxn":Lorg/gnucash/android/model/Transaction;
    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/gnucash/android/model/Transaction;->setTime(J)V

    .line 248
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/model/ScheduledAction;->getUID()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/gnucash/android/model/Transaction;->setScheduledActionUID(Ljava/lang/String;)V

    .line 250
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/gnucash/android/model/ScheduledAction;->setExecutionCount(I)V

    .line 252
    if-lez v14, :cond_2

    if-lt v8, v14, :cond_2

    .line 257
    .end local v13    # "recurringTrxn":Lorg/gnucash/android/model/Transaction;
    :cond_0
    sget-object v20, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/gnucash/android/model/ScheduledAction;->setExecutionCount(I)V

    move v9, v8

    .line 260
    .end local v6    # "endTime":J
    .end local v8    # "executionCount":I
    .end local v10    # "now":J
    .end local v12    # "previousExecutionCount":I
    .end local v14    # "totalPlannedExecutions":I
    .end local v15    # "transactions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    .end local v16    # "transactionTime":J
    .end local v19    # "trxnTemplate":Lorg/gnucash/android/model/Transaction;
    .local v9, "executionCount":I
    :goto_2
    return v9

    .line 227
    .end local v9    # "executionCount":I
    .restart local v8    # "executionCount":I
    :catch_0
    move-exception v5

    .line 228
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    const-string v20, "ScheduledActionService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Scheduled transaction with UID "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " could not be found in the db with path "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 229
    .end local v8    # "executionCount":I
    .restart local v9    # "executionCount":I
    goto :goto_2

    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v9    # "executionCount":I
    .restart local v8    # "executionCount":I
    .restart local v10    # "now":J
    .restart local v19    # "trxnTemplate":Lorg/gnucash/android/model/Transaction;
    :cond_1
    move-wide v6, v10

    .line 237
    goto :goto_0

    .line 254
    .restart local v6    # "endTime":J
    .restart local v12    # "previousExecutionCount":I
    .restart local v13    # "recurringTrxn":Lorg/gnucash/android/model/Transaction;
    .restart local v14    # "totalPlannedExecutions":I
    .restart local v15    # "transactions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    .restart local v16    # "transactionTime":J
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/model/ScheduledAction;->computeNextCountBasedScheduledExecutionTime()J

    move-result-wide v16

    .line 255
    goto :goto_1
.end method

.method public static processScheduledActions(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/ScheduledAction;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "scheduledActions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/ScheduledAction;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/model/ScheduledAction;

    .line 108
    .local v1, "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 109
    .local v2, "now":J
    invoke-virtual {v1}, Lorg/gnucash/android/model/ScheduledAction;->getTotalPlannedExecutionCount()I

    move-result v4

    .line 110
    .local v4, "totalPlannedExecutions":I
    invoke-virtual {v1}, Lorg/gnucash/android/model/ScheduledAction;->getExecutionCount()I

    move-result v0

    .line 114
    .local v0, "executionCount":I
    invoke-virtual {v1}, Lorg/gnucash/android/model/ScheduledAction;->getStartTime()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gtz v6, :cond_0

    .line 115
    invoke-virtual {v1}, Lorg/gnucash/android/model/ScheduledAction;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    if-lez v4, :cond_1

    if-lt v0, v4, :cond_1

    .line 117
    :cond_0
    const-string v6, "ScheduledActionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping scheduled action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/gnucash/android/model/ScheduledAction;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {v1, p1}, Lorg/gnucash/android/service/ScheduledActionService;->executeScheduledEvent(Lorg/gnucash/android/model/ScheduledAction;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 123
    .end local v0    # "executionCount":I
    .end local v1    # "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    .end local v2    # "now":J
    .end local v4    # "totalPlannedExecutions":I
    :cond_2
    return-void
.end method

.method private static shouldExecuteScheduledBackup(Lorg/gnucash/android/model/ScheduledAction;)Z
    .locals 8
    .param p0, "scheduledAction"    # Lorg/gnucash/android/model/ScheduledAction;

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 201
    .local v2, "now":J
    invoke-virtual {p0}, Lorg/gnucash/android/model/ScheduledAction;->getEndTime()J

    move-result-wide v0

    .line 203
    .local v0, "endTime":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v4

    .line 206
    :cond_1
    invoke-virtual {p0}, Lorg/gnucash/android/model/ScheduledAction;->computeNextTimeBasedScheduledExecutionTime()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-gtz v5, :cond_0

    .line 209
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    const-string v8, "ScheduledActionService"

    const-string v9, "Starting scheduled action service"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v2

    .line 79
    .local v2, "booksDbAdapter":Lorg/gnucash/android/db/adapter/BooksDbAdapter;
    invoke-virtual {v2}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getAllRecords()Ljava/util/List;

    move-result-object v1

    .line 80
    .local v1, "books":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Book;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Book;

    .line 81
    .local v0, "book":Lorg/gnucash/android/model/Book;
    new-instance v4, Lorg/gnucash/android/db/DatabaseHelper;

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0}, Lorg/gnucash/android/model/Book;->getUID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Lorg/gnucash/android/db/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .local v4, "dbHelper":Lorg/gnucash/android/db/DatabaseHelper;
    invoke-virtual {v4}, Lorg/gnucash/android/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 83
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    invoke-direct {v5, v3}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    .local v5, "recurrenceDbAdapter":Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;
    new-instance v6, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;

    invoke-direct {v6, v3, v5}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;)V

    .line 86
    .local v6, "scheduledActionDbAdapter":Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;
    invoke-virtual {v6}, Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;->getAllEnabledScheduledActions()Ljava/util/List;

    move-result-object v7

    .line 87
    .local v7, "scheduledActions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/ScheduledAction;>;"
    const-string v9, "ScheduledActionService"

    const-string v10, "Processing %d total scheduled actions for Book: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 88
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Lorg/gnucash/android/model/Book;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 87
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {v7, v3}, Lorg/gnucash/android/service/ScheduledActionService;->processScheduledActions(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 92
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getActiveDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 93
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 96
    .end local v0    # "book":Lorg/gnucash/android/model/Book;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "dbHelper":Lorg/gnucash/android/db/DatabaseHelper;
    .end local v5    # "recurrenceDbAdapter":Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;
    .end local v6    # "scheduledActionDbAdapter":Lorg/gnucash/android/db/adapter/ScheduledActionDbAdapter;
    .end local v7    # "scheduledActions":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/ScheduledAction;>;"
    :cond_1
    const-string v8, "ScheduledActionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Completed service @ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method
