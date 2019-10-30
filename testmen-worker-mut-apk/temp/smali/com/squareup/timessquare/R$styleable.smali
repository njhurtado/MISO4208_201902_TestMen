.class public final Lcom/squareup/timessquare/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/timessquare/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CalendarPickerView:[I

.field public static final CalendarPickerView_android_background:I = 0x0

.field public static final CalendarPickerView_tsquare_dayBackground:I = 0x1

.field public static final CalendarPickerView_tsquare_dayTextColor:I = 0x2

.field public static final CalendarPickerView_tsquare_displayHeader:I = 0x3

.field public static final CalendarPickerView_tsquare_dividerColor:I = 0x4

.field public static final CalendarPickerView_tsquare_headerTextColor:I = 0x5

.field public static final CalendarPickerView_tsquare_titleTextColor:I = 0x6

.field public static final calendar_cell:[I

.field public static final calendar_cell_tsquare_state_current_month:I = 0x0

.field public static final calendar_cell_tsquare_state_highlighted:I = 0x1

.field public static final calendar_cell_tsquare_state_range_first:I = 0x2

.field public static final calendar_cell_tsquare_state_range_last:I = 0x3

.field public static final calendar_cell_tsquare_state_range_middle:I = 0x4

.field public static final calendar_cell_tsquare_state_selectable:I = 0x5

.field public static final calendar_cell_tsquare_state_today:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/squareup/timessquare/R$styleable;->CalendarPickerView:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/squareup/timessquare/R$styleable;->calendar_cell:[I

    return-void

    .line 71
    :array_0
    .array-data 4
        0x10100d4
        0x7f0401c4
        0x7f0401c5
        0x7f0401c6
        0x7f0401c7
        0x7f0401c8
        0x7f0401d0
    .end array-data

    .line 79
    :array_1
    .array-data 4
        0x7f0401c9
        0x7f0401ca
        0x7f0401cb
        0x7f0401cc
        0x7f0401cd
        0x7f0401ce
        0x7f0401cf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
