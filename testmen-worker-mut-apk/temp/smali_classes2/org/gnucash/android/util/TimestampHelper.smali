.class public final Lorg/gnucash/android/util/TimestampHelper;
.super Ljava/lang/Object;
.source "TimestampHelper.java"


# static fields
.field public static final EPOCH_ZERO_TIMESTAMP:Ljava/sql/Timestamp;

.field private static final UTC_DATE_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

.field private static final UTC_DATE_WITH_MILLISECONDS_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

.field private static final UTC_TIME_ZONE:Lorg/joda/time/DateTimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Ljava/sql/Timestamp;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    sput-object v0, Lorg/gnucash/android/util/TimestampHelper;->EPOCH_ZERO_TIMESTAMP:Ljava/sql/Timestamp;

    .line 40
    const-string v0, "UTC"

    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/util/TimestampHelper;->UTC_TIME_ZONE:Lorg/joda/time/DateTimeZone;

    .line 41
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 42
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/util/TimestampHelper;->UTC_DATE_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    .line 43
    const-string v0, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 44
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/gnucash/android/util/TimestampHelper;->UTC_DATE_WITH_MILLISECONDS_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimestampFromEpochZero()Ljava/sql/Timestamp;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lorg/gnucash/android/util/TimestampHelper;->EPOCH_ZERO_TIMESTAMP:Ljava/sql/Timestamp;

    return-object v0
.end method

.method public static getTimestampFromNow()Ljava/sql/Timestamp;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0
.end method

.method public static getTimestampFromUtcString(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 6
    .param p0, "utcString"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    sget-object v3, Lorg/gnucash/android/util/TimestampHelper;->UTC_DATE_WITH_MILLISECONDS_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    sget-object v4, Lorg/gnucash/android/util/TimestampHelper;->UTC_TIME_ZONE:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v3, v4}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 78
    .local v0, "dateTime":Lorg/joda/time/DateTime;
    new-instance v3, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-object v3

    .line 80
    .end local v0    # "dateTime":Lorg/joda/time/DateTime;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "firstException":Ljava/lang/IllegalArgumentException;
    :try_start_1
    sget-object v3, Lorg/gnucash/android/util/TimestampHelper;->UTC_DATE_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    sget-object v4, Lorg/gnucash/android/util/TimestampHelper;->UTC_TIME_ZONE:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v3, v4}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 84
    .restart local v0    # "dateTime":Lorg/joda/time/DateTime;
    new-instance v3, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 86
    .end local v0    # "dateTime":Lorg/joda/time/DateTime;
    :catch_1
    move-exception v2

    .line 90
    .local v2, "secondException":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown utcString = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;
    .locals 4
    .param p0, "timestamp"    # Ljava/sql/Timestamp;

    .prologue
    .line 54
    sget-object v0, Lorg/gnucash/android/util/TimestampHelper;->UTC_DATE_WITH_MILLISECONDS_FORMAT:Lorg/joda/time/format/DateTimeFormatter;

    sget-object v1, Lorg/gnucash/android/util/TimestampHelper;->UTC_TIME_ZONE:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->print(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
