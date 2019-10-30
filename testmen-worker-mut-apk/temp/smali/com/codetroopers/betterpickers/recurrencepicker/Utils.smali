.class public Lcom/codetroopers/betterpickers/recurrencepicker/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CalUtils"

.field public static final YEAR_MAX:I = 0x7f4

.field public static final YEAR_MIN:I = 0x7b2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDayOfWeekFromTimeToCalendar(I)I
    .locals 2
    .param p0, "timeDayOfWeek"    # I

    .prologue
    .line 61
    packed-switch p0, :pswitch_data_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must be between Time.SUNDAY and Time.SATURDAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_0
    const/4 v0, 0x2

    .line 75
    :goto_0
    return v0

    .line 65
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 67
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 69
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 71
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 73
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 75
    :pswitch_6
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getFirstDayOfWeek(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    .line 39
    .local v0, "startDay":I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 40
    const/4 v1, 0x6

    .line 44
    :goto_0
    return v1

    .line 41
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 42
    const/4 v1, 0x1

    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/codetroopers/betterpickers/recurrencepicker/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/codetroopers/betterpickers/recurrencepicker/Utils;->convertDayOfWeekFromTimeToCalendar(I)I

    move-result v0

    return v0
.end method
