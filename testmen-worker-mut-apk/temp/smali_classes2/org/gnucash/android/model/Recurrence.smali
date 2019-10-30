.class public Lorg/gnucash/android/model/Recurrence;
.super Lorg/gnucash/android/model/BaseModel;
.source "Recurrence.java"


# instance fields
.field private mByDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiplier:I

.field private mPeriodEnd:Ljava/sql/Timestamp;

.field private mPeriodStart:Ljava/sql/Timestamp;

.field private mPeriodType:Lorg/gnucash/android/model/PeriodType;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/model/PeriodType;)V
    .locals 4
    .param p1, "periodType"    # Lorg/gnucash/android/model/PeriodType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/Recurrence;->mByDays:Ljava/util/List;

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    .line 71
    invoke-virtual {p0, p1}, Lorg/gnucash/android/model/Recurrence;->setPeriodType(Lorg/gnucash/android/model/PeriodType;)V

    .line 72
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    iput-object v0, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodStart:Ljava/sql/Timestamp;

    .line 73
    return-void
.end method

.method public static fromLegacyPeriod(J)Lorg/gnucash/android/model/Recurrence;
    .locals 4
    .param p0, "period"    # J

    .prologue
    .line 451
    const-wide v2, 0x73df16000L

    div-long v2, p0, v2

    long-to-int v1, v2

    .line 452
    .local v1, "result":I
    if-lez v1, :cond_0

    .line 453
    new-instance v0, Lorg/gnucash/android/model/Recurrence;

    sget-object v2, Lorg/gnucash/android/model/PeriodType;->YEAR:Lorg/gnucash/android/model/PeriodType;

    invoke-direct {v0, v2}, Lorg/gnucash/android/model/Recurrence;-><init>(Lorg/gnucash/android/model/PeriodType;)V

    .line 454
    .local v0, "recurrence":Lorg/gnucash/android/model/Recurrence;
    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Recurrence;->setMultiplier(I)V

    .line 487
    .end local v0    # "recurrence":Lorg/gnucash/android/model/Recurrence;
    :goto_0
    return-object v0

    .line 458
    :cond_0
    const-wide v2, 0x9a7ec800L

    div-long v2, p0, v2

    long-to-int v1, v2

    .line 459
    if-lez v1, :cond_1

    .line 460
    new-instance v0, Lorg/gnucash/android/model/Recurrence;

    sget-object v2, Lorg/gnucash/android/model/PeriodType;->MONTH:Lorg/gnucash/android/model/PeriodType;

    invoke-direct {v0, v2}, Lorg/gnucash/android/model/Recurrence;-><init>(Lorg/gnucash/android/model/PeriodType;)V

    .line 461
    .restart local v0    # "recurrence":Lorg/gnucash/android/model/Recurrence;
    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Recurrence;->setMultiplier(I)V

    goto :goto_0

    .line 465
    .end local v0    # "recurrence":Lorg/gnucash/android/model/Recurrence;
    :cond_1
    const-wide/32 v2, 0x240c8400

    div-long v2, p0, v2

    long-to-int v1, v2

    .line 466
    if-lez v1, :cond_2

    .line 467
    new-instance v0, Lorg/gnucash/android/model/Recurrence;

    sget-object v2, Lorg/gnucash/android/model/PeriodType;->WEEK:Lorg/gnucash/android/model/PeriodType;

    invoke-direct {v0, v2}, Lorg/gnucash/android/model/Recurrence;-><init>(Lorg/gnucash/android/model/PeriodType;)V

    .line 468
    .restart local v0    # "recurrence":Lorg/gnucash/android/model/Recurrence;
    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Recurrence;->setMultiplier(I)V

    goto :goto_0

    .line 472
    .end local v0    # "recurrence":Lorg/gnucash/android/model/Recurrence;
    :cond_2
    const-wide/32 v2, 0x5265c00

    div-long v2, p0, v2

    long-to-int v1, v2

    .line 473
    if-lez v1, :cond_3

    .line 474
    new-instance v0, Lorg/gnucash/android/model/Recurrence;

    sget-object v2, Lorg/gnucash/android/model/PeriodType;->DAY:Lorg/gnucash/android/model/PeriodType;

    invoke-direct {v0, v2}, Lorg/gnucash/android/model/Recurrence;-><init>(Lorg/gnucash/android/model/PeriodType;)V

    .line 475
    .restart local v0    # "recurrence":Lorg/gnucash/android/model/Recurrence;
    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Recurrence;->setMultiplier(I)V

    goto :goto_0

    .line 479
    .end local v0    # "recurrence":Lorg/gnucash/android/model/Recurrence;
    :cond_3
    const-wide/32 v2, 0x36ee80

    div-long v2, p0, v2

    long-to-int v1, v2

    .line 480
    if-lez v1, :cond_4

    .line 481
    new-instance v0, Lorg/gnucash/android/model/Recurrence;

    sget-object v2, Lorg/gnucash/android/model/PeriodType;->HOUR:Lorg/gnucash/android/model/PeriodType;

    invoke-direct {v0, v2}, Lorg/gnucash/android/model/Recurrence;-><init>(Lorg/gnucash/android/model/PeriodType;)V

    .line 482
    .restart local v0    # "recurrence":Lorg/gnucash/android/model/Recurrence;
    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Recurrence;->setMultiplier(I)V

    goto :goto_0

    .line 487
    .end local v0    # "recurrence":Lorg/gnucash/android/model/Recurrence;
    :cond_4
    new-instance v0, Lorg/gnucash/android/model/Recurrence;

    sget-object v2, Lorg/gnucash/android/model/PeriodType;->DAY:Lorg/gnucash/android/model/PeriodType;

    invoke-direct {v0, v2}, Lorg/gnucash/android/model/Recurrence;-><init>(Lorg/gnucash/android/model/PeriodType;)V

    goto :goto_0
