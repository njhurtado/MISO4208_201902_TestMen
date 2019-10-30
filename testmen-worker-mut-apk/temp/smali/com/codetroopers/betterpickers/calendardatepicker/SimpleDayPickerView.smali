.class public Lcom/codetroopers/betterpickers/calendardatepicker/SimpleDayPickerView;
.super Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;
.source "SimpleDayPickerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/codetroopers/betterpickers/calendardatepicker/DayPickerView;-><init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)V

    .line 33
    return-void
.end method


# virtual methods
.method public createMonthAdapter(Landroid/content/Context;Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    .prologue
    .line 37
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthAdapter;

    invoke-direct {v0, p1, p2}, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthAdapter;-><init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)V

    return-object v0
.end method
