.class final Lcom/dropbox/core/stone/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final DATE_TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field public static final JSON:Lcom/fasterxml/jackson/core/JsonFactory;

.field private static final LONG_FORMAT_LENGTH:I

.field private static final SHORT_FORMAT_LENGTH:I

.field private static final UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/Util;->JSON:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 15
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/stone/Util;->UTC:Ljava/util/TimeZone;

    .line 18
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    const-string v1, "\'"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/dropbox/core/stone/Util;->LONG_FORMAT_LENGTH:I

    .line 19
    const-string v0, "yyyy-MM-dd"

    const-string v1, "\'"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/dropbox/core/stone/Util;->SHORT_FORMAT_LENGTH:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "format":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/dropbox/core/stone/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 24
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseTimestamp(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "timestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 30
    .local v1, "length":I
    const/4 v0, 0x0

    .line 31
    .local v0, "format":Ljava/text/DateFormat;
    sget v2, Lcom/dropbox/core/stone/Util;->LONG_FORMAT_LENGTH:I

    if-ne v1, v2, :cond_0

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "format":Ljava/text/DateFormat;
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 39
    .restart local v0    # "format":Ljava/text/DateFormat;
    :goto_0
    new-instance v2, Ljava/util/GregorianCalendar;

    sget-object v3, Lcom/dropbox/core/stone/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 40
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 33
    :cond_0
    sget v2, Lcom/dropbox/core/stone/Util;->SHORT_FORMAT_LENGTH:I

    if-ne v1, v2, :cond_1

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "format":Ljava/text/DateFormat;
    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "format":Ljava/text/DateFormat;
    goto :goto_0

    .line 36
    :cond_1
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timestamp has unexpected format: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method
