.class public Lorg/gnucash/android/ui/util/RecurrenceParser;
.super Ljava/lang/Object;
.source "RecurrenceParser.java"


# static fields
.field public static final DAY_MILLIS:J = 0x5265c00L

.field public static final HOUR_MILLIS:J = 0x36ee80L

.field public static final MINUTE_MILLIS:J = 0xea60L

.field public static final MONTH_MILLIS:J = 0x9a7ec800L

.field public static final SECOND_MILLIS:J = 0x3e8L

.field public static final WEEK_MILLIS:J = 0x240c8400L

.field public static final YEAR_MILLIS:J = 0x73df16000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;)Lorg/gnucash/android/model/Recurrence;
    .locals 6
    .param p0, "eventRecurrence"    # Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    .prologue
    .line 57
    if-nez p0, :cond_1

    .line 58
    const/4 v2, 0x0

    .line 95
    :cond_0
    :goto_0
    return-object v2

    .line 61
    :cond_1
    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    packed-switch v3, :pswitch_data_0

    .line 83
    sget-object v1, Lorg/gnucash/android/model/PeriodType;->MONTH:Lorg/gnucash/android/model/PeriodType;

    .line 87
    .local v1, "periodType":Lorg/gnucash/android/model/PeriodType;
    :goto_1
    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->interval:I

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 88
    .local v0, "interval":I
    :goto_2
    new-instance v2, Lorg/gnucash/android/model/Recurrence;

    invoke-direct {v2, v1}, Lorg/gnucash/android/model/Recurrence;-><init>(Lorg/gnucash/android/model/PeriodType;)V

    .line 89
    .local v2, "recurrence":Lorg/gnucash/android/model/Recurrence;
    invoke-virtual {v2, v0}, Lorg/gnucash/android/model/Recurrence;->setMultiplier(I)V

    .line 90
    invoke-static {p0, v2}, Lorg/gnucash/android/ui/util/RecurrenceParser;->parseEndTime(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;Lorg/gnucash/android/model/Recurrence;)V

    .line 91
    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    invoke-static {v3}, Lorg/gnucash/android/ui/util/RecurrenceParser;->parseByDay([I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/Recurrence;->setByDays(Ljava/util/List;)V

    .line 92
    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-eqz v3, :cond_0

    .line 93
    new-instance v3, Ljava/sql/Timestamp;

    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->startDate:Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/gnucash/android/model/Recurrence;->setPeriodStart(Ljava/sql/Timestamp;)V

    goto :goto_0

    .line 63
    .end local v0    # "interval":I
    .end local v1    # "periodType":Lorg/gnucash/android/model/PeriodType;
    .end local v2    # "recurrence":Lorg/gnucash/android/model/Recurrence;
    :pswitch_0
    sget-object v1, Lorg/gnucash/android/model/PeriodType;->HOUR:Lorg/gnucash/android/model/PeriodType;

    .line 64
    .restart local v1    # "periodType":Lorg/gnucash/android/model/PeriodType;
    goto :goto_1

    .line 67
    .end local v1    # "periodType":Lorg/gnucash/android/model/PeriodType;
    :pswitch_1
    sget-object v1, Lorg/gnucash/android/model/PeriodType;->DAY:Lorg/gnucash/android/model/PeriodType;

    .line 68
    .restart local v1    # "periodType":Lorg/gnucash/android/model/PeriodType;
    goto :goto_1

    .line 71
    .end local v1    # "periodType":Lorg/gnucash/android/model/PeriodType;
    :pswitch_2
    sget-object v1, Lorg/gnucash/android/model/PeriodType;->WEEK:Lorg/gnucash/android/model/PeriodType;

    .line 72
    .restart local v1    # "periodType":Lorg/gnucash/android/model/PeriodType;
    goto :goto_1

    .line 75
    .end local v1    # "periodType":Lorg/gnucash/android/model/PeriodType;
    :pswitch_3
    sget-object v1, Lorg/gnucash/android/model/PeriodType;->MONTH:Lorg/gnucash/android/model/PeriodType;

    .line 76
    .restart local v1    # "periodType":Lorg/gnucash/android/model/PeriodType;
    goto :goto_1

    .line 79
    .end local v1    # "periodType":Lorg/gnucash/android/model/PeriodType;
    :pswitch_4
    sget-object v1, Lorg/gnucash/android/model/PeriodType;->YEAR:Lorg/gnucash/android/model/PeriodType;

    .line 80
    .restart local v1    # "periodType":Lorg/gnucash/android/model/PeriodType;
    goto :goto_1

    .line 87
    :cond_2
    iget v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->interval:I

    goto :goto_2

    .line 61
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static parseByDay([I)Ljava/util/List;
    .locals 5
    .param p0, "byDay"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    if-nez p0, :cond_1

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 133
    :cond_0
    return-object v0

    .line 128
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .local v0, "byDaysList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 130
    .local v1, "day":I
    invoke-static {v1}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->day2CalendarDay(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static parseEndTime(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;Lorg/gnucash/android/model/Recurrence;)V
    .locals 4
    .param p0, "eventRecurrence"    # Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;
    .param p1, "recurrence"    # Lorg/gnucash/android/model/Recurrence;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 106
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 107
    .local v0, "endTime":Landroid/text/format/Time;
    iget-object v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 108
    new-instance v1, Ljava/sql/Timestamp;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p1, v1}, Lorg/gnucash/android/model/Recurrence;->setPeriodEnd(Ljava/sql/Timestamp;)V

    .line 112
    .end local v0    # "endTime":Landroid/text/format/Time;
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    if-lez v1, :cond_0

    .line 110
    iget v1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    invoke-virtual {p1, v1}, Lorg/gnucash/android/model/Recurrence;->setPeriodEnd(I)V

    goto :goto_0
.end method
