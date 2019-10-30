.class public Lorg/gnucash/android/model/ScheduledAction;
.super Lorg/gnucash/android/model/BaseModel;
.source "ScheduledAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/model/ScheduledAction$ActionType;
    }
.end annotation


# instance fields
.field private mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

.field private mActionUID:Ljava/lang/String;

.field private mAdvanceCreateDays:I

.field private mAdvanceNotifyDays:I

.field private mAutoCreate:Z

.field private mAutoNotify:Z

.field private mEndDate:J

.field private mExecutionCount:I

.field private mIsEnabled:Z

.field private mLastRun:J

.field private mRecurrence:Lorg/gnucash/android/model/Recurrence;

.field private mStartDate:J

.field private mTag:Ljava/lang/String;

.field private mTemplateAccountUID:Ljava/lang/String;

.field private mTotalFrequency:I


# direct methods
.method public constructor <init>(Lorg/gnucash/android/model/ScheduledAction$ActionType;)V
    .locals 4
    .param p1, "actionType"    # Lorg/gnucash/android/model/ScheduledAction$ActionType;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 56
    iput-wide v2, p0, Lorg/gnucash/android/model/ScheduledAction;->mLastRun:J

    .line 77
    iput v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mTotalFrequency:I

    .line 82
    iput v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mExecutionCount:I

    .line 87
    iput-boolean v1, p0, Lorg/gnucash/android/model/ScheduledAction;->mAutoCreate:Z

    .line 88
    iput-boolean v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mAutoNotify:Z

    .line 89
    iput v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mAdvanceCreateDays:I

    .line 90
    iput v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mAdvanceNotifyDays:I

    .line 94
    iput-object p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    .line 95
    iput-wide v2, p0, Lorg/gnucash/android/model/ScheduledAction;->mEndDate:J

    .line 96
    iput-boolean v1, p0, Lorg/gnucash/android/model/ScheduledAction;->mIsEnabled:Z

    .line 97
    return-void
.end method

