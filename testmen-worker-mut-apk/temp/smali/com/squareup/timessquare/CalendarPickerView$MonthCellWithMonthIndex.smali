.class Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;
.super Ljava/lang/Object;
.source "CalendarPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/timessquare/CalendarPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthCellWithMonthIndex"
.end annotation


# instance fields
.field public cell:Lcom/squareup/timessquare/MonthCellDescriptor;

.field public monthIndex:I


# direct methods
.method public constructor <init>(Lcom/squareup/timessquare/MonthCellDescriptor;I)V
    .locals 0
    .param p1, "cell"    # Lcom/squareup/timessquare/MonthCellDescriptor;
    .param p2, "monthIndex"    # I

    .prologue
    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-object p1, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;->cell:Lcom/squareup/timessquare/MonthCellDescriptor;

    .line 704
    iput p2, p0, Lcom/squareup/timessquare/CalendarPickerView$MonthCellWithMonthIndex;->monthIndex:I

    .line 705
    return-void
.end method
