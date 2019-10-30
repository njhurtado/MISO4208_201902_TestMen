.class public Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;
.super Lorg/gnucash/android/db/adapter/DatabaseAdapter;
.source "RecurrenceDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/gnucash/android/db/adapter/DatabaseAdapter",
        "<",
        "Lorg/gnucash/android/model/Recurrence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 47
    const-string v0, "recurrences"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "recurrence_mult"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "recurrence_period_type"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "recurrence_byday"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "recurrence_period_start"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "recurrence_period_end"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/gnucash/android/db/adapter/DatabaseAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private static byDaysToString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "byDays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 109
    .local v1, "day":I
    packed-switch v1, :pswitch_data_0

    .line 132
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad day of week: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :pswitch_0
    const-string v2, "MO"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :goto_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    :pswitch_1
    const-string v2, "TU"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 117
    :pswitch_2
    const-string v2, "WE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 120
    :pswitch_3
    const-string v2, "TH"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    :pswitch_4
    const-string v2, "FR"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 126
    :pswitch_5
    const-string v2, "SA"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 129
    :pswitch_6
    const-string v2, "SU"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 136
    .end local v1    # "day":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getInstance()Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getRecurrenceDbAdapter()Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static stringToByDays(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "byDaysString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    if-nez p0, :cond_1

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 179
    :cond_0
    return-object v0

    .line 151
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "byDaysList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v8, v3

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v1, v9, v8

    .line 153
    .local v1, "day":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 176
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad day of week: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :sswitch_0
    const-string v11, "MO"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v2, v3

    goto :goto_1

    :sswitch_1
    const-string v11, "TU"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v2, v4

    goto :goto_1

    :sswitch_2
    const-string v11, "WE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v2, v5

    goto :goto_1

    :sswitch_3
    const-string v11, "TH"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v2, v6

    goto :goto_1

    :sswitch_4
    const-string v11, "FR"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v2, v7

    goto :goto_1

    :sswitch_5
    const-string v11, "SA"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v11, "SU"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v2, 0x6

    goto :goto_1

    .line 155
    :pswitch_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :goto_2
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :pswitch_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 164
    :pswitch_3
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 167
    :pswitch_4
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 170
    :pswitch_5
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 173
    :pswitch_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x8cc -> :sswitch_4
        0x9a2 -> :sswitch_0
        0xa4e -> :sswitch_5
        0xa62 -> :sswitch_6
        0xa74 -> :sswitch_3
        0xa81 -> :sswitch_1
        0xace -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/BaseModel;
    .locals 1
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Recurrence;

    move-result-object v0

    return-object v0
.end method

.method public buildModelInstance(Landroid/database/Cursor;)Lorg/gnucash/android/model/Recurrence;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    const-string v8, "recurrence_period_type"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "type":Ljava/lang/String;
    const-string v8, "recurrence_mult"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 64
    .local v2, "multiplier":J
    const-string v8, "recurrence_period_start"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "periodStart":Ljava/lang/String;
    const-string v8, "recurrence_period_end"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "periodEnd":Ljava/lang/String;
    const-string v8, "recurrence_byday"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "byDays":Ljava/lang/String;
    invoke-static {v7}, Lorg/gnucash/android/model/PeriodType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/PeriodType;

    move-result-object v5

    .line 70
    .local v5, "periodType":Lorg/gnucash/android/model/PeriodType;
    new-instance v6, Lorg/gnucash/android/model/Recurrence;

    invoke-direct {v6, v5}, Lorg/gnucash/android/model/Recurrence;-><init>(Lorg/gnucash/android/model/PeriodType;)V

    .line 71
    .local v6, "recurrence":Lorg/gnucash/android/model/Recurrence;
    long-to-int v8, v2

    invoke-virtual {v6, v8}, Lorg/gnucash/android/model/Recurrence;->setMultiplier(I)V

    .line 72
    invoke-static {v4}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/gnucash/android/model/Recurrence;->setPeriodStart(Ljava/sql/Timestamp;)V

    .line 73
    if-eqz v1, :cond_0

    .line 74
    invoke-static {v1}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/gnucash/android/model/Recurrence;->setPeriodEnd(Ljava/sql/Timestamp;)V

    .line 75
    :cond_0
    invoke-static {v0}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->stringToByDays(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/gnucash/android/model/Recurrence;->setByDays(Ljava/util/List;)V

    .line 77
    invoke-virtual {p0, p1, v6}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->populateBaseModelAttributes(Landroid/database/Cursor;Lorg/gnucash/android/model/BaseModel;)V

    .line 79
    return-object v6
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
    check-cast p2, Lorg/gnucash/android/model/Recurrence;

    invoke-virtual {p0, p1, p2}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Recurrence;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected setBindings(Landroid/database/sqlite/SQLiteStatement;Lorg/gnucash/android/model/Recurrence;)Landroid/database/sqlite/SQLiteStatement;
    .locals 4
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "recurrence"    # Lorg/gnucash/android/model/Recurrence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p2}, Lorg/gnucash/android/model/Recurrence;->getMultiplier()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 86
    const/4 v0, 0x2

    invoke-virtual {p2}, Lorg/gnucash/android/model/Recurrence;->getPeriodType()Lorg/gnucash/android/model/PeriodType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/model/PeriodType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Lorg/gnucash/android/model/Recurrence;->getByDays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x3

    invoke-virtual {p2}, Lorg/gnucash/android/model/Recurrence;->getByDays()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/gnucash/android/db/adapter/RecurrenceDbAdapter;->byDaysToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 90
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p2}, Lorg/gnucash/android/model/Recurrence;->getPeriodStart()Ljava/sql/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Lorg/gnucash/android/model/Recurrence;->getPeriodEnd()Ljava/sql/Timestamp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    const/4 v0, 0x5

    invoke-virtual {p2}, Lorg/gnucash/android/model/Recurrence;->getPeriodEnd()Ljava/sql/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p2}, Lorg/gnucash/android/model/Recurrence;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 96
    return-object p1
.end method
