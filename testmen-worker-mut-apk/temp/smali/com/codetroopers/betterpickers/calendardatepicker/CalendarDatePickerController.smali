.class interface abstract Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;
.super Ljava/lang/Object;
.source "CalendarDatePickerController.java"


# virtual methods
.method public abstract getDisabledDays()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFirstDayOfWeek()I
.end method

.method public abstract getMaxDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
.end method

.method public abstract getMinDate()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
.end method

.method public abstract getSelectedDay()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;
.end method

.method public abstract onDayOfMonthSelected(III)V
.end method

.method public abstract onYearSelected(I)V
.end method

.method public abstract registerOnDateChangedListener(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;)V
.end method

.method public abstract tryVibrate()V
.end method

.method public abstract unregisterOnDateChangedListener(Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerDialogFragment$OnDateChangedListener;)V
.end method