.end method

.method private getFrequencyRepeatString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 427
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 428
    .local v0, "res":Landroid/content/res/Resources;
    sget-object v1, Lorg/gnucash/android/model/Recurrence$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    iget-object v2, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodType:Lorg/gnucash/android/model/PeriodType;

    invoke-virtual {v2}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 440
    const-string v1, ""

    :goto_0
    return-object v1

    .line 430
    :pswitch_0
    const v1, 0x7f0d0006

    iget v2, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 432
    :pswitch_1
    const v1, 0x7f0d0005

    iget v2, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 434
    :pswitch_2
    const v1, 0x7f0d0008

    iget v2, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 436
    :pswitch_3
    const v1, 0x7f0d0007

    iget v2, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 438
    :pswitch_4
    const v1, 0x7f0d0009

    iget v2, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getByDays()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lorg/gnucash/android/model/Recurrence;->mByDays:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 8

    .prologue
    .line 303
    iget-object v4, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodEnd:Ljava/sql/Timestamp;

    if-nez v4, :cond_1

    .line 304
    const/4 v0, -0x1

    .line 333
    :cond_0
    return v0

    .line 306
    :cond_1
    iget v2, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    .line 308
    .local v2, "multiple":I
    sget-object v4, Lorg/gnucash/android/model/Recurrence$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    iget-object v5, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodType:Lorg/gnucash/android/model/PeriodType;

    invoke-virtual {v5}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 325
    invoke-static {v2}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object v1

    .line 327
    .local v1, "jodaPeriod":Lorg/joda/time/ReadablePeriod;
    :goto_0
    const/4 v0, 0x0

    .line 328
    .local v0, "count":I
    new-instance v3, Lorg/joda/time/LocalDateTime;

    iget-object v4, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodStart:Ljava/sql/Timestamp;

    invoke-virtual {v4}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 329
    .local v3, "startTime":Lorg/joda/time/LocalDateTime;
    :goto_1
    invoke-virtual {v3}, Lorg/joda/time/LocalDateTime;->toDateTime()Lorg/joda/time/DateTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    iget-object v6, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodEnd:Ljava/sql/Timestamp;

    invoke-virtual {v6}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 330
    add-int/lit8 v0, v0, 0x1

    .line 331
    invoke-virtual {v3, v1}, Lorg/joda/time/LocalDateTime;->plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/LocalDateTime;

    move-result-object v3

    goto :goto_1

    .line 310
    .end local v0    # "count":I
    .end local v1    # "jodaPeriod":Lorg/joda/time/ReadablePeriod;
    .end local v3    # "startTime":Lorg/joda/time/LocalDateTime;
    :pswitch_0
    invoke-static {v2}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v1

    .line 311
    .restart local v1    # "jodaPeriod":Lorg/joda/time/ReadablePeriod;
    goto :goto_0

    .line 313
    .end local v1    # "jodaPeriod":Lorg/joda/time/ReadablePeriod;
    :pswitch_1
    invoke-static {v2}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object v1

    .line 314
    .restart local v1    # "jodaPeriod":Lorg/joda/time/ReadablePeriod;
    goto :goto_0

    .line 316
    .end local v1    # "jodaPeriod":Lorg/joda/time/ReadablePeriod;
    :pswitch_2
    invoke-static {v2}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v1

    .line 317
    .restart local v1    # "jodaPeriod":Lorg/joda/time/ReadablePeriod;
    goto :goto_0

    .line 319
    .end local v1    # "jodaPeriod":Lorg/joda/time/ReadablePeriod;
    :pswitch_3
    invoke-static {v2}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object v1

    .line 320
    .restart local v1    # "jodaPeriod":Lorg/joda/time/ReadablePeriod;
    goto :goto_0

    .line 322
    .end local v1    # "jodaPeriod":Lorg/joda/time/ReadablePeriod;
    :pswitch_4
    invoke-static {v2}, Lorg/joda/time/Years;->years(I)Lorg/joda/time/Years;

    move-result-object v1

    .line 323
    .restart local v1    # "jodaPeriod":Lorg/joda/time/ReadablePeriod;
    goto :goto_0

    .line 308
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

