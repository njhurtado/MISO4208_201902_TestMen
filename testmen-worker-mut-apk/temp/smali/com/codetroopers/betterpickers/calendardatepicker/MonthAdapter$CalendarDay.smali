.class public Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
.super Ljava/lang/Object;
.source "MonthAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarDay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private calendarTimeInMillis:J

.field day:I

.field month:I

.field private time:Landroid/text/format/Time;

.field private timeInMillis:J

.field year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay$1;

    invoke-direct {v0}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay$1;-><init>()V

    sput-object v0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->setTime(J)V

    .line 73
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->setDay(III)V

    .line 87
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "timeInMillis"    # J

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->setTime(J)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendarTimeInMillis:J

    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    .line 92
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    iget-wide v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendarTimeInMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->timeInMillis:J

    .line 94
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->time:Landroid/text/format/Time;

    .line 95
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->time:Landroid/text/format/Time;

    iget-wide v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->timeInMillis:J

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    .line 81
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    .line 82
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    .line 83
    return-void
.end method

.method private setTime(J)V
    .locals 3
    .param p1, "timeInMillis"    # J

    .prologue
    .line 134
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 138
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    .line 139
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    .line 140
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    .line 141
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)I
    .locals 2
    .param p1, "another"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    iget v1, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    iget v1, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    iget v1, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    if-lt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    iget v1, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    iget v1, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    iget v1, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    if-ge v0, v1, :cond_2

    .line 147
    :cond_1
    const/4 v0, -0x1

    .line 152
    :goto_0
    return v0

    .line 149
    :cond_2
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    iget v1, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    iget v1, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    iget v1, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    if-ne v0, v1, :cond_3

    .line 150
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    check-cast p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    invoke-virtual {p0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->compareTo(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public getDateInMillis()J
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 117
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    .line 119
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    iget v1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    iget v2, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    iget v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 120
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;)V
    .locals 1
    .param p1, "date"    # Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    .prologue
    .line 102
    iget v0, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    .line 103
    iget v0, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    .line 104
    iget v0, p1, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    .line 105
    return-void
.end method

.method public setDay(III)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    .line 109
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 110
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 111
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    .line 112
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    .line 113
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    .line 114
    return-void
.end method

.method public declared-synchronized setJulianDay(I)V
    .locals 2
    .param p1, "julianDay"    # I

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->time:Landroid/text/format/Time;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->time:Landroid/text/format/Time;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->time:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 130
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->time:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->setTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendarTimeInMillis:J

    .line 165
    :cond_0
    iget-wide v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->calendarTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->time:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->time:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->timeInMillis:J

    .line 170
    :cond_1
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->day:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    return-void
.end method
