.class public final enum Lorg/gnucash/android/model/PeriodType;
.super Ljava/lang/Enum;
.source "PeriodType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/gnucash/android/model/PeriodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/gnucash/android/model/PeriodType;

.field public static final enum DAY:Lorg/gnucash/android/model/PeriodType;

.field public static final enum HOUR:Lorg/gnucash/android/model/PeriodType;

.field public static final enum MONTH:Lorg/gnucash/android/model/PeriodType;

.field public static final enum WEEK:Lorg/gnucash/android/model/PeriodType;

.field public static final enum YEAR:Lorg/gnucash/android/model/PeriodType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lorg/gnucash/android/model/PeriodType;

    const-string v1, "HOUR"

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/PeriodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/PeriodType;->HOUR:Lorg/gnucash/android/model/PeriodType;

    new-instance v0, Lorg/gnucash/android/model/PeriodType;

    const-string v1, "DAY"

    invoke-direct {v0, v1, v3}, Lorg/gnucash/android/model/PeriodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/PeriodType;->DAY:Lorg/gnucash/android/model/PeriodType;

    new-instance v0, Lorg/gnucash/android/model/PeriodType;

    const-string v1, "WEEK"

    invoke-direct {v0, v1, v4}, Lorg/gnucash/android/model/PeriodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/PeriodType;->WEEK:Lorg/gnucash/android/model/PeriodType;

    new-instance v0, Lorg/gnucash/android/model/PeriodType;

    const-string v1, "MONTH"

    invoke-direct {v0, v1, v5}, Lorg/gnucash/android/model/PeriodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/PeriodType;->MONTH:Lorg/gnucash/android/model/PeriodType;

    new-instance v0, Lorg/gnucash/android/model/PeriodType;

    const-string v1, "YEAR"

    invoke-direct {v0, v1, v6}, Lorg/gnucash/android/model/PeriodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/PeriodType;->YEAR:Lorg/gnucash/android/model/PeriodType;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/gnucash/android/model/PeriodType;

    sget-object v1, Lorg/gnucash/android/model/PeriodType;->HOUR:Lorg/gnucash/android/model/PeriodType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/gnucash/android/model/PeriodType;->DAY:Lorg/gnucash/android/model/PeriodType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/gnucash/android/model/PeriodType;->WEEK:Lorg/gnucash/android/model/PeriodType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/gnucash/android/model/PeriodType;->MONTH:Lorg/gnucash/android/model/PeriodType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/gnucash/android/model/PeriodType;->YEAR:Lorg/gnucash/android/model/PeriodType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/gnucash/android/model/PeriodType;->$VALUES:[Lorg/gnucash/android/model/PeriodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/PeriodType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lorg/gnucash/android/model/PeriodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/PeriodType;

    return-object v0
.end method

.method public static values()[Lorg/gnucash/android/model/PeriodType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/gnucash/android/model/PeriodType;->$VALUES:[Lorg/gnucash/android/model/PeriodType;

    invoke-virtual {v0}, [Lorg/gnucash/android/model/PeriodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/gnucash/android/model/PeriodType;

    return-object v0
.end method


# virtual methods
.method public getByParts(J)Ljava/lang/String;
    .locals 5
    .param p1, "startTime"    # J

    .prologue
    .line 61
    const-string v1, ""

    .line 62
    .local v1, "partString":Ljava/lang/String;
    sget-object v2, Lorg/gnucash/android/model/PeriodType;->WEEK:Lorg/gnucash/android/model/PeriodType;

    if-ne p0, v2, :cond_0

    .line 63
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "E"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "dayOfWeek":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BYDAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getFrequencyDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lorg/gnucash/android/model/PeriodType$1;->$SwitchMap$org$gnucash$android$model$PeriodType:[I

    invoke-virtual {p0}, Lorg/gnucash/android/model/PeriodType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50
    const-string v0, ""

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    const-string v0, "HOURLY"

    goto :goto_0

    .line 42
    :pswitch_1
    const-string v0, "DAILY"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "WEEKLY"

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "MONTHLY"

    goto :goto_0

    .line 48
    :pswitch_4
    const-string v0, "YEARLY"

    goto :goto_0

    .line 38
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
