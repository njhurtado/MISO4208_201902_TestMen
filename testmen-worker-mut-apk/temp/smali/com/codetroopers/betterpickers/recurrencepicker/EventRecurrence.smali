.class public Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseWkst;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseBySetPos;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByMonth;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByWeekNo;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByYearDay;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByMonthDay;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByDay;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByHour;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByMinute;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseBySecond;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseInterval;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseCount;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseUntil;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseFreq;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$PartParser;,
        Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$InvalidFormatException;
    }
.end annotation


# static fields
.field private static final ALLOW_LOWER_CASE:Z = true

.field public static final DAILY:I = 0x4

.field public static final FR:I = 0x200000

.field public static final HOURLY:I = 0x3

.field public static final MINUTELY:I = 0x2

.field public static final MO:I = 0x20000

.field public static final MONTHLY:I = 0x6

.field private static final ONLY_ONE_UNTIL_COUNT:Z = false

.field private static final PARSED_BYDAY:I = 0x80

.field private static final PARSED_BYHOUR:I = 0x40

.field private static final PARSED_BYMINUTE:I = 0x20

.field private static final PARSED_BYMONTH:I = 0x800

.field private static final PARSED_BYMONTHDAY:I = 0x100

.field private static final PARSED_BYSECOND:I = 0x10

.field private static final PARSED_BYSETPOS:I = 0x1000

.field private static final PARSED_BYWEEKNO:I = 0x400

.field private static final PARSED_BYYEARDAY:I = 0x200

.field private static final PARSED_COUNT:I = 0x4

.field private static final PARSED_FREQ:I = 0x1

.field private static final PARSED_INTERVAL:I = 0x8

.field private static final PARSED_UNTIL:I = 0x2

.field private static final PARSED_WKST:I = 0x2000

.field public static final SA:I = 0x400000

.field public static final SECONDLY:I = 0x1

.field public static final SU:I = 0x10000

.field private static TAG:Ljava/lang/String; = null

.field public static final TH:I = 0x100000

.field public static final TU:I = 0x40000

.field private static final VALIDATE_UNTIL:Z = false

.field public static final WE:I = 0x80000

.field public static final WEEKLY:I = 0x5

.field public static final YEARLY:I = 0x7

.field private static final sParseFreqMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sParsePartMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$PartParser;",
            ">;"
        }
    .end annotation
.end field

