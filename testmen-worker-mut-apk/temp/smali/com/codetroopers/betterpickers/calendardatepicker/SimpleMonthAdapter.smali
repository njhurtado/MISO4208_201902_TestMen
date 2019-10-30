.class public Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthAdapter;
.super Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;
.source "SimpleMonthAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter;-><init>(Landroid/content/Context;Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;)V

    .line 28
    return-void
.end method


# virtual methods
.method public createMonthView(Landroid/content/Context;)Lcom/codetroopers/betterpickers/calendardatepicker/MonthView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;

    invoke-direct {v0, p1}, Lcom/codetroopers/betterpickers/calendardatepicker/SimpleMonthView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