.method private computeNextScheduledExecutionTimeStartingAt(J)J
    .locals 5
    .param p1, "startTime"    # J

    .prologue
    .line 214
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 215
    iget-wide v2, p0, Lorg/gnucash/android/model/ScheduledAction;->mStartDate:J

    .line 237
    :goto_0
    return-wide v2

    .line 218
    :cond_0
    iget-object v2, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v2}, Lorg/gnucash/android/model/Recurrence;->getMultiplier()I

    move-result v0

    .line 219
    .local v0, "multiplier":I
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lorg/joda/time/LocalDateTime;->fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 220
    .local v1, "nextScheduledExecution":Lorg/joda/time/LocalDateTime;
    sget-object v2, Lorg/gnucash/android/model/ScheduledAction$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    iget-object v3, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Recurrence;->getPeriodType()Lorg/gnucash/android/model/PeriodType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 237
    :goto_1
    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0

    .line 222
    :pswitch_0
    invoke-virtual {v1, v0}, Lorg/joda/time/LocalDateTime;->plusHours(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 223
    goto :goto_1

    .line 225
    :pswitch_1
    invoke-virtual {v1, v0}, Lorg/joda/time/LocalDateTime;->plusDays(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 226
    goto :goto_1

    .line 228
    :pswitch_2
    invoke-direct {p0, v1}, Lorg/gnucash/android/model/ScheduledAction;->computeNextWeeklyExecutionStartingAt(Lorg/joda/time/LocalDateTime;)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 229
    goto :goto_1

    .line 231
    :pswitch_3
    invoke-virtual {v1, v0}, Lorg/joda/time/LocalDateTime;->plusMonths(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    .line 232
    goto :goto_1

    .line 234
    :pswitch_4
    invoke-virtual {v1, v0}, Lorg/joda/time/LocalDateTime;->plusYears(I)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    goto :goto_1

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private computeNextWeeklyExecutionStartingAt(Lorg/joda/time/LocalDateTime;)Lorg/joda/time/LocalDateTime;
    .locals 6
    .param p1, "startTime"    # Lorg/joda/time/LocalDateTime;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 254
    iget-object v4, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v4}, Lorg/gnucash/android/model/Recurrence;->getByDays()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    invoke-static {}, Lorg/joda/time/LocalDateTime;->now()Lorg/joda/time/LocalDateTime;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/joda/time/LocalDateTime;->plusDays(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    .line 258
    :cond_0
    iget-object v4, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v4}, Lorg/gnucash/android/model/Recurrence;->getByDays()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 259
    .local v1, "dayOfWeek":I
    invoke-direct {p0, v1}, Lorg/gnucash/android/model/ScheduledAction;->convertCalendarDayOfWeekToJoda(I)I

    move-result v3

    .line 260
    .local v3, "jodaDayOfWeek":I
    invoke-virtual {p1, v3}, Lorg/joda/time/LocalDateTime;->withDayOfWeek(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 261
    .local v0, "candidateNextDueTime":Lorg/joda/time/LocalDateTime;
    invoke-virtual {v0, p1}, Lorg/joda/time/LocalDateTime;->isAfter(Lorg/joda/time/ReadablePartial;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 266
    .end local v0    # "candidateNextDueTime":Lorg/joda/time/LocalDateTime;
    .end local v1    # "dayOfWeek":I
    .end local v3    # "jodaDayOfWeek":I
    :cond_2
    iget-object v4, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v4}, Lorg/gnucash/android/model/Recurrence;->getByDays()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/gnucash/android/model/ScheduledAction;->convertCalendarDayOfWeekToJoda(I)I

    move-result v2

    .line 267
    .local v2, "firstScheduledDayOfWeek":I
    iget-object v4, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v4}, Lorg/gnucash/android/model/Recurrence;->getMultiplier()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/joda/time/LocalDateTime;->plusWeeks(I)Lorg/joda/time/LocalDateTime;

    move-result-object v4

    .line 268
    invoke-virtual {v4, v2}, Lorg/joda/time/LocalDateTime;->withDayOfWeek(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    goto :goto_0
.end method

.method private convertCalendarDayOfWeekToJoda(I)I
    .locals 2
    .param p1, "calendarDayOfWeek"    # I

    .prologue
    .line 279
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 280
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 281
    invoke-static {v0}, Lorg/joda/time/LocalDateTime;->fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/LocalDateTime;->getDayOfWeek()I

    move-result v1

    return v1
.end method

.method public static parseScheduledAction(Lorg/gnucash/android/model/Transaction;J)Lorg/gnucash/android/model/ScheduledAction;
    .locals 3
    .param p0, "transaction"    # Lorg/gnucash/android/model/Transaction;
    .param p1, "period"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 588
    new-instance v1, Lorg/gnucash/android/model/ScheduledAction;

    sget-object v2, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    invoke-direct {v1, v2}, Lorg/gnucash/android/model/ScheduledAction;-><init>(Lorg/gnucash/android/model/ScheduledAction$ActionType;)V

    .line 589
    .local v1, "scheduledAction":Lorg/gnucash/android/model/ScheduledAction;
    invoke-virtual {p0}, Lorg/gnucash/android/model/Transaction;->getUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/gnucash/android/model/ScheduledAction;->mActionUID:Ljava/lang/String;

    .line 590
    invoke-static {p1, p2}, Lorg/gnucash/android/model/Recurrence;->fromLegacyPeriod(J)Lorg/gnucash/android/model/Recurrence;

    move-result-object v0

    .line 591
    .local v0, "recurrence":Lorg/gnucash/android/model/Recurrence;
    invoke-virtual {v1, v0}, Lorg/gnucash/android/model/ScheduledAction;->setRecurrence(Lorg/gnucash/android/model/Recurrence;)V

    .line 592
    return-object v1
.end method


# virtual methods
.method public computeNextCountBasedScheduledExecutionTime()J
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/gnucash/android/model/ScheduledAction;->getTimeOfLastSchedule()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/gnucash/android/model/ScheduledAction;->computeNextScheduledExecutionTimeStartingAt(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public computeNextTimeBasedScheduledExecutionTime()J
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/gnucash/android/model/ScheduledAction;->getLastRunTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/gnucash/android/model/ScheduledAction;->computeNextScheduledExecutionTimeStartingAt(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActionType()Lorg/gnucash/android/model/ScheduledAction$ActionType;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    return-object v0
.end method

.method public getActionUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mActionUID:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvanceCreateDays()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mAdvanceCreateDays:I

    return v0
.end method

.method public getAdvanceNotifyDays()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mAdvanceNotifyDays:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 325
    iget-wide v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mEndDate:J

    return-wide v0
.end method

.method public getExecutionCount()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mExecutionCount:I

    return v0
.end method

.method public getLastRunTime()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mLastRun:J

    return-wide v0
.end method

.method public getPeriod()J
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Recurrence;->getPeriod()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecurrence()Lorg/gnucash/android/model/Recurrence;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    return-object v0
.end method

.method public getRepeatString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v2}, Lorg/gnucash/android/model/Recurrence;->getRepeatString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    .local v1, "ruleBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 507
    .local v0, "context":Landroid/content/Context;
    iget-wide v2, p0, Lorg/gnucash/android/model/ScheduledAction;->mEndDate:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget v2, p0, Lorg/gnucash/android/model/ScheduledAction;->mTotalFrequency:I

    if-lez v2, :cond_0

    .line 508
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0f0166

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lorg/gnucash/android/model/ScheduledAction;->mTotalFrequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getRuleString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 520
    const-string v2, ";"

    .line 522
    .local v2, "separator":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Recurrence;->getRuleString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .local v1, "ruleBuilder":Ljava/lang/StringBuilder;
    iget-wide v4, p0, Lorg/gnucash/android/model/ScheduledAction;->mEndDate:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 525
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 526
    .local v0, "df":Ljava/text/SimpleDateFormat;
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 527
    const-string v3, "UNTIL="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lorg/gnucash/android/model/ScheduledAction;->mEndDate:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 528
    :cond_1
    iget v3, p0, Lorg/gnucash/android/model/ScheduledAction;->mTotalFrequency:I

    if-lez v3, :cond_0

    .line 529
    const-string v3, "COUNT="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/gnucash/android/model/ScheduledAction;->mTotalFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 306
    iget-wide v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mStartDate:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateAccountUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mTemplateAccountUID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 487
    invoke-static {}, Lorg/gnucash/android/model/ScheduledAction;->generateUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mTemplateAccountUID:Ljava/lang/String;

    .line 489
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mTemplateAccountUID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTimeOfLastSchedule()J
    .locals 6

    .prologue
    .line 148
    iget v3, p0, Lorg/gnucash/android/model/ScheduledAction;->mExecutionCount:I

    if-nez v3, :cond_0

    .line 149
    const-wide/16 v4, -0x1

    .line 173
    :goto_0
    return-wide v4

    .line 151
    :cond_0
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lorg/gnucash/android/model/ScheduledAction;->mStartDate:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lorg/joda/time/LocalDateTime;->fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    .line 152
    .local v2, "startTime":Lorg/joda/time/LocalDateTime;
    iget-object v3, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Recurrence;->getMultiplier()I

    move-result v1

    .line 154
    .local v1, "multiplier":I
    iget v3, p0, Lorg/gnucash/android/model/ScheduledAction;->mExecutionCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int v0, v3, v1

    .line 155
    .local v0, "factor":I
    sget-object v3, Lorg/gnucash/android/model/ScheduledAction$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    iget-object v4, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v4}, Lorg/gnucash/android/model/Recurrence;->getPeriodType()Lorg/gnucash/android/model/PeriodType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 173
    :goto_1
    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_0

    .line 157
    :pswitch_0
    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusHours(I)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    .line 158
    goto :goto_1

    .line 160
    :pswitch_1
    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusDays(I)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    .line 161
    goto :goto_1

    .line 163
    :pswitch_2
    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusWeeks(I)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    .line 164
    goto :goto_1

    .line 166
    :pswitch_3
    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusMonths(I)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    .line 167
    goto :goto_1

    .line 169
    :pswitch_4
    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDateTime;->plusYears(I)Lorg/joda/time/LocalDateTime;

    move-result-object v2

    goto :goto_1

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getTotalPlannedExecutionCount()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mTotalFrequency:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mIsEnabled:Z

    return v0
.end method

.method public setActionType(Lorg/gnucash/android/model/ScheduledAction$ActionType;)V
    .locals 0
    .param p1, "actionType"    # Lorg/gnucash/android/model/ScheduledAction$ActionType;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    .line 113
    return-void
.end method

.method public setActionUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionUID"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mActionUID:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setAdvanceCreateDays(I)V
    .locals 0
    .param p1, "advanceCreateDays"    # I

    .prologue
    .line 459
    iput p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mAdvanceCreateDays:I

    .line 460
    return-void
.end method

.method public setAdvanceNotifyDays(I)V
    .locals 0
    .param p1, "advanceNotifyDays"    # I

    .prologue
    .line 477
    iput p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mAdvanceNotifyDays:I

    .line 478
    return-void
.end method

.method public setAutoCreate(Z)V
    .locals 0
    .param p1, "autoCreate"    # Z

    .prologue
    .line 423
    iput-boolean p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mAutoCreate:Z

    .line 424
    return-void
.end method

.method public setAutoNotify(Z)V
    .locals 0
    .param p1, "autoNotify"    # Z

    .prologue
    .line 441
    iput-boolean p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mAutoNotify:Z

    .line 442
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 373
    iput-boolean p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mIsEnabled:Z

    .line 374
    return-void
.end method

.method public setEndTime(J)V
    .locals 5
    .param p1, "endDate"    # J

    .prologue
    .line 333
    iput-wide p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mEndDate:J

    .line 334
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    new-instance v1, Ljava/sql/Timestamp;

    iget-wide v2, p0, Lorg/gnucash/android/model/ScheduledAction;->mEndDate:J

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Recurrence;->setPeriodEnd(Ljava/sql/Timestamp;)V

    .line 337
    :cond_0
    return-void
.end method

.method public setExecutionCount(I)V
    .locals 0
    .param p1, "executionCount"    # I

    .prologue
    .line 405
    iput p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mExecutionCount:I

    .line 406
    return-void
.end method

.method public setLastRun(J)V
    .locals 1
    .param p1, "nextRun"    # J

    .prologue
    .line 289
    iput-wide p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mLastRun:J

    .line 290
    return-void
.end method

.method public setRecurrence(Lorg/gnucash/android/model/PeriodType;I)V
    .locals 1
    .param p1, "periodType"    # Lorg/gnucash/android/model/PeriodType;
    .param p2, "ordinal"    # I

    .prologue
    .line 552
    new-instance v0, Lorg/gnucash/android/model/Recurrence;

    invoke-direct {v0, p1}, Lorg/gnucash/android/model/Recurrence;-><init>(Lorg/gnucash/android/model/PeriodType;)V

    .line 553
    .local v0, "recurrence":Lorg/gnucash/android/model/Recurrence;
    invoke-virtual {v0, p2}, Lorg/gnucash/android/model/Recurrence;->setMultiplier(I)V

    .line 554
    invoke-virtual {p0, v0}, Lorg/gnucash/android/model/ScheduledAction;->setRecurrence(Lorg/gnucash/android/model/Recurrence;)V

    .line 555
    return-void
.end method

.method public setRecurrence(Lorg/gnucash/android/model/Recurrence;)V
    .locals 6
    .param p1, "recurrence"    # Lorg/gnucash/android/model/Recurrence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v4, 0x0

    .line 563
    iput-object p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    .line 566
    iget-wide v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mStartDate:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 567
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    new-instance v1, Ljava/sql/Timestamp;

    iget-wide v2, p0, Lorg/gnucash/android/model/ScheduledAction;->mStartDate:J

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Recurrence;->setPeriodStart(Ljava/sql/Timestamp;)V

    .line 572
    :goto_0
    iget-wide v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mEndDate:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 573
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    new-instance v1, Ljava/sql/Timestamp;

    iget-wide v2, p0, Lorg/gnucash/android/model/ScheduledAction;->mEndDate:J

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Recurrence;->setPeriodEnd(Ljava/sql/Timestamp;)V

    .line 577
    :cond_0
    :goto_1
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Recurrence;->getPeriodStart()Ljava/sql/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mStartDate:J

    goto :goto_0

    .line 574
    :cond_2
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Recurrence;->getPeriodEnd()Ljava/sql/Timestamp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {v0}, Lorg/gnucash/android/model/Recurrence;->getPeriodEnd()Ljava/sql/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mEndDate:J

    goto :goto_1
.end method

.method public setStartTime(J)V
    .locals 3
    .param p1, "startDate"    # J

    .prologue
    .line 314
    iput-wide p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mStartDate:J

    .line 315
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mRecurrence:Lorg/gnucash/android/model/Recurrence;

    new-instance v1, Ljava/sql/Timestamp;

    invoke-direct {v1, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Recurrence;->setPeriodStart(Ljava/sql/Timestamp;)V

    .line 318
    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mTag:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setTemplateAccountUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "templateAccountUID"    # Ljava/lang/String;

    .prologue
    .line 497
    iput-object p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mTemplateAccountUID:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setTotalPlannedExecutionCount(I)V
    .locals 0
    .param p1, "plannedExecutions"    # I

    .prologue
    .line 389
    iput p1, p0, Lorg/gnucash/android/model/ScheduledAction;->mTotalFrequency:I

    .line 390
    return-void
.end method

.method public shouldAutoCreate()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mAutoCreate:Z

    return v0
.end method

.method public shouldAutoNotify()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lorg/gnucash/android/model/ScheduledAction;->mAutoNotify:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/gnucash/android/model/ScheduledAction;->mActionType:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    invoke-virtual {v1}, Lorg/gnucash/android/model/ScheduledAction$ActionType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/gnucash/android/model/ScheduledAction;->getRepeatString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
