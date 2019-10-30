.class public Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
.super Ljava/lang/Object;
.source "TimeZoneInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final DST_SYMBOL_COLOR:I = -0x404041

.field private static final GMT_TEXT_COLOR:I = -0x777778

.field public static NUM_OF_TRANSITIONS:I = 0x0

.field private static final SEPARATOR:C = ','

.field private static final TAG:Ljava/lang/String;

.field public static is24HourFormat:Z

.field private static mFormatter:Ljava/util/Formatter;

.field private static mGmtDisplayNameCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static mGmtDisplayNameUpdateTime:J

.field private static mSB:Ljava/lang/StringBuilder;

.field private static final mSpannableFactory:Landroid/text/Spannable$Factory;

.field public static time:J


# instance fields
.field public groupId:I

.field public mCountry:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field mLocalTimeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLocalTimeCacheReferenceTime:J

.field mRawoffset:I

.field public mTransitions:[J

.field mTz:Ljava/util/TimeZone;

.field public mTzId:Ljava/lang/String;

.field private recycledTime:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x6

    sput v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->NUM_OF_TRANSITIONS:I

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->time:J

    .line 47
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    sput-object v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    .line 58
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mFormatter:Ljava/util/Formatter;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mGmtDisplayNameCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 4
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    .line 74
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mLocalTimeCache:Landroid/util/SparseArray;

    .line 75
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mLocalTimeCacheReferenceTime:J

    .line 61
    iput-object p1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    .line 62
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    iput v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mRawoffset:I

    .line 67
    :try_start_0
    sget-wide v2, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->time:J

    invoke-static {p1, v2, v3}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->getTransitions(Ljava/util/TimeZone;J)[J

    move-result-object v1

    iput-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTransitions:[J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ignored":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0    # "ignored":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static copyFromIntArray([I)[J
    .locals 4
    .param p0, "source"    # [I

    .prologue
    .line 228
    if-nez p0, :cond_1

    .line 229
    const/4 v2, 0x0

    new-array v0, v2, [J

    .line 235
    :cond_0
    return-object v0

    .line 231
    :cond_1
    array-length v2, p0

    new-array v0, v2, [J

    .line 232
    .local v0, "dest":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 233
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static formatTime(Ljava/text/DateFormat;I)Ljava/lang/String;
    .locals 6
    .param p0, "df"    # Ljava/text/DateFormat;
    .param p1, "s"    # I

    .prologue
    .line 321
    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 322
    .local v0, "ms":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getTransitions(Ljava/util/TimeZone;J)[J
    .locals 11
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 202
    .local v6, "zoneInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "mTransitions"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 203
    .local v1, "mTransitionsField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 205
    const/4 v5, 0x0

    .line 206
    .local v5, "transitions":[J
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_0

    .line 207
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    move-object v4, v7

    check-cast v4, [J

    .line 211
    .local v4, "objTransitions":[J
    :goto_0
    array-length v7, v4

    if-eqz v7, :cond_2

    .line 212
    sget v7, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->NUM_OF_TRANSITIONS:I

    new-array v5, v7, [J

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "numOfTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, v4

    if-ge v0, v7, :cond_2

    .line 215
    aget-wide v8, v4, v0

    cmp-long v7, v8, p1

    if-gez v7, :cond_1

    .line 214
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    .end local v0    # "i":I
    .end local v2    # "numOfTransitions":I
    .end local v4    # "objTransitions":[J
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    check-cast v7, [I

    invoke-static {v7}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->copyFromIntArray([I)[J

    move-result-object v4

    .restart local v4    # "objTransitions":[J
    goto :goto_0

    .line 218
    .restart local v0    # "i":I
    .restart local v2    # "numOfTransitions":I
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numOfTransitions":I
    .local v3, "numOfTransitions":I
    aget-wide v8, v4, v0

    aput-wide v8, v5, v2

    .line 219
    sget v7, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->NUM_OF_TRANSITIONS:I

    if-ne v3, v7, :cond_3

    .line 224
    .end local v0    # "i":I
    .end local v3    # "numOfTransitions":I
    :cond_2
    return-object v5

    .restart local v0    # "i":I
    .restart local v3    # "numOfTransitions":I
    :cond_3
    move v2, v3

    .end local v3    # "numOfTransitions":I
    .restart local v2    # "numOfTransitions":I
    goto :goto_2
.end method


# virtual methods
.method public compareTo(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)I
    .locals 5
    .param p1, "other"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 332
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->getNowOffsetMillis()I

    move-result v3

    invoke-virtual {p1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->getNowOffsetMillis()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 333
    invoke-virtual {p1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->getNowOffsetMillis()I

    move-result v3

    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->getNowOffsetMillis()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 333
    goto :goto_0

    .line 337
    :cond_2
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 338
    iget-object v3, p1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v1, v2

    .line 339
    goto :goto_0

    .line 343
    :cond_3
    iget-object v2, p1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 346
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    iget-object v2, p1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 348
    .local v0, "diff":I
    if-eqz v0, :cond_4

    move v1, v0

    .line 349
    goto :goto_0

    .line 353
    :cond_4
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTransitions:[J

    iget-object v2, p1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTransitions:[J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 354
    sget-object v1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not expected to be comparing tz with the same country, same offset, same dst, same transitions:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 355
    invoke-virtual {p0}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_5
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 360
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    iget-object v2, p1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 363
    :cond_6
    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    .line 364
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    check-cast p1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->compareTo(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getGmtDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v8, 0xea60

    div-long v18, v4, v8

    .line 142
    .local v18, "nowMinute":J
    const-wide/32 v4, 0xea60

    mul-long v6, v18, v4

    .line 143
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v15

    .line 146
    .local v15, "gmtOffset":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v17

    .line 147
    .local v17, "hasFutureDST":Z
    if-eqz v17, :cond_4

    .line 148
    int-to-long v4, v15

    const-wide/32 v8, 0x7b98a00

    add-long/2addr v4, v8

    long-to-int v12, v4

    .line 153
    .local v12, "cacheKey":I
    :goto_0
    const/4 v13, 0x0

    .line 154
    .local v13, "displayName":Ljava/lang/CharSequence;
    sget-wide v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mGmtDisplayNameUpdateTime:J

    cmp-long v4, v4, v18

    if-eqz v4, :cond_5

    .line 155
    sput-wide v18, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mGmtDisplayNameUpdateTime:J

    .line 156
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mGmtDisplayNameCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 161
    :goto_1
    if-nez v13, :cond_3

    .line 162
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 163
    const/high16 v10, 0x80000

    .line 164
    .local v10, "flags":I
    or-int/lit8 v10, v10, 0x1

    .line 165
    sget-boolean v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->is24HourFormat:Z

    if-eqz v4, :cond_0

    .line 166
    or-int/lit16 v10, v10, 0x80

    .line 170
    :cond_0
    sget-object v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    move-object/from16 v4, p1

    move-wide v8, v6

    invoke-static/range {v4 .. v11}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 171
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    .line 173
    .local v16, "gmtStart":I
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-static {v4, v15}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->appendGmtOffset(Ljava/lang/StringBuilder;I)V

    .line 174
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    .line 176
    .local v14, "gmtEnd":I
    const/16 v22, 0x0

    .line 177
    .local v22, "symbolStart":I
    const/16 v21, 0x0

    .line 178
    .local v21, "symbolEnd":I
    if-eqz v17, :cond_1

    .line 179
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    .line 181
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZonePickerUtils;->getDstSymbol()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    .line 186
    :cond_1
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSpannableFactory:Landroid/text/Spannable$Factory;

    sget-object v5, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mSB:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v20

    .line 187
    .local v20, "spannableText":Landroid/text/Spannable;
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v5, -0x777778

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v4, v1, v14, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 190
    if-eqz v17, :cond_2

    .line 191
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v5, -0x404041

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-interface {v0, v4, v1, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 194
    :cond_2
    move-object/from16 v13, v20

    .line 195
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mGmtDisplayNameCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local v10    # "flags":I
    .end local v14    # "gmtEnd":I
    .end local v16    # "gmtStart":I
    .end local v20    # "spannableText":Landroid/text/Spannable;
    .end local v21    # "symbolEnd":I
    .end local v22    # "symbolStart":I
    :cond_3
    monitor-exit p0

    return-object v13

    .line 150
    .end local v12    # "cacheKey":I
    .end local v13    # "displayName":Ljava/lang/CharSequence;
    :cond_4
    int-to-long v4, v15

    const-wide/32 v8, 0x7b98a00

    sub-long/2addr v4, v8

    long-to-int v12, v4

    .restart local v12    # "cacheKey":I
    goto/16 :goto_0

    .line 158
    .restart local v13    # "displayName":Ljava/lang/CharSequence;
    :cond_5
    :try_start_1
    sget-object v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mGmtDisplayNameCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "displayName":Ljava/lang/CharSequence;
    check-cast v13, Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v13    # "displayName":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 141
    .end local v6    # "now":J
    .end local v12    # "cacheKey":I
    .end local v13    # "displayName":Ljava/lang/CharSequence;
    .end local v15    # "gmtOffset":I
    .end local v17    # "hasFutureDST":Z
    .end local v18    # "nowMinute":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getLocalHr(J)I
    .locals 3
    .param p1, "referenceTime"    # J

    .prologue
    .line 122
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 124
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    return v0
.end method

.method public getLocalTime(J)Ljava/lang/String;
    .locals 7
    .param p1, "referenceTime"    # J

    .prologue
    .line 81
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 82
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    invoke-virtual {v4, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 84
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    mul-int/lit16 v4, v4, 0x16e

    iget-object v5, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->yearDay:I

    add-int v0, v4, v5

    .line 86
    .local v0, "currYearDay":I
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    iput-object v5, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 87
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    invoke-virtual {v4, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 89
    const/4 v3, 0x0

    .line 91
    .local v3, "localTimeStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->minute:I

    add-int v2, v4, v5

    .line 94
    .local v2, "hourMinute":I
    iget-wide v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mLocalTimeCacheReferenceTime:J

    cmp-long v4, v4, p1

    if-eqz v4, :cond_2

    .line 95
    iput-wide p1, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mLocalTimeCacheReferenceTime:J

    .line 96
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mLocalTimeCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 101
    :goto_0
    if-nez v3, :cond_1

    .line 102
    const-string v1, "%I:%M %p"

    .line 103
    .local v1, "format":Ljava/lang/String;
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    mul-int/lit16 v4, v4, 0x16e

    iget-object v5, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->yearDay:I

    add-int/2addr v4, v5

    if-eq v0, v4, :cond_4

    .line 104
    sget-boolean v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->is24HourFormat:Z

    if-eqz v4, :cond_3

    .line 105
    const-string v1, "%b %d %H:%M"

    .line 114
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->recycledTime:Landroid/text/format/Time;

    invoke-virtual {v4, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mLocalTimeCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    .end local v1    # "format":Ljava/lang/String;
    :cond_1
    return-object v3

    .line 98
    :cond_2
    iget-object v4, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mLocalTimeCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "localTimeStr":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "localTimeStr":Ljava/lang/String;
    goto :goto_0

    .line 107
    .restart local v1    # "format":Ljava/lang/String;
    :cond_3
    const-string v1, "%b %d %I:%M %p"

    goto :goto_1

    .line 109
    :cond_4
    sget-boolean v4, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->is24HourFormat:Z

    if-eqz v4, :cond_0

    .line 110
    const-string v1, "%H:%M"

    goto :goto_1
.end method

.method public getNowOffsetMillis()I
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    return v0
.end method

.method public hasSameRules(Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;)Z
    .locals 2
    .param p1, "tzi"    # Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;

    .prologue
    .line 241
    iget v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mRawoffset:I

    iget v1, p1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mRawoffset:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTransitions:[J

    iget-object v1, p1, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTransitions:[J

    .line 242
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    .line 242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x4a5bba00    # 3600000.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x2c

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mCountry:Ljava/lang/String;

    .line 250
    .local v0, "country":Ljava/lang/String;
    iget-object v2, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTz:Ljava/util/TimeZone;

    .line 252
    .local v2, "tz":Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v2, v4, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v2}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    invoke-virtual {v2, v5, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2, v5, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    const-wide v4, 0x13bf5fb8600L

    invoke-virtual {p0, v4, v5}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->getLocalTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    const-wide v4, 0x13d6debc200L

    invoke-virtual {p0, v4, v5}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->getLocalTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    const-wide v4, 0x13f9a1a9200L

    invoke-virtual {p0, v4, v5}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->getLocalTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    const-wide v4, 0x1421388c600L

    invoke-virtual {p0, v4, v5}, Lcom/codetroopers/betterpickers/timezonepicker/TimeZoneInfo;->getLocalTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 263
    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