.method public getDaysLeftInCurrentPeriod()I
    .locals 6

    .prologue
    .line 195
    new-instance v2, Lorg/joda/time/LocalDateTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 196
    .local v2, "startDate":Lorg/joda/time/LocalDateTime;
    iget v3, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    add-int/lit8 v1, v3, -0x1

    .line 197
    .local v1, "interval":I
    const/4 v0, 0x0

    .line 198
    .local v0, "endDate":Lorg/joda/time/LocalDateTime;
    sget-object v3, Lorg/gnucash/android/model/Recurrence$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    iget-object v4, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodType:Lorg/gnucash/android/model/PeriodType;

    invoke-virtual {v4}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 216
    :goto_0
    invoke-static {v2, v0}, Lorg/joda/time/Days;->daysBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Days;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/Days;->getDays()I

    move-result v3

    return v3

    .line 200
    :pswitch_0
    new-instance v3, Lorg/joda/time/LocalDateTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    invoke-virtual {v3, v1}, Lorg/joda/time/LocalDateTime;->plusHours(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 201
    goto :goto_0

    .line 203
    :pswitch_1
    new-instance v3, Lorg/joda/time/LocalDateTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    invoke-virtual {v3, v1}, Lorg/joda/time/LocalDateTime;->plusDays(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 204
    goto :goto_0

    .line 206
    :pswitch_2
    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->dayOfWeek()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/joda/time/LocalDateTime;->plusWeeks(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 207
    goto :goto_0

    .line 209
    :pswitch_3
    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->dayOfMonth()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/joda/time/LocalDateTime;->plusMonths(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 210
    goto :goto_0

    .line 212
    :pswitch_4
    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->dayOfYear()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/joda/time/LocalDateTime;->plusYears(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    goto :goto_0

    .line 198
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

.method public getMultiplier()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    return v0
.end method

.method public getNumberOfPeriods(I)I
    .locals 6
    .param p1, "numberOfPeriods"    # I

    .prologue
    .line 226
    new-instance v2, Lorg/joda/time/LocalDateTime;

    iget-object v3, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodStart:Ljava/sql/Timestamp;

    invoke-virtual {v3}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 228
    .local v2, "startDate":Lorg/joda/time/LocalDateTime;
    iget v1, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    .line 230
    .local v1, "interval":I
    sget-object v3, Lorg/gnucash/android/model/Recurrence$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    iget-object v4, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodType:Lorg/gnucash/android/model/PeriodType;

    invoke-virtual {v4}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 248
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 232
    :pswitch_0
    invoke-virtual {v2, p1}, Lorg/joda/time/LocalDateTime;->plusHours(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 233
    .local v0, "endDate":Lorg/joda/time/LocalDateTime;
    invoke-static {v2, v0}, Lorg/joda/time/Hours;->hoursBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Hours;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/Hours;->getHours()I

    move-result v3

    goto :goto_0

    .line 235
    .end local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    :pswitch_1
    invoke-virtual {v2, p1}, Lorg/joda/time/LocalDateTime;->plusDays(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 236
    .restart local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    invoke-static {v2, v0}, Lorg/joda/time/Days;->daysBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Days;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/Days;->getDays()I

    move-result v3

    goto :goto_0

    .line 238
    .end local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    :pswitch_2
    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->dayOfWeek()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/joda/time/LocalDateTime;->plusWeeks(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 239
    .restart local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    invoke-static {v2, v0}, Lorg/joda/time/Weeks;->weeksBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Weeks;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/Weeks;->getWeeks()I

    move-result v3

    div-int/2addr v3, v1

    goto :goto_0

    .line 241
    .end local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    :pswitch_3
    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->dayOfMonth()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/joda/time/LocalDateTime;->plusMonths(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 242
    .restart local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    invoke-static {v2, v0}, Lorg/joda/time/Months;->monthsBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Months;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/Months;->getMonths()I

    move-result v3

    div-int/2addr v3, v1

    goto :goto_0

    .line 244
    .end local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    :pswitch_4
    invoke-virtual {v2}, Lorg/joda/time/LocalDateTime;->dayOfYear()Lorg/joda/time/LocalDateTime$Property;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/LocalDateTime$Property;->withMaximumValue()Lorg/joda/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/joda/time/LocalDateTime;->plusYears(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 245
    .restart local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    invoke-static {v2, v0}, Lorg/joda/time/Years;->yearsBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Years;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/Years;->getYears()I

    move-result v3

    div-int/2addr v3, v1

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPeriod()J
    .locals 4

    .prologue
    .line 116
    const-wide/16 v0, 0x0

    .line 117
    .local v0, "baseMillis":J
    sget-object v2, Lorg/gnucash/android/model/Recurrence$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    iget-object v3, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodType:Lorg/gnucash/android/model/PeriodType;

    invoke-virtual {v3}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 134
    :goto_0
    iget v2, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    return-wide v2

    .line 119
    :pswitch_0
    const-wide/32 v0, 0x36ee80

    .line 120
    goto :goto_0

    .line 122
    :pswitch_1
    const-wide/32 v0, 0x5265c00

    .line 123
    goto :goto_0

    .line 125
    :pswitch_2
    const-wide/32 v0, 0x240c8400

    .line 126
    goto :goto_0

    .line 128
    :pswitch_3
    const-wide v0, 0x9a7ec800L

    .line 129
    goto :goto_0

    .line 131
    :pswitch_4
    const-wide v0, 0x73df16000L

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPeriodEnd()Ljava/sql/Timestamp;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodEnd:Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getPeriodStart()Ljava/sql/Timestamp;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodStart:Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getPeriodType()Lorg/gnucash/android/model/PeriodType;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodType:Lorg/gnucash/android/model/PeriodType;

    return-object v0
.end method

.method public getRepeatString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/gnucash/android/model/Recurrence;->getFrequencyRepeatString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .local v3, "repeatBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "EEEE"

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    iget-object v6, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodStart:Ljava/sql/Timestamp;

    .line 146
    invoke-virtual {v6}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "dayOfWeek":Ljava/lang/String;
    iget-object v4, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodType:Lorg/gnucash/android/model/PeriodType;

    sget-object v5, Lorg/gnucash/android/model/PeriodType;->WEEK:Lorg/gnucash/android/model/PeriodType;

    if-ne v4, v5, :cond_0

    .line 148
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0f0164

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    .line 149
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    iget-object v4, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodEnd:Ljava/sql/Timestamp;

    if-eqz v4, :cond_1

    .line 153
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    iget-object v6, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodEnd:Ljava/sql/Timestamp;

    invoke-virtual {v6}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "endDateString":Ljava/lang/String;
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0f0165

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .end local v2    # "endDateString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getRuleString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 166
    const-string v1, ";"

    .line 168
    .local v1, "separator":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "ruleBuilder":Ljava/lang/StringBuilder;
    const-string v2, "FREQ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodType:Lorg/gnucash/android/model/PeriodType;

    invoke-virtual {v3}, Lorg/gnucash/android/model/PeriodType;->getFrequencyDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v2, "INTERVAL="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p0}, Lorg/gnucash/android/model/Recurrence;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 184
    const-string v2, "COUNT="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/gnucash/android/model/Recurrence;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_0
    iget-object v2, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodType:Lorg/gnucash/android/model/PeriodType;

    iget-object v3, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodStart:Ljava/sql/Timestamp;

    invoke-virtual {v3}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/gnucash/android/model/PeriodType;->getByParts(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTextOfCurrentPeriod(I)Ljava/lang/String;
    .locals 4
    .param p1, "periodNum"    # I

    .prologue
    .line 256
    new-instance v0, Lorg/joda/time/LocalDate;

    iget-object v1, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodStart:Ljava/sql/Timestamp;

    invoke-virtual {v1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/joda/time/LocalDate;-><init>(J)V

    .line 257
    .local v0, "startDate":Lorg/joda/time/LocalDate;
    sget-object v1, Lorg/gnucash/android/model/Recurrence$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    iget-object v2, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodType:Lorg/gnucash/android/model/PeriodType;

    invoke-virtual {v2}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 270
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 262
    :pswitch_1
    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->dayOfWeek()Lorg/joda/time/LocalDate$Property;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/LocalDate$Property;->getAsText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 264
    :pswitch_2
    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->weekOfWeekyear()Lorg/joda/time/LocalDate$Property;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/LocalDate$Property;->getAsText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 266
    :pswitch_3
    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->monthOfYear()Lorg/joda/time/LocalDate$Property;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/LocalDate$Property;->getAsText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 268
    :pswitch_4
    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->year()Lorg/joda/time/LocalDate$Property;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/LocalDate$Property;->getAsText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setByDays(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "byDays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/gnucash/android/model/Recurrence;->mByDays:Ljava/util/List;

    .line 295
    return-void
.end method

.method public setMultiplier(I)V
    .locals 0
    .param p1, "multiplier"    # I

    .prologue
    .line 418
    iput p1, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    .line 419
    return-void
.end method

.method public setPeriodEnd(I)V
    .locals 6
    .param p1, "numberOfOccurences"    # I

    .prologue
    .line 361
    new-instance v1, Lorg/joda/time/LocalDateTime;

    iget-object v3, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodStart:Ljava/sql/Timestamp;

    invoke-virtual {v3}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 363
    .local v1, "localDate":Lorg/joda/time/LocalDateTime;
    iget v3, p0, Lorg/gnucash/android/model/Recurrence;->mMultiplier:I

    mul-int v2, p1, v3

    .line 364
    .local v2, "occurrenceDuration":I
    sget-object v3, Lorg/gnucash/android/model/Recurrence$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    iget-object v4, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodType:Lorg/gnucash/android/model/PeriodType;

    invoke-virtual {v4}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 376
    :pswitch_0
    invoke-virtual {v1, v2}, Lorg/joda/time/LocalDateTime;->plusMonths(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 382
    .local v0, "endDate":Lorg/joda/time/LocalDateTime;
    :goto_0
    new-instance v3, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->toDateTime()Lorg/joda/time/DateTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    iput-object v3, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodEnd:Ljava/sql/Timestamp;

    .line 383
    return-void

    .line 366
    .end local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    :pswitch_1
    invoke-virtual {v1, v2}, Lorg/joda/time/LocalDateTime;->plusHours(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 367
    .restart local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    goto :goto_0

    .line 369
    .end local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    :pswitch_2
    invoke-virtual {v1, v2}, Lorg/joda/time/LocalDateTime;->plusDays(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 370
    .restart local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    goto :goto_0

    .line 372
    .end local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    :pswitch_3
    invoke-virtual {v1, v2}, Lorg/joda/time/LocalDateTime;->plusWeeks(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .line 373
    .restart local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    goto :goto_0

    .line 379
    .end local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    :pswitch_4
    invoke-virtual {v1, v2}, Lorg/joda/time/LocalDateTime;->plusYears(I)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    .restart local v0    # "endDate":Lorg/joda/time/LocalDateTime;
    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setPeriodEnd(Ljava/sql/Timestamp;)V
    .locals 0
    .param p1, "endTimestamp"    # Ljava/sql/Timestamp;

    .prologue
    .line 398
    iput-object p1, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodEnd:Ljava/sql/Timestamp;

    .line 399
    return-void
.end method

.method public setPeriodStart(Ljava/sql/Timestamp;)V
    .locals 0
    .param p1, "periodStart"    # Ljava/sql/Timestamp;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodStart:Ljava/sql/Timestamp;

    .line 105
    return-void
.end method

.method public setPeriodType(Lorg/gnucash/android/model/PeriodType;)V
    .locals 0
    .param p1, "periodType"    # Lorg/gnucash/android/model/PeriodType;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/gnucash/android/model/Recurrence;->mPeriodType:Lorg/gnucash/android/model/PeriodType;

    .line 89
    return-void
.end method
