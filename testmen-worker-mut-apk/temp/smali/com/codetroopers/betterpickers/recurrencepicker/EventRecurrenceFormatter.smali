.class public Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;
.super Ljava/lang/Object;
.source "EventRecurrenceFormatter.java"


# static fields
.field private static mMonthRepeatByDayOfWeekIds:[I

.field private static mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheMonthRepeatStrings(Landroid/content/res/Resources;I)V
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "weekday"    # I

    .prologue
    const/4 v3, 0x7

    .line 125
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekIds:[I

    if-nez v0, :cond_0

    .line 126
    new-array v0, v3, [I

    sput-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekIds:[I

    .line 127
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x0

    sget v2, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_sun:I

    aput v2, v0, v1

    .line 128
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x1

    sget v2, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_mon:I

    aput v2, v0, v1

    .line 129
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x2

    sget v2, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_tues:I

    aput v2, v0, v1

    .line 130
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x3

    sget v2, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_wed:I

    aput v2, v0, v1

    .line 131
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x4

    sget v2, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_thurs:I

    aput v2, v0, v1

    .line 132
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x5

    sget v2, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_fri:I

    aput v2, v0, v1

    .line 133
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x6

    sget v2, Lcom/codetroopers/betterpickers/R$array;->repeat_by_nth_sat:I

    aput v2, v0, v1

    .line 135
    :cond_0
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 136
    new-array v0, v3, [[Ljava/lang/String;

    sput-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    .line 138
    :cond_1
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 139
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    sget-object v1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekIds:[I

    aget v1, v1, p1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 141
    :cond_2
    return-void
.end method

.method private static dayToString(II)Ljava/lang/String;
    .locals 1
    .param p0, "day"    # I
    .param p1, "dayOfWeekLength"    # I

    .prologue
    .line 150
    invoke-static {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->dayToUtilDay(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dayToUtilDay(I)I
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 160
    sparse-switch p0, :sswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :sswitch_0
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    .line 164
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 166
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 168
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 170
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 172
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 174
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getRepeatString(Landroid/content/Context;Landroid/content/res/Resources;Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;Z)Ljava/lang/String;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "recurrence"    # Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;
    .param p3, "includeEndString"    # Z

    .prologue
    .line 35
    const-string v11, ""

    .line 36
    .local v11, "endString":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 37
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v14, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 40
    :try_start_0
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 41
    .local v16, "time":Landroid/text/format/Time;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 42
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    const/high16 v20, 0x20000

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "dateStr":Ljava/lang/String;
    sget v18, Lcom/codetroopers/betterpickers/R$string;->endByDate:I

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v5, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v5    # "dateStr":Ljava/lang/String;
    .end local v16    # "time":Landroid/text/format/Time;
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    move/from16 v18, v0

    if-lez v18, :cond_1

    .line 49
    sget v18, Lcom/codetroopers/betterpickers/R$plurals;->endByCount:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    move/from16 v22, v0

    .line 50
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    .line 49
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 56
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->interval:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    const/4 v13, 0x1

    .line 57
    .local v13, "interval":I
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 121
    const/16 v18, 0x0

    :goto_2
    return-object v18

    .line 56
    .end local v13    # "interval":I
    :cond_3
    move-object/from16 v0, p2

    iget v13, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->interval:I

    goto :goto_1

    .line 59
    .restart local v13    # "interval":I
    :pswitch_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget v19, Lcom/codetroopers/betterpickers/R$plurals;->hourly:I

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 61
    :pswitch_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget v19, Lcom/codetroopers/betterpickers/R$plurals;->daily:I

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 63
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 64
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget v19, Lcom/codetroopers/betterpickers/R$string;->every_weekday:I

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 68
    :cond_4
    const/16 v8, 0x14

    .line 69
    .local v8, "dayOfWeekLength":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 70
    const/16 v8, 0xa

    .line 73
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v9, "days":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    move/from16 v18, v0

    if-lez v18, :cond_7

    .line 79
    move-object/from16 v0, p2

    iget v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    move/from16 v18, v0

    add-int/lit8 v4, v18, -0x1

    .line 80
    .local v4, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v4, :cond_6

    .line 81
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    move-object/from16 v18, v0

    aget v18, v18, v12

    move/from16 v0, v18

    invoke-static {v0, v8}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->dayToString(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v18, ", "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 84
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    move/from16 v0, v18

    invoke-static {v0, v8}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->dayToString(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 99
    .end local v4    # "count":I
    .end local v12    # "i":I
    .local v15, "string":Ljava/lang/String;
    :goto_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget v19, Lcom/codetroopers/betterpickers/R$plurals;->weekly:I

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 92
    .end local v15    # "string":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->startDate:Landroid/text/format/Time;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 93
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 96
    :cond_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->startDate:Landroid/text/format/Time;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->timeDay2Day(I)I

    move-result v6

    .line 97
    .local v6, "day":I
    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-static {v6, v0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->dayToString(II)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "string":Ljava/lang/String;
    goto :goto_4

    .line 103
    .end local v6    # "day":I
    .end local v8    # "dayOfWeekLength":I
    .end local v9    # "days":Ljava/lang/StringBuilder;
    .end local v15    # "string":Ljava/lang/String;
    :pswitch_3
    const-string v10, ""

    .line 104
    .local v10, "details":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 105
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->day2CalendarDay(I)I

    move-result v18

    add-int/lit8 v17, v18, -0x1

    .line 107
    .local v17, "weekday":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->cacheMonthRepeatStrings(Landroid/content/res/Resources;I)V

    .line 109
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v7, v18, v19

    .line 110
    .local v7, "dayNumber":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_9

    .line 111
    const/4 v7, 0x5

    .line 113
    :cond_9
    sget-object v18, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrenceFormatter;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    aget-object v18, v18, v17

    add-int/lit8 v19, v7, -0x1

    aget-object v10, v18, v19

    .line 115
    .end local v7    # "dayNumber":I
    .end local v17    # "weekday":I
    :cond_a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget v19, Lcom/codetroopers/betterpickers/R$plurals;->monthly:I

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v10, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 118
    .end local v10    # "details":Ljava/lang/String;
    :pswitch_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget v19, Lcom/codetroopers/betterpickers/R$plurals;->yearly_plain:I

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, ""

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 44
    .end local v13    # "interval":I
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v18

    goto/16 :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
