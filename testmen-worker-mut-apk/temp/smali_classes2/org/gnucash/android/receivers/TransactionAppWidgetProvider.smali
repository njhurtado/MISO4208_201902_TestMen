.class public Lorg/gnucash/android/receivers/TransactionAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "TransactionAppWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 56
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p2, v1

    .line 57
    .local v0, "appWidgetId":I
    invoke-static {p1, v0}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->removeWidgetConfiguration(Landroid/content/Context;I)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "appWidgetId":I
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 50
    invoke-static {p1}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->updateAllWidgets(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 42
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p3, v1

    .line 43
    .local v0, "appWidgetId":I
    invoke-static {p1, v0}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->updateWidget(Landroid/content/Context;I)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "appWidgetId":I
    :cond_0
    return-void
.end method