.field private static final sParseWeekdayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public byday:[I

.field public bydayCount:I

.field public bydayNum:[I

.field public byhour:[I

.field public byhourCount:I

.field public byminute:[I

.field public byminuteCount:I

.field public bymonth:[I

.field public bymonthCount:I

.field public bymonthday:[I

.field public bymonthdayCount:I

.field public bysecond:[I

.field public bysecondCount:I

.field public bysetpos:[I

.field public bysetposCount:I

.field public byweekno:[I

.field public byweeknoCount:I

.field public byyearday:[I

.field public byyeardayCount:I

.field public count:I

.field public freq:I

.field public interval:I

.field public startDate:Landroid/text/format/Time;

.field public until:Ljava/lang/String;

.field public wkst:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    const-string v0, "EventRecur"

    sput-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->TAG:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    .line 86
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "FREQ"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseFreq;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseFreq;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "UNTIL"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseUntil;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseUntil;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "COUNT"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseCount;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseCount;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "INTERVAL"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseInterval;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseInterval;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYSECOND"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseBySecond;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseBySecond;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMINUTE"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByMinute;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByMinute;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYHOUR"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByHour;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByHour;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYDAY"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByDay;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByDay;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMONTHDAY"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByMonthDay;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByMonthDay;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYYEARDAY"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByYearDay;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByYearDay;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYWEEKNO"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByWeekNo;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByWeekNo;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMONTH"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByMonth;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseByMonth;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYSETPOS"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseBySetPos;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseBySetPos;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "WKST"

    new-instance v2, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseWkst;

    invoke-direct {v2, v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$ParseWkst;-><init>(Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    .line 124
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "SECONDLY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "MINUTELY"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "HOURLY"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "DAILY"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "WEEKLY"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "MONTHLY"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "YEARLY"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    .line 139
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "SU"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "MO"

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "TU"

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "WE"

    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "TH"

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "FR"

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "SA"

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private appendByDay(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "s"    # Ljava/lang/StringBuilder;
    .param p2, "i"    # I

    .prologue
    .line 312
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    aget v0, v2, p2

    .line 313
    .local v0, "n":I
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    aget v2, v2, p2

    invoke-static {v2}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    return-void
.end method

.method private static appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .locals 2
    .param p0, "s"    # Ljava/lang/StringBuilder;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "values"    # [I

    .prologue
    .line 300
    if-lez p2, :cond_1

    .line 301
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    add-int/lit8 p2, p2, -0x1

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 304
    aget v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    aget v1, p3, p2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static arraysEqual([II[II)Z
    .locals 4
    .param p0, "array1"    # [I
    .param p1, "count1"    # I
    .param p2, "array2"    # [I
    .param p3, "count2"    # I

    .prologue
    const/4 v1, 0x0

    .line 448
    if-eq p1, p3, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v1

    .line 452
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 453
    aget v2, p0, v0

    aget v3, p2, v0

    if-ne v2, v3, :cond_0

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 458
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static calendarDay2Day(I)I
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 184
    packed-switch p0, :pswitch_data_0

    .line 200
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :pswitch_0
    const/high16 v0, 0x10000

    .line 198
    :goto_0
    return v0

    .line 188
    :pswitch_1
    const/high16 v0, 0x20000

    goto :goto_0

    .line 190
    :pswitch_2
    const/high16 v0, 0x40000

    goto :goto_0

    .line 192
    :pswitch_3
    const/high16 v0, 0x80000

    goto :goto_0

    .line 194
    :pswitch_4
    const/high16 v0, 0x100000

    goto :goto_0

    .line 196
    :pswitch_5
    const/high16 v0, 0x200000

    goto :goto_0

    .line 198
    :pswitch_6
    const/high16 v0, 0x400000

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static day2CalendarDay(I)I
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 251
    sparse-switch p0, :sswitch_data_0

    .line 267
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :sswitch_0
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    .line 255
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 257
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 259
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 261
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 263
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 265
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 251
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

.method private static day2String(I)Ljava/lang/String;
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 279
    sparse-switch p0, :sswitch_data_0

    .line 295
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

    .line 281
    :sswitch_0
    const-string v0, "SU"

    .line 293
    :goto_0
    return-object v0

    .line 283
    :sswitch_1
    const-string v0, "MO"

    goto :goto_0

    .line 285
    :sswitch_2
    const-string v0, "TU"

    goto :goto_0

    .line 287
    :sswitch_3
    const-string v0, "WE"

    goto :goto_0

    .line 289
    :sswitch_4
    const-string v0, "TH"

    goto :goto_0

    .line 291
    :sswitch_5
    const-string v0, "FR"

    goto :goto_0

    .line 293
    :sswitch_6
    const-string v0, "SA"

    goto :goto_0

    .line 279
    nop

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

.method public static day2TimeDay(I)I
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 226
    sparse-switch p0, :sswitch_data_0

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :sswitch_0
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    .line 230
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 232
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 234
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 236
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 238
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 240
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 226
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

.method private resetFields()V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    .line 505
    const/4 v0, 0x0

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysetposCount:I

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthCount:I

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byweeknoCount:I

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byyeardayCount:I

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthdayCount:I

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byhourCount:I

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byminuteCount:I

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysecondCount:I

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->interval:I

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    iput v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    .line 508
    return-void
.end method

.method public static timeDay2Day(I)I
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 205
    packed-switch p0, :pswitch_data_0

    .line 221
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :pswitch_0
    const/high16 v0, 0x10000

    .line 219
    :goto_0
    return v0

    .line 209
    :pswitch_1
    const/high16 v0, 0x20000

    goto :goto_0

    .line 211
    :pswitch_2
    const/high16 v0, 0x40000

    goto :goto_0

    .line 213
    :pswitch_3
    const/high16 v0, 0x80000

    goto :goto_0

    .line 215
    :pswitch_4
    const/high16 v0, 0x100000

    goto :goto_0

    .line 217
    :pswitch_5
    const/high16 v0, 0x200000

    goto :goto_0

    .line 219
    :pswitch_6
    const/high16 v0, 0x400000

    goto :goto_0

    .line 205
    nop

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
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 463
    if-ne p0, p1, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v1

    .line 466
    :cond_1
    instance-of v3, p1, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    if-nez v3, :cond_2

    move v1, v2

    .line 467
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 470
    check-cast v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;

    .line 471
    .local v0, "er":Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v3, :cond_3

    .line 472
    :goto_1
    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    iget v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 474
    :goto_2
    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    iget v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->interval:I

    iget v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->interval:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->wkst:I

    iget v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->wkst:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysecond:[I

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysecondCount:I

    iget-object v5, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysecond:[I

    iget v6, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysecondCount:I

    .line 478
    invoke-static {v3, v4, v5, v6}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byminute:[I

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byminuteCount:I

    iget-object v5, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byminute:[I

    iget v6, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byminuteCount:I

    .line 479
    invoke-static {v3, v4, v5, v6}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byhour:[I

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byhourCount:I

    iget-object v5, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byhour:[I

    iget v6, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byhourCount:I

    .line 480
    invoke-static {v3, v4, v5, v6}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    iget-object v5, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    iget v6, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    .line 481
    invoke-static {v3, v4, v5, v6}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    iget-object v5, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    iget v6, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    .line 482
    invoke-static {v3, v4, v5, v6}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthday:[I

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthdayCount:I

    iget-object v5, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthday:[I

    iget v6, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthdayCount:I

    .line 483
    invoke-static {v3, v4, v5, v6}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byyearday:[I

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byyeardayCount:I

    iget-object v5, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byyearday:[I

    iget v6, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byyeardayCount:I

    .line 484
    invoke-static {v3, v4, v5, v6}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byweekno:[I

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byweeknoCount:I

    iget-object v5, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byweekno:[I

    iget v6, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byweeknoCount:I

    .line 485
    invoke-static {v3, v4, v5, v6}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonth:[I

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthCount:I

    iget-object v5, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonth:[I

    iget v6, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthCount:I

    .line 486
    invoke-static {v3, v4, v5, v6}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysetpos:[I

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysetposCount:I

    iget-object v5, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysetpos:[I

    iget v6, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysetposCount:I

    .line 487
    invoke-static {v3, v4, v5, v6}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 471
    :cond_4
    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget-object v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->startDate:Landroid/text/format/Time;

    .line 472
    invoke-static {v3, v4}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    iget-object v4, v0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    .line 474
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 493
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 12
    .param p1, "recur"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 581
    invoke-direct {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->resetFields()V

    .line 583
    const/4 v3, 0x0

    .line 586
    .local v3, "parseFlags":I
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 590
    .local v6, "parts":[Ljava/lang/String;
    array-length v10, v6

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_6

    aget-object v5, v6, v8

    .line 592
    .local v5, "part":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 590
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 595
    :cond_1
    const/16 v11, 0x3d

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 596
    .local v0, "equalIndex":I
    if-gtz v0, :cond_2

    .line 598
    new-instance v8, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing LHS in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 601
    :cond_2
    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "lhs":Ljava/lang/String;
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 603
    .local v7, "rhs":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    .line 604
    new-instance v8, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing RHS in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 611
    :cond_3
    sget-object v11, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$PartParser;

    .line 612
    .local v4, "parser":Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$PartParser;
    if-nez v4, :cond_4

    .line 613
    const-string v11, "X-"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 617
    new-instance v8, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t find parser for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 619
    :cond_4
    invoke-virtual {v4, v7, p0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$PartParser;->parsePart(Ljava/lang/String;Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;)I

    move-result v1

    .line 620
    .local v1, "flag":I
    and-int v11, v3, v1

    if-eqz v11, :cond_5

    .line 621
    new-instance v8, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Part "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was specified twice"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 623
    :cond_5
    or-int/2addr v3, v1

    goto/16 :goto_1

    .line 628
    .end local v0    # "equalIndex":I
    .end local v1    # "flag":I
    .end local v2    # "lhs":Ljava/lang/String;
    .end local v4    # "parser":Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$PartParser;
    .end local v5    # "part":Ljava/lang/String;
    .end local v7    # "rhs":Ljava/lang/String;
    :cond_6
    and-int/lit16 v8, v3, 0x2000

    if-nez v8, :cond_7

    .line 629
    const/high16 v8, 0x20000

    iput v8, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->wkst:I

    .line 633
    :cond_7
    and-int/lit8 v8, v3, 0x1

    if-nez v8, :cond_8

    .line 634
    new-instance v8, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$InvalidFormatException;

    const-string v9, "Must specify a FREQ value"

    invoke-direct {v8, v9}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 638
    :cond_8
    and-int/lit8 v8, v3, 0x6

    const/4 v9, 0x6

    if-ne v8, v9, :cond_9

    .line 642
    sget-object v8, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Warning: rrule has both UNTIL and COUNT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_9
    return-void
.end method

.method public repeatsMonthlyOnDayCount()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 425
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthdayCount:I

    if-nez v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayNum:[I

    aget v2, v2, v0

    if-lez v2, :cond_0

    move v0, v1

    .line 437
    goto :goto_0
.end method

.method public repeatsOnEveryWeekDay()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x0

    .line 396
    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    if-eq v4, v5, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v3

    .line 400
    :cond_1
    iget v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    .line 401
    .local v0, "count":I
    if-ne v0, v5, :cond_0

    .line 405
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 406
    iget-object v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byday:[I

    aget v1, v4, v2

    .line 407
    .local v1, "day":I
    const/high16 v4, 0x10000

    if-eq v1, v4, :cond_0

    const/high16 v4, 0x400000

    if-eq v1, v4, :cond_0

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 412
    .end local v1    # "day":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setStartDate(Landroid/text/format/Time;)V
    .locals 0
    .param p1, "date"    # Landroid/text/format/Time;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->startDate:Landroid/text/format/Time;

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v2, "s":Ljava/lang/StringBuilder;
    const-string v3, "FREQ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->freq:I

    packed-switch v3, :pswitch_data_0

    .line 350
    :goto_0
    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    const-string v3, ";UNTIL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget-object v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_0
    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    if-eqz v3, :cond_1

    .line 356
    const-string v3, ";COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    :cond_1
    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->interval:I

    if-eqz v3, :cond_2

    .line 361
    const-string v3, ";INTERVAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    :cond_2
    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->wkst:I

    if-eqz v3, :cond_3

    .line 366
    const-string v3, ";WKST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget v3, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->wkst:I

    invoke-static {v3}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_3
    const-string v3, ";BYSECOND="

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysecondCount:I

    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysecond:[I

    invoke-static {v2, v3, v4, v5}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 371
    const-string v3, ";BYMINUTE="

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byminuteCount:I

    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byminute:[I

    invoke-static {v2, v3, v4, v5}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 372
    const-string v3, ";BYHOUR="

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byhourCount:I

    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byhour:[I

    invoke-static {v2, v3, v4, v5}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 375
    iget v0, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bydayCount:I

    .line 376
    .local v0, "count":I
    if-lez v0, :cond_5

    .line 377
    const-string v3, ";BYDAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    add-int/lit8 v0, v0, -0x1

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 380
    invoke-direct {p0, v2, v1}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 381
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 328
    .end local v0    # "count":I
    .end local v1    # "i":I
    :pswitch_0
    const-string v3, "SECONDLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 331
    :pswitch_1
    const-string v3, "MINUTELY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 334
    :pswitch_2
    const-string v3, "HOURLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 337
    :pswitch_3
    const-string v3, "DAILY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 340
    :pswitch_4
    const-string v3, "WEEKLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 343
    :pswitch_5
    const-string v3, "MONTHLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 346
    :pswitch_6
    const-string v3, "YEARLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 383
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_4
    invoke-direct {p0, v2, v0}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 386
    .end local v1    # "i":I
    :cond_5
    const-string v3, ";BYMONTHDAY="

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthdayCount:I

    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthday:[I

    invoke-static {v2, v3, v4, v5}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 387
    const-string v3, ";BYYEARDAY="

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byyeardayCount:I

    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byyearday:[I

    invoke-static {v2, v3, v4, v5}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 388
    const-string v3, ";BYWEEKNO="

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byweeknoCount:I

    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->byweekno:[I

    invoke-static {v2, v3, v4, v5}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 389
    const-string v3, ";BYMONTH="

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonthCount:I

    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bymonth:[I

    invoke-static {v2, v3, v4, v5}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 390
    const-string v3, ";BYSETPOS="

    iget v4, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysetposCount:I

    iget-object v5, p0, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->bysetpos:[I

    invoke-static {v2, v3, v4, v5}, Lcom/codetroopers/betterpickers/recurrencepicker/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 392
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
